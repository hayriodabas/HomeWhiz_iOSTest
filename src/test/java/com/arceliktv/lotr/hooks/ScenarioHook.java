package com.arceliktv.lotr.hooks;

import com.arceliktv.lotr.utils.Driver;
import com.aventstack.extentreports.ExtentTest;
import com.arceliktv.lotr.virgosol.report.ReportManager;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class ScenarioHook {
    private final ReportManager reportManager = ReportManager.getInstance();

    @Before
    public void beforeScenario(Scenario scenario) {
        ExtentTest extentTest = reportManager.createNewExtentTest(scenario.getName());
        //extentTest.info(String.format("Starting Test=%s", scenario.getName()));
    }


    @After
    public void afterScenario(Scenario scenario) {
        Driver.closeDriver();
//        reportManager.getExtentTest()
//                .info(String.format("Finished Test=%s", scenario.getName()));
    }
}
