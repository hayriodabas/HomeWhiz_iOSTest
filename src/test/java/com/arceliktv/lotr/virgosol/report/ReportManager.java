package com.arceliktv.lotr.virgosol.report;

import Tests.BaseTest;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.MediaEntityBuilder;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.model.Media;
import com.aventstack.extentreports.observer.ExtentObserver;
import com.aventstack.extentreports.observer.entity.ObservedEntity;
import com.aventstack.extentreports.reporter.ExtentKlovReporter;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;
import com.mongodb.MongoClientURI;
import com.arceliktv.lotr.virgosol.common.drive.DriveHelper;
import com.arceliktv.lotr.virgosol.common.file.FileHelper;
import com.arceliktv.lotr.virgosol.common.file.PropertyHelper;
import com.arceliktv.lotr.virgosol.common.file.ZipHelper;
import com.arceliktv.lotr.virgosol.common.log.LogHelper;
import com.arceliktv.lotr.virgosol.common.mail.MailSendType;
import com.arceliktv.lotr.virgosol.common.mail.MailSender;
import com.arceliktv.lotr.virgosol.common.mail.MailSenderCreator;
import com.arceliktv.lotr.virgosol.report.DatePattern;
import com.arceliktv.lotr.virgosol.report.annotation.TestAuthor;
import com.arceliktv.lotr.virgosol.report.annotation.TestCategory;
import io.cucumber.messages.internal.com.fasterxml.jackson.databind.ser.Serializers;
import org.apache.commons.lang3.StringUtils;
import org.junit.runner.Description;
import org.slf4j.Logger;

import javax.mail.MessagingException;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

import static Tests.BaseTest.*;

public class ReportManager {

    private static Logger logger = LogHelper.getSlnLogger();
    private static ReportManager instance;
    private String reportDirectory = "reports";
    private String reportFileName = "Virgosol_QA_Report.html";
    private ExtentReports extentReport;
    private ThreadLocal<ExtentTest> extentTest = new ThreadLocal<ExtentTest>();
    private ReportConfiguration reportConfiguration;

    private ReportManager() {
        try {
            this.reportConfiguration = PropertyHelper
                    .propertiesToClassWithAnnotation("report.properties", ReportConfiguration.class);
            if (reportConfiguration.isDisableReport()) {
                logger.info("Report create and save disabled configuration!");
                return;
            }
            setReportDirectory(ReportPattern.parse(reportConfiguration.getReportDirectory()));
            setReportFileName(ReportPattern.parse(reportConfiguration.getReportFileName()));
        } catch (IllegalAccessException | InstantiationException | IOException e) {
            logger.warn("Report Properties Error", e);
        }
    }

    public static ReportManager getInstance() {
        synchronized (ReportManager.class) {
            if (instance == null) {
                logger.info("Create new report manager");
                instance = new ReportManager();
            }
        }
        return instance;
    }

    public ReportConfiguration getReportConfiguration() {
        return reportConfiguration;
    }

    public void setReportDirectory(String reportDirectory) {
        this.reportDirectory = reportDirectory;
    }

    public String getReportDirectory() {
        return reportDirectory;
    }

    public void setReportFileName(String reportFileName) {
        if (!reportFileName.endsWith(".html")) {
            reportFileName = String.format("%s.html", reportFileName);
        }
        this.reportFileName = reportFileName;
    }

    public String getReportFileName() {
        return reportFileName;
    }

    public String getReportFilePath() {
        return String.format("%s/%s", reportDirectory, reportFileName);
    }

    public ExtentReports createExtentReport() throws IOException {
        extentReport = new ExtentReports();
        extentReport.attachReporter(createExtentHtmlReport());
        if(reportConfiguration.isUseKlov()){
            extentReport.attachReporter(createExtentKlovReport());
        }

        extentReport.setSystemInfo("App Version", appName);
        extentReport.setSystemInfo("Test Device", testDevice);
        extentReport.setSystemInfo("Device OS","IOS");
        extentReport.setSystemInfo("App Version", testAppVersion);

        return extentReport;
    }

