package com.arceliktv.lotr.hooks;

import com.arceliktv.lotr.virgosol.report.ReportManager;
import io.cucumber.java.AfterAll;
import io.cucumber.java.BeforeAll;
import org.apache.commons.io.FileUtils;

import javax.mail.MessagingException;
import java.io.File;
import java.io.IOException;

public class SuiteHook {

    @BeforeAll
    public static void beforeAll() throws IOException {
        ReportManager.getInstance().createExtentReport();
    }

    @AfterAll
    public static void afterAll() throws MessagingException, IOException {
        try {
            FileUtils.copyFile(new File("target/virgosol-qa.log"),
                    new File(ReportManager.getInstance().getReportDirectory() + "/logs/" + "virgosol-qa.log"));
        }catch (Exception e){
            //e.printStackTrace();
        }
        ReportManager.getInstance().saveReport();

    }
}
