package com.arceliktv.lotr.virgosol.report;

import com.arceliktv.lotr.virgosol.common.file.Prop;

public class ReportConfiguration {

    @Prop(key = "disableReport", type = Prop.PropType.BOOL)
    private boolean disableReport;
    @Prop(key = "reportDirectory")
    private String reportDirectory;
    @Prop(key = "reportFileName")
    private
    String reportFileName;
    @Prop(key = "screenShotPrefix")
    private
    String screenShotPrefix;
    @Prop(key = "sendEmail", type = Prop.PropType.BOOL)
    private
    boolean sendEmail;
    @Prop(key = "beforeDeleteEachTestResult", type = Prop.PropType.BOOL)
    private
    boolean beforeDeleteEachTestResult;
    @Prop(key = "afterDeleteEachTestResult", type = Prop.PropType.BOOL)
    private
    boolean afterDeleteEachTestResult;
    @Prop(key = "deleteZipEachTestResult", type = Prop.PropType.BOOL)
    private
    boolean deleteZipEachTestResult;
    @Prop(key = "takeScreenShotFail", type = Prop.PropType.BOOL)
    private boolean takeScreenShotFail;
    @Prop(key = "takeScreenShotPass", type = Prop.PropType.BOOL)
    private boolean takeScreenShotPass;
    @Prop(key = "appendExistingReport", type = Prop.PropType.BOOL)
    private boolean appendExistingReport;
    @Prop(key = "useDarkTheme", type = Prop.PropType.BOOL)
    private boolean useDarkTheme;
    @Prop(key = "host")
    private
    String host;
    @Prop(key = "port", type = Prop.PropType.INT)
    private
    int port;
    @Prop(key = "username")
    private
    String username;
    @Prop(key = "password")
    private
    String password;
    @Prop(key = "auth", type = Prop.PropType.BOOL)
    private
    boolean auth;
    @Prop(key = "mailType")
    private
    String mailType;
    @Prop(key = "from")
    private
    String from;
    @Prop(key = "to")
    private
    String to;
    @Prop(key = "subject")
    private
    String subject;
    @Prop(key = "message")
    private
    String message;
    @Prop(key = "cc")
    private
    String cc;
    @Prop(key = "bcc")
    private
    String bcc;
    @Prop(key = "addAttachment", type = Prop.PropType.BOOL)
    private
    boolean addAttachment;
    @Prop(key = "uploadDrive", type = Prop.PropType.BOOL)
    private boolean uploadDrive;
    @Prop(key = "driveShareTo")
    private
    String driverShareTo;
    @Prop(key = "useKlov", type = Prop.PropType.BOOL)
    private boolean useKlov;
    @Prop(key = "klovProject")
    private String klovProject;
    @Prop(key = "klovHost")
    private String klovHost;
    @Prop(key = "klovMongoUri")
    private String klovMongoUri;

    public boolean isDisableReport() {
        return disableReport;
    }

    public void setDisableReport(boolean disableReport) {
        this.disableReport = disableReport;
    }

    public void setUploadDrive(boolean uploadDrive) {
        this.uploadDrive = uploadDrive;
    }

    public String getReportDirectory() {
        return reportDirectory;
    }

    public void setReportDirectory(String reportDirectory) {
        this.reportDirectory = reportDirectory;
    }

    public String getReportFileName() {
        return reportFileName;
    }

    public void setReportFileName(String reportFileName) {
        this.reportFileName = reportFileName;
    }

    public String getScreenShotPrefix() {
        return screenShotPrefix;
    }

    public void setScreenShotPrefix(String screenShotPrefix) {
        this.screenShotPrefix = screenShotPrefix;
    }

    public boolean isSendEmail() {
        return sendEmail;
    }

    public void setSendEmail(boolean sendEmail) {
        this.sendEmail = sendEmail;
    }

    public boolean isBeforeDeleteEachTestResult() {
        return beforeDeleteEachTestResult;
    }

    public void setBeforeDeleteEachTestResult(boolean beforeDeleteEachTestResult) {
        this.beforeDeleteEachTestResult = beforeDeleteEachTestResult;
    }

    public boolean isAfterDeleteEachTestResult() {
        return afterDeleteEachTestResult;
    }

    public void setAfterDeleteEachTestResult(boolean afterDeleteEachTestResult) {
        this.afterDeleteEachTestResult = afterDeleteEachTestResult;
    }

    public boolean isDeleteZipEachTestResult() {
        return deleteZipEachTestResult;
    }

    public void setDeleteZipEachTestResult(boolean deleteZipEachTestResult) {
        this.deleteZipEachTestResult = deleteZipEachTestResult;
    }

    public boolean isAppendExistingReport() {
        return appendExistingReport;
    }

    public void setAppendExistingReport(boolean appendExistingReport) {
        this.appendExistingReport = appendExistingReport;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isAuth() {
        return auth;
    }

    public void setAuth(boolean auth) {
        this.auth = auth;
    }

    public String getMailType() {
        return mailType;
    }

    public void setMailType(String mailType) {
        this.mailType = mailType;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getBcc() {
        return bcc;
    }

    public void setBcc(String bcc) {
        this.bcc = bcc;
    }

    public boolean isAddAttachment() {
        return addAttachment;
    }

    public void setAddAttachment(boolean addAttachment) {
        this.addAttachment = addAttachment;
    }

    public boolean isUploadDrive() {
        return uploadDrive;
    }

    public String getDriverShareTo() {
        return driverShareTo;
    }

    public void setDriverShareTo(String driverShareTo) {
        this.driverShareTo = driverShareTo;
    }

    public boolean isUseDarkTheme() {
        return useDarkTheme;
    }

    public void setUseDarkTheme(boolean useDarkTheme) {
        this.useDarkTheme = useDarkTheme;
    }

    public boolean isUseKlov() {
        return useKlov;
    }

    public void setUseKlov(boolean useKlov) {
        this.useKlov = useKlov;
    }

    public String getKlovProject() {
        return klovProject;
    }

    public void setKlovProject(String klovProject) {
        this.klovProject = klovProject;
    }

    public String getKlovHost() {
        return klovHost;
    }

    public void setKlovHost(String klovHost) {
        this.klovHost = klovHost;
    }

    public String getKlovMongoUri() {
        return klovMongoUri;
    }

    public void setKlovMongoUri(String klovMongoUri) {
        this.klovMongoUri = klovMongoUri;
    }

    public boolean isTakeScreenShotFail() {
        return takeScreenShotFail;
    }

    public void setTakeScreenShotFail(boolean takeScreenShotFail) {
        this.takeScreenShotFail = takeScreenShotFail;
    }

    public boolean isTakeScreenShotPass() {
        return takeScreenShotPass;
    }

    public void setTakeScreenShotPass(boolean takeScreenShotPass) {
        this.takeScreenShotPass = takeScreenShotPass;
    }
}