    private void createDirectory(boolean delete) throws IOException {
        if (delete) {
            FileHelper.deleteDirectory(reportDirectory);
        }
        if (!FileHelper.isFileExist(reportDirectory)) {
            FileHelper.createDirectory(reportDirectory);
        }
    }

    private ExtentObserver<? extends ObservedEntity> createExtentKlovReport() throws IOException {
        ExtentKlovReporter reporter = new ExtentKlovReporter(reportConfiguration.getKlovProject());
        reporter.initKlovServerConnection(reportConfiguration.getKlovHost());
        reporter.initMongoDbConnection(new MongoClientURI(reportConfiguration.getKlovMongoUri()));
        return reporter;
    }

    private ExtentObserver<? extends ObservedEntity> createExtentHtmlReport() throws IOException {
        createDirectory(reportConfiguration.isBeforeDeleteEachTestResult());
        ExtentSparkReporter htmlReporter = new ExtentSparkReporter(getReportFilePath());
        htmlReporter.config().setTheme(Theme.STANDARD);
        htmlReporter.config()
                .setTheme(reportConfiguration.isUseDarkTheme() ? Theme.DARK : Theme.STANDARD);
        htmlReporter.config().setDocumentTitle(getReportFileName());
        htmlReporter.config().setEncoding("utf-8");
        htmlReporter.config().setReportName(getReportFileName());
        return htmlReporter;
    }

    public void saveReport() throws MessagingException, IOException {
        extentReport.flush();
        if (reportConfiguration.isDisableReport()) {
            logger.info("Report create and save disabled configuration!");
            return;
        }

        File file = createZip();
        String driveLink = "";
        if (reportConfiguration.isUploadDrive()) {
            driveLink = uploadDrive(file);
        }
        if (reportConfiguration.isSendEmail()) {
            sendEmail(file, driveLink);
        }

        if (reportConfiguration.isDeleteZipEachTestResult()) {
            FileHelper.deleteFile(file);
        }
        if (reportConfiguration.isAfterDeleteEachTestResult()) {
            FileHelper.deleteDirectory(getReportDirectory());
        }
        instance = null;
    }

    public ExtentTest getExtentTest() {
        return extentTest.get();
    }

    public ExtentTest createNewExtentTest(String testName) {
        extentTest.set(extentReport.createTest(testName));
        return extentTest.get();
    }

    public ExtentTest createNewExtentTest(String testName, String description) {
        extentTest.set(extentReport.createTest(testName, description));
        return extentTest.get();
    }

    public void setSystemInfo(String t, String v)
    {
        extentReport.setSystemInfo(t,v);
    }

    public void removeTest() {
        extentReport.removeTest(extentTest.get());
    }

    public void removeTest(ExtentTest extentTest) {
        extentReport.removeTest(extentTest);
    }

    public void setAuthor(String author) {
        extentTest.get().assignAuthor(author);
    }

    public void setAuthor(ExtentTest extentTest, String author) {
        extentTest.assignAuthor(author);
    }

    public void setCategory(String... category) {
        extentTest.get().assignCategory(category);
    }

    public void setCategory(ExtentTest extentTest, String... author) {
        extentTest.assignCategory(author);
    }

    public void info(String message) {
        extentTest.get().info(message);
    }

    public void info(ExtentTest extentTest, String message) {
        extentTest.info(message);
    }

    public void fail(String message, File file) {
        fail(extentTest.get(), message, file, null);
    }

    public void fail(String message, File file, String title) {
        extentTest.get().fail(message, createMediaEntity(file, title));
    }

    public void fail(ExtentTest extentTest, String message, File file) {
        fail(extentTest, message, file, null);
    }

    public void fail(ExtentTest extentTest, String message, File file, String title) {
        extentTest.fail(message, createMediaEntity(file, title));
    }

