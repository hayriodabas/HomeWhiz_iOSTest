package Tests;

import Screens.*;
import io.appium.java_client.MobileElement;
import io.appium.java_client.ios.IOSDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Parameters;
import java.io.IOException;
import java.net.URL;
import java.util.concurrent.TimeUnit;


public class BaseTest extends ThreadLocalDriver {
    protected Commonfunc commonfunc = null;
    protected BaseScreen baseScreen = null;
    protected NewScenariosScreens newScenariosScreens = null;
    public static String appName;
    public static String testDevice;
    public static String testAppVersion;
    public WebDriverWait wait;
    public static String appFile = "HomeWhiz_3.1.14(2).ipa";
    public static String appPath = System.getProperty("user.dir") + "/apps/" + appFile;


//    @BeforeMethod
    @BeforeTest
    @Parameters({"deviceName", "version", "udid", "port", "systemPort"})
    public void setup(String deviceName, String version, String udid, String port, String systemPort) throws IOException {

        //Unlock the device if it is locked.
        final Runtime rt = Runtime.getRuntime();
        rt.exec("adb shell input keyevent 224");

        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("automationName", "XCUITest");
        caps.setCapability("deviceName", deviceName);
        caps.setCapability("platformVersion", version);
        caps.setCapability("platformName", "iOS");
        caps.setCapability("udid", udid);
        caps.setCapability("systemPort", systemPort);
        caps.setCapability("app", appPath);
        caps.setCapability("bundleId", "com.homewhiz.global");
        caps.setCapability("noReset", true);
        caps.setCapability("fullReset", false);

        caps.setCapability("autoAcceptAlerts",false);
        caps.setCapability("autoDismissAlerts", false);
        caps.setCapability("autoGrantPermissions", false);

        caps.setCapability("xcodeOrgId","JPM9P879BC");
        caps.setCapability("xcodeSigningld","iPhone Developer");



        URL url_ = new URL("http://0.0.0.0:" + port + "/wd/hub");
        IOSDriver<MobileElement> driver = new IOSDriver<>(url_,caps);
        ThreadLocalDriver.setTLDriver(driver);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);  // Implicit wait driver'ın her elementin bulunması için bekleyeceği süredir. Eğer bu süre içinde elementi bulursa aksiyon alır(tıklama vs.) eğer bulamazsa hata fırlatır.
        wait = new WebDriverWait(ThreadLocalDriver.getTLDriver(), 60);
        commonfunc = new Commonfunc(ThreadLocalDriver.getTLDriver());
        baseScreen = new BaseScreen(ThreadLocalDriver.getTLDriver());
        newScenariosScreens = new NewScenariosScreens(ThreadLocalDriver.getTLDriver());
    }

    @BeforeTest
    @Parameters({"deviceName", "version", "udid", "port", "systemPort"})
    public void start(String deviceName, String version, String udid, String port, String systemPort) {
        appName = new String(appFile);
        testDevice = new String(deviceName);
        testAppVersion = new String(version);
    }


    @AfterTest
    public void TearDown() {
        ThreadLocalDriver.getTLDriver().quit();
        System.out.println("IOS Driver is closed ....OK");
    }


    public void reportLog(String message) {
        //logger.log(LogStatus.PASS, message);
    }
    public void reportLog_warning(String message) {
        //logger.log(LogStatus.WARNING, message);
    }
}