package com.arceliktv.lotr.hooks;

import Tests.ThreadLocalDriver;
import com.arceliktv.lotr.listener.StepListener;
import com.arceliktv.lotr.utils.Driver;
import com.aventstack.extentreports.model.Media;
import com.arceliktv.lotr.virgosol.common.file.FileHelper;
import com.arceliktv.lotr.virgosol.common.image.ImageHelper;
import com.arceliktv.lotr.virgosol.report.ReportManager;
import io.cucumber.core.backend.TestCaseState;
import io.cucumber.java.AfterStep;
import io.cucumber.java.BeforeStep;
import io.cucumber.java.Scenario;
import io.cucumber.messages.types.TestStep;
import io.cucumber.plugin.event.HookTestStep;
import io.cucumber.plugin.event.PickleStepTestStep;
import io.cucumber.plugin.event.TestCase;
import org.openqa.selenium.OutputType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;



public class StepHook {
    private static final Logger logger = LoggerFactory.getLogger(StepHook.class);
    private static final String STEP_SUCCESS_TEMPLATE = "%s";// step has been successfully completed.";
    private static final String STEP_FAIL_TEMPLATE = "%s";// step has been completed unsuccessfully.";
    private final ReportManager reportManager = ReportManager.getInstance();

    @BeforeStep
    public void beforeStep(Scenario scenario) {
        //reportManager.info("Start " + getCurrentLineText(scenario, true));
    }

    @AfterStep
    public void afterStep(Scenario scenario) {
        String stepText = getCurrentLineText(scenario, false);
        if (scenario.isFailed()) {
            if (scenario.getSourceTagNames().stream().noneMatch(s -> s.contains("Api"))) {//CCE | 30.11.2022: Firma tarafından eklendi
                File ss = takeScreenShotAndCompress();
                if (ss != null) {
                    reportManager.getExtentTest().fail(String.format(STEP_FAIL_TEMPLATE, stepText), ReportManager.getInstance()
                            .createMediaEntity(ss));
                } else {
                    reportManager.getExtentTest().fail(String.format(STEP_FAIL_TEMPLATE, stepText));
                }
            } else {//CCE | 30.11.2022: Firma tarafından eklendi..API testi değilse screenshot işine girmeye gerek yok; gibi duruyor
                reportManager.getExtentTest().fail(String.format(STEP_FAIL_TEMPLATE, stepText));
            }
        } else {
            reportManager.getExtentTest().pass(String.format(STEP_SUCCESS_TEMPLATE, stepText));
        }
    }


    private String getCurrentLineText(Scenario scenario, boolean before) {
        String lineText = StepListener.stepName;
        if (lineText != null) {
            return lineText;
        }

        String stepText = "Step text not found";
        Field f;
        try {
            f = scenario.getClass().getDeclaredField("delegate");
            f.setAccessible(true);
            TestCaseState tcs = null;
            tcs = (TestCaseState) f.get(scenario);


            Field f2 = tcs.getClass().getDeclaredField("testCase");
            f2.setAccessible(true);
            TestCase r = (TestCase) f2.get(tcs);

            Field f3 = tcs.getClass().getDeclaredField("currentTestStepId");
            f3.setAccessible(true);
            UUID currentTestStepId = (UUID) f3.get(tcs);


            List<PickleStepTestStep> pickleStepTestSteps = r.getTestSteps()
                    .stream()
                    .filter(x -> x instanceof PickleStepTestStep)
                    .map(x -> (PickleStepTestStep) x)
                    .collect(Collectors.toList());

            for (PickleStepTestStep pickleStepTestStep : pickleStepTestSteps) {
                Field f4 = pickleStepTestStep.getClass().getDeclaredField(before ? "beforeStepHookSteps" : "afterStepHookSteps");
                f4.setAccessible(true);
                List<HookTestStep> stepHooks = (List<HookTestStep>) f4.get(pickleStepTestStep);
                if (stepHooks.stream().anyMatch(hookTestStep -> hookTestStep.getId() == currentTestStepId)) {
                    return pickleStepTestStep.getStep().getText();
                }
            }

        } catch (NoSuchFieldException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return stepText;
    }

    public File takeScreenShotAndCompress() {
        File file = null;
        try {
            //if (Driver.getDriver() == null) {//CCE | 30.11.2022: Firma tarafından kontrol eklenmiş
            if(ThreadLocalDriver.getTLDriver() == null)
            {
                return null;
            }
            file = ThreadLocalDriver.getTLDriver().getScreenshotAs(OutputType.FILE);//CCE | 01.09.2022: file objesine atama yapılacak şekilde düzenlendi
            file = ImageHelper.resizeWithThumbnails(file, 1200, 600);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    private String copyFileToReportDirectory(File file) {
        String filePath =
                String.format("%s/%s", ReportManager.getInstance().getReportDirectory(), file.getName());
        try {
            FileHelper.copyFile(file, new File(filePath));
            Files.delete(file.toPath());
        } catch (IOException e) {
            logger.error("Error file copy", e);
        }
        return filePath;
    }

    public Media createMediaEntity(File file, String title) {
        String path = copyFileToReportDirectory(file);
        return ReportManager.getInstance().createMediaEntity(path, title);
    }
}