    public void addScreenShot(File file) throws IOException {
        addScreenShot(file, "");
    }

    public void addScreenShot(File file, String title) throws IOException {
        addScreenShot(extentTest.get(), file, title);
    }

    public void addScreenShot(ExtentTest extentTest, File file) throws IOException {
        addScreenShot(extentTest, file, "");
    }

    public void addScreenShot(ExtentTest extentTest, File file, String title) throws IOException {
        String filePath = String.format("%s/%s", reportDirectory, file.getName());
        FileHelper.copyFile(file, new File(filePath));
        addScreenShot(extentTest, file.getName(), title);
    }

    public void addScreenShot(String imagePath) {
        addScreenShot(extentTest.get(), imagePath);
    }

    public void addScreenShot(ExtentTest extentTest, String imagePath) {
        extentTest.addScreenCaptureFromPath(imagePath);
    }

    public void addScreenShot(String imagePath, String title) {
        addScreenShot(extentTest.get(), imagePath, title);
    }

    public void addScreenShot(ExtentTest extentTest, String imagePath, String title) {
        extentTest.addScreenCaptureFromPath(imagePath, title);
    }

    public Media createMediaEntity(File file, String title) {
        return createMediaEntity(file.getAbsolutePath(), title);
    }

    public Media createMediaEntity(File file) {
        String filePath = String.format("%s/%s", reportDirectory, file.getName());
        File copyFile = new File(filePath);
        try {
            FileHelper.copyFile(file, copyFile);
        } catch (IOException e) {
            logger.error("File Copy", e);
        }
        return createMediaEntity(copyFile, null);
    }

    public Media createMediaEntity(String filePath) {
        return createMediaEntity(filePath, null);
    }

    public Media createMediaEntity(String filePath, String title) {
        Media mediaEntityModelProvider;
        mediaEntityModelProvider = MediaEntityBuilder.createScreenCaptureFromPath(filePath, title)
                .build();
        return mediaEntityModelProvider;
    }

    public String getZipFilePath() {
        return String.format("%s.zip", reportDirectory);
    }

    public File createZip() {
        ZipHelper.zipDirectory(getReportDirectory(), getZipFilePath());
        return FileHelper.toFile(getZipFilePath());
    }

    public boolean sendEmail(File zipFile, String link) throws MessagingException {
        long total = extentReport.getStats().getParent().entrySet().stream().map(statusLongEntry -> statusLongEntry.getValue())
                .reduce((aLong, aLong2) -> aLong + aLong2).orElse(0L);

        long pass = extentReport.getStats().getParent().getOrDefault(Status.PASS, 0L);
        long fail = extentReport.getStats().getParent().getOrDefault(Status.FAIL, 0L);
        long skip = extentReport.getStats().getParent().getOrDefault(Status.SKIP, 0L);


        MailSender mailSender = MailSenderCreator
                .createMailSender(MailSendType.valueOf(reportConfiguration.getMailType()),
                        reportConfiguration.getHost(), reportConfiguration.getPort(),
                        reportConfiguration.getUsername(),
                        reportConfiguration.getPassword(), reportConfiguration.isAuth())
                .createMail(reportConfiguration.getFrom(), reportConfiguration.getTo(),
                        DatePattern.parse(reportConfiguration.getSubject()),
                        reportConfiguration.getCc(), reportConfiguration.getBcc())
                .setMessage(
                        MessagePattern.formatMessage(reportConfiguration.getMessage(), link, total, pass, fail,
                                skip));
        if (reportConfiguration.isAddAttachment()) {
            mailSender.addAttachment(zipFile.getPath());
        }
        return mailSender.send();
    }

