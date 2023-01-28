package Steps;

import Screens.*;
import Tests.BaseTest;
import Tests.ThreadLocalDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseSteps extends BaseTest {

    protected WebDriverWait wait;
    protected Commonfunc commonfunc = null;
    protected BaseScreen baseScreen =null;
    protected NewScenariosScreens newScenariosScreens = null;

    protected void setupCucumber() {

        wait = new WebDriverWait(ThreadLocalDriver.getTLDriver(), 15);
        commonfunc = new Commonfunc(ThreadLocalDriver.getTLDriver());
        baseScreen = new BaseScreen(ThreadLocalDriver.getTLDriver());
        newScenariosScreens = new NewScenariosScreens(ThreadLocalDriver.getTLDriver());
    }


}