    public String uploadDrive(File file) throws IOException {
        DriveHelper driveHelper = new DriveHelper();
        driveHelper.createDriver();
        com.google.api.services.drive.model.File uploadFile = driveHelper.uploadFile(file);
        if (!StringUtils.isEmpty(reportConfiguration.getDriverShareTo())) {
            logger.debug("Share File To {}", reportConfiguration.getDriverShareTo());
            driveHelper.shareFileToUser(uploadFile,
                    Arrays.asList(reportConfiguration.getDriverShareTo().split(",")));
        } else {
            logger.debug("Share File To Everyone");
            driveHelper.shareFilePublic(uploadFile);
        }
        logger.info("Web View link {}", uploadFile.getWebViewLink());
        logger.info("Web Content link {}", uploadFile.getWebContentLink());
        return uploadFile.getWebContentLink();
    }

    public void setAuthor(Description description) {
        setAuthor(extentTest.get(), description);
    }

    public void setAuthor(ExtentTest extentTest, Description description) {
        if (!setAuthorByMethod(extentTest, description)) {
            setAuthorByClass(extentTest, description);
        }
    }

    public boolean setAuthorByMethod(Description description) {
        return setAuthorByMethod(extentTest.get(), description);
    }

    public boolean setAuthorByMethod(ExtentTest extentTest, Description description) {
        boolean success = false;
        try {
            TestAuthor testAuthor = Arrays.stream(description.getTestClass().getMethods())
                    .filter(method -> description.getMethodName().startsWith(method.getName()))
                    .filter(method -> method.isAnnotationPresent(TestAuthor.class))
                    .map(method -> method.getAnnotation(TestAuthor.class))
                    .findFirst()
                    .get();
            setAuthor(extentTest, testAuthor);
            logger.info("Author Set By Method");
            success = true;
        } catch (Exception e) {
            logger.warn("Author Annotation Method Not Found");
        }
        return success;
    }

    public void setAuthorByClass(Description description) {
        setAuthorByClass(extentTest.get(), description);
    }

    public void setAuthorByClass(ExtentTest extentTest, Description description) {
        TestAuthor testAuthor;
        if (description.getTestClass().isAnnotationPresent(TestAuthor.class)) {
            testAuthor = description.getTestClass()
                    .getAnnotation(TestAuthor.class);
            setAuthor(extentTest, testAuthor);
            logger.info("Author Set By Class");
        }
    }

    private void setAuthor(ExtentTest extentTest, TestAuthor testAuthor) {
        extentTest.assignAuthor(testAuthor.authors());
    }

    public void setCategory(Description description) {
        setCategory(extentTest.get(), description);
    }

    public void setCategory(ExtentTest extentTest, Description description) {
        if (!setCategoryByMethod(extentTest, description)) {
            setCategoryByClass(extentTest, description);
        }
    }

    public boolean setCategoryByMethod(Description description) {
        return setCategoryByMethod(extentTest.get(), description);
    }

    public boolean setCategoryByMethod(ExtentTest extentTest, Description description) {
        boolean success = false;
        try {
            TestCategory testCategory = Arrays.stream(description.getTestClass().getMethods())
                    .filter(method -> description.getMethodName().startsWith(method.getName()))
                    .filter(method1 -> method1.isAnnotationPresent(TestCategory.class))
                    .map(method1 -> method1.getAnnotation(TestCategory.class))
                    .findFirst()
                    .get();
            setCategory(extentTest, testCategory);
            logger.info("Category Set By Method");
            success = true;
        } catch (Exception e) {
            logger.warn("Category Annotation Method Not Found");
        }
        return success;
    }

    public void setCategoryByClass(Description description) {
        setCategoryByClass(extentTest.get(), description);
    }

    public void setCategoryByClass(ExtentTest extentTest, Description description) {
        TestCategory testCategory;
        if (description.getTestClass().isAnnotationPresent(TestCategory.class)) {
            testCategory = description.getTestClass().getAnnotation(TestCategory.class);
            setCategory(extentTest, testCategory);
            logger.info("Category Set By Class");
        }
    }

    private void setCategory(ExtentTest extentTest, TestCategory testCategory) {
        extentTest.assignCategory(testCategory.categories());
    }
}
