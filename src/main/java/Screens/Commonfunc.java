package Screens;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

import static datadriven.readExcelFile.getData;
import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofMillis;
import static java.time.Duration.ofSeconds;

public class Commonfunc extends BaseScreen {
    public Commonfunc(IOSDriver driver) {
        super(driver);
    }

    String lbl_remoteControl = "tv_remote_title";
    String btn_onOff = "button_on_off";
    String btn_back = "//*[@class=\"android.widget.ImageButton\"]";
    String xpath_element= "//*[@class=\"android.widget.TextView\"]";
    String leftbackbtn = "//*[@class=\"android.widget.ImageButton\"]"; //get(0)
    String xpath_off = "//*[@text=\"Program seçebilmek için cihazı açmanız gerekiyor\"]";
    String xpath = "//*[@text=\"Program Seçimi\"]";
    String xpath_favoriler = "//*[@text=\"Favoriler\"]";
    String xpath_sihirbaz = "//*[@text=\"Sihirbaz\"]";
    String xpath_konumizin = "//*[@text=\"İZİN VER\"]";
    String deviceinfo = "Cihaz Bilgileri";
    String lbl_brand = "tv_brand";
    String lbl_SKU = "tv_model";
    String lbl_programOptions = "tv_program_title";
    String lbl_deviceHistory = "tv_history_title";
    String lbl_model = "tv_model";
    String lbl_digital_id = "tv_digital_id";
    String lbl_macAddress = "tv_mac_address";
    String lbl_software = "tv_software_section";
    String lbl_version = "tv_version";
    String lbl_newUpdate = "tv_new_update";
    String otheroptions = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[2]";
    String history_date = "tv_date";
    String lbl_tipTitle = "tv_tips_title";
    String txt_tip = "tv_tip";
    String lbl_energyBar = "rating_bar_energy_consumption"; //get(0): elektrik , get(1): su
    String btn_dropdown = "//*[@class=\"android.widget.ImageView\"]";
    String menu_dropdown = "title"; //get(0): device information, get(1): Settings
    String credential_info = "rv_credential_info";
    String icons = "iv_icon";
    String setting_items = "rv_setting_item";
    String btn_start = "button_start_program";
    String lbl_title = "//*[@class=\"android.widget.TextView\"]";
    String HistoryDegreeValue = "//*[contains(@text, '°C' )]";
    String HistoryCycleValue = "//*[contains(@text, '00' )]";
    String historyProgramName = "tv_program_name";
    String historyFavBtn = "button_fav";
    String lbl_containText = "button_fav";
    String rule_icon = "scenes_default";
    String rule_txt= "tv_device_rules";
    String btn_createRule= "bt_create_time_rule";
    String lbl_brandname = "tv_brand_name";
    String lbl_modelNumber = "tv_model_number";
    String lbl_digital_id_no = "tv_digital_id_no";
    String lbl_macaddressno = "tv_mac_address_txt";
    String lbl_versioninfo = "tv_version_info";
    String btn_move = "button_move";
    String btn_remove = "//*[@class=\"android.widget.Button\"]";
    String btn_cancel = "//*[@class=\"android.widget.Button\"]";
    String btn_move2 = "//*[@class=\"android.widget.Button\"]";
    String lbl_moveTitle = "tv_title";
    String lbl_devices = "tv_title_devices";
    String img_gw_pic = "iv_gw_picture";
    String lbl_remoteControlOpen = "tv_remote_value";
    String btn_off = "button power off";
    String btn_on = "button power on";
    String btn_posiOff = "icon power";
    String btn_setting = "Ayarlar";
    String btn_locationPermit = "Bir Kez İzin Ver";
    String btn_drawerIos = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[1]";
    String btn_logout= "Çıkış Yap";

    String btn_threedot = "**/XCUIElementTypeNavigationBar[`name == \"CİHAZLAR\"`]/XCUIElementTypeButton[2]";




    public void control_remoteControlInfo() {
        assertEqualsforButton(getData("DEVICE_PANEL_PROGRAM_OPTIONS_REMOTE"), By.id(lbl_remoteControl));
    }

    public void control_onOffBtn() {
        assertTrueDisplayed(By.id(btn_onOff));
    }

    public void onoffcontrolandturnoff() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(xpath_off));

            if (!element.isDisplayed()) {
                click_btn(By.id(btn_onOff));
                Thread.sleep(5000);
            }

        } catch (Exception e) {
            System.out.println("device kapalı durumda");
        }
    }

    public void onoffcontrolandturnon() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(xpath_off));

            if (element.isDisplayed()) {
                click_btn(By.id(btn_onOff));
                Thread.sleep(5000);
            }

        } catch (Exception e) {
            System.out.println("device açık durumda");
        }
    }

    public void click_backButton() {
        click_btns(By.xpath(btn_back), 0);
        System.out.println("Sol üst geri tuşuna basıldı");
    }

    public void control_onOffButon_ON() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(xpath)));
        assertTrueDisplayed(By.xpath(xpath));
    }

    public void control_onOffButon_OFF() throws InterruptedException {
        assertTrueDisplayed(By.xpath(xpath_off));
    }

    public void click_onOffButton() throws InterruptedException {
        Thread.sleep(3000);
        click_btn(By.id(btn_onOff));
    }

    public void click_leftBackButton() throws InterruptedException {
        Thread.sleep(3000);
        click_btn(By.xpath(leftbackbtn));
    }

    public void control_leftBackButton(){
        assertTrueDisplayed(By.xpath(leftbackbtn));
    }

    public void control_deviceBrand() {
        assertTrueDisplayed(By.id(lbl_brand));
    }

    public void control_SKUinfo() {
        assertTrueDisplayed(By.id(lbl_SKU));
    }

    public void control_favourites() {
        assertTrueDisplayed(By.xpath(xpath_favoriler));
    }

    public void control_wizard() {
        assertTrueDisplayed(By.xpath(xpath_sihirbaz));
    }

    public void control_program_selection_icon() {
        assertTrueDisplayed(By.id(icons));
    }

    public void control_program_fav_icon() {
        assertTrueDisplayedElements(By.id(icons), 0);
    }

    public void control_program_wizard_icon() {
        assertTrueDisplayedElements(By.id(icons), 2);
    }

    public void control_energyBarForElectricity() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayedElements(By.id(lbl_energyBar), 0);
    }

    public void control_energyBarForWater() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayedElements(By.id(lbl_energyBar), 1);
    }

    public void click_btnDropDown() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(img_gw_pic)));
        click_btns(By.xpath(btn_dropdown), 0);
       }

    public void control_dropdownDeviceInfo() {
        assertEqualsElements(getData("ACTION_DEVICE_INFORMATION"), By.id(menu_dropdown), 0);
    }

    public void control_dropDownSettings() {
        assertEqualsElements(getData("action_settings"), By.id(menu_dropdown), 1);
    }

    public void control_dropDownhelper() {
        //todo:getdata ile yazılacak.
        assertEqualsElements("Yardım", By.id(menu_dropdown), 2);
    }

    public void control_deviceinfoPage() {
        assertTrueDisplayed(By.id(credential_info));
    }

    public void control_settingsPage() {
        assertTrueDisplayedElements(By.id(setting_items), 0);
    }

    public void click_fav() {
        click_btn(By.xpath(xpath_favoriler));
    }

    public void click_wizard() {
        click_btn(By.xpath(xpath_sihirbaz));
    }

    public void click_programSelect() {
        click_btn(By.xpath(xpath));
    }

    public void control_progSelectPage() {
        assertTrueDisplayed(By.id(btn_start));
    }

    public void control_tipsLabel() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayed(By.id(lbl_tipTitle));
    }

    public void control_tipsLabel_text() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        notAssertEquals("", By.id(txt_tip));
    }

    public void click_tip() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        click_btn(By.id(txt_tip));
    }

    public void control_deviceHistory() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayed(By.id(lbl_deviceHistory));
    }

    public void click_deviceHistory() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        click_btn(By.id(lbl_deviceHistory));
    }

    public void control_deviceHistoryDate() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        notAssertEquals("", By.id(history_date));
    }

    public void control_historyProgram() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        notAssertEquals("", By.id(historyProgramName));
    }

    public void control_HistoryDegreeValue() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayed(By.xpath(HistoryDegreeValue));
    }

    public void control_HistoryCycleValue() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayed(By.xpath(HistoryCycleValue));
    }

    public void control_historyfavicon() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertTrueDisplayed(By.id(historyFavBtn));
    }

    public void control_historyfavClickable() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_brand)));
        swipeDown();
        assertEqualsAttribute(By.id(historyFavBtn), "true", "clickable");
    }

    public void control_ruleicon(){
        assertTrueDisplayed(By.id(rule_icon));
    }

    public void control_rule(){
        assertTrueDisplayed(By.id(rule_txt));
    }

    public void click_rule(){
        click_btn(By.id(btn_createRule));
    }

    public void control_rulePage(){
        try{
            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(xpath_konumizin)));
            click_btn(By.xpath(xpath_konumizin));
        }
        catch (Exception e){
            System.out.println("konum izni popupı çıkmadı");
        }
        assertEqualsElements("Kural Tipi Seçiniz", By.xpath(xpath_element), 0);
    }

    public void control_programOptions(){
        assertTrueDisplayed(By.id(lbl_programOptions));
        assertEqualsforButton(getData("PROGRAM_OPTIONS_TITLE"), By.id(lbl_programOptions));
    }

    public void click_permissionAllowBtn(){
        MobileElement el1 = (MobileElement) driver.findElementById("com.android.permissioncontroller:id/permission_allow_foreground_only_button");
        el1.click();
        System.out.println("click_permissionAllowBtn - PASS");
    }

    public void click_otheroptions() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(otheroptions));
        Thread.sleep(2000);
    }

    public void click_deviceinfo() {
        click_btn(By.name(deviceinfo));
        System.out.println("Cihaz bilgilerine tiklanir - PASS");
    }

    public void control_deviceinfoAppbarText() {
        assertEqualsElements(getData("DEVICE_INFO_ACTION_TITLE"), By.xpath(lbl_title), 0);
        System.out.println("Cihaz bilgileri appbar text kontrolu yapilir - PASS");
    }

    public void control_brandText() {
        assertEqualsforButton(getData("DEVICE_INFO_BRAND_TITLE"), By.id(lbl_brand));
    }

    public void control_modelText() {
        assertEqualsforButton(getData("DEVICE_INFO_MODEL_TITLE"), By.id(lbl_model));
    }

    public void control_digital_id_text() {
        assertEqualsforButton(getData("DEVICE_INFO_APPLIAND_ID_TITLE"), By.id(lbl_digital_id));
    }

    public void control_macAddressText() {
        assertEqualsforButton(getData("DEVICE_INFO_MAC_ADDRESS_TITLE"), By.id(lbl_macAddress));
    }

    public void control_softwareText() {
        assertEqualsforButton(getData("DEVICE_INFO_SOFTWARE"), By.id(lbl_software));
    }

    public void control_versionText() {
        assertEqualsforButton(getData("DEVICE_INFO_VERSION_TITLE"), By.id(lbl_version));
    }

    public void isdisplayed_newUpdate() throws InterruptedException {
        swipeUp();
        assertTrueDisplayed(By.id(lbl_newUpdate));
    }

    public void haveBrand() {
        notAssertEquals("", By.id(lbl_brandname));
    }

    public void haveModel() {
        notAssertEquals("", By.id(lbl_modelNumber));
    }

    public void haveDigitalId() {
        notAssertEquals("", By.id(lbl_digital_id_no));
    }

    public void haveMacAddress() {
        notAssertEquals("", By.id(lbl_macaddressno));
    }

    public void haveVersion() {
        notAssertEquals("", By.id(lbl_versioninfo));
    }

    public void control_deviceUpdatedText() throws InterruptedException {
        swipeUp();
        assertEqualsforButton(getData("DEVICE_INFO_NEW_UPDATE"), By.id(lbl_newUpdate));
    }

    public void control_moveText (){
        assertEqualsforButton(getData("MOVE"), By.id(btn_move));
    }

    public void control_removeText (){
        assertEqualsforButton(getData("REMOVE"), By.id(btn_remove));
    }

    public void control_cancelText (){
        assertEqualsforButton(getData("CANCEL"), By.id(btn_cancel));
    }

    public void click_moveBtn (){
         click_btns(By.xpath(btn_move2), 0);
    }

    public void control_moveScrn(){
         assertEqualsforButton(getData("MOVE_DEVICE"), By.id(lbl_moveTitle));
    }

    public void click_cancelBtn (){
        click_btns(By.xpath(btn_cancel), 2);
    }

    public void control_devicesTitle (){
        assertEqualsforButton(getData("DEVICES"), By.id(lbl_devices));
    }

    public void control_remoteControlTextOpen() throws InterruptedException {
        Thread.sleep(3000);
        assertEqualsforButton(getData("ON"), By.id(lbl_remoteControlOpen));
        System.out.println("control_remoteControlTextOpen - PASS");
    }

    public void loginMail(String arg0, String arg1) throws InterruptedException {
        driver.findElementByName("GİRİŞ YAP").click();
//        Thread.sleep(3000);
        MobileElement el2 = (MobileElement) driver.findElementByAccessibilityId("E-posta Adresiniz:");
        el2.click();
//        Thread.sleep(2000);
        MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("Metni sil");
        el3.click();
//        Thread.sleep(2000);
        MobileElement el4 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeTextField[@value=\"E-posta Adresiniz\"]");
        el4.sendKeys(arg0);
//        Thread.sleep(2000);
        MobileElement el8 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeSecureTextField");
        el8.sendKeys(arg1);
//        Thread.sleep(2000);
        driver.findElementByName("GİRİŞ YAP").click();
//        Thread.sleep(2000);
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("CİHAZLAR")));
        System.out.println("loginMail - PASS");
    }

    public void loginInput(String arg0, String arg1) throws InterruptedException {
        driver.findElementByName("GİRİŞ YAP").click();
        MobileElement el2 = (MobileElement) driver.findElementByAccessibilityId("E-posta Adresiniz:");
        el2.click();
        MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("Metni sil");
        el3.click();
        MobileElement el4 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeTextField[@value=\"E-posta Adresiniz\"]");
        el4.sendKeys(arg0);
        MobileElement el8 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeSecureTextField");
        el8.sendKeys(arg1);
        driver.findElementByName("GİRİŞ YAP").click();
        System.out.println("loginInput - PASS");
    }

    public void hideKeyboard() throws InterruptedException {
        driver.findElementByName("Done").click();
        Thread.sleep(2000);
        System.out.println("Klavye gizenir - PASS");
//        driver.hideKeyboard();
    }

    public void LockDevice() {
        ((IOSDriver<?>) driver).lockDevice();
    }

    public void UnlockDevice() {
        ((IOSDriver<?>) driver).unlockDevice();
    }

    public void navigateBack() {
        driver.navigate().back();
        System.out.println("Navigasyon geri gidilir - PASS");
    }

    public void XSaniyeBekle(int t) throws InterruptedException {
        Thread.sleep((t*1000));
        System.out.println(t + " SaniyeBekle - PASS");
    }

    public void killApp() throws InterruptedException {
        driver.closeApp();
        TimeUnit.SECONDS.sleep(30);
        driver.launchApp();
        System.out.println("killApp - PASS");
    }

    public void XSaniyeArkaplandaTut(int m) throws InterruptedException {
        driver.runAppInBackground(Duration.ofSeconds(m));
        System.out.println(m + " SaniyeArkaplandaTut - PASS");
    }

    public void resetApp() throws InterruptedException {
        driver.terminateApp("com.homewhiz.global");
        TimeUnit.SECONDS.sleep(3);
        driver.launchApp();
//        Thread.sleep(15000);
        System.out.println("Uygulama resetlenir - PASS");
    }

    public void control_text(String arg0) {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
        driver.findElementByName(arg0);
        System.out.println(arg0 + " yazisi kontrol edildi - PASS");
    }

    public void control_contentText(String arg0) {
        driver.findElement(MobileBy.xpath("//*[contains(@label, '" + arg0 + "')]"));
        System.out.println(arg0 + " içeriği kontrol edilir - PASS");
    }

    public void wait_element(String arg0)
    {
        for(int i = 0; i < 5; i++)
        {
            try {
                //waitVisibility().until(ExpectedConditions.attributeToBe(By.name(arg0), "name", arg0));
                //ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
                driver.findElementByName(arg0);
                System.out.println(arg0 + " elementi beklendi - PASS");
                return;
            }
            catch (Exception e) {
                System.out.println(arg0 + "elementi bulunamadı: " + i);
            }
        }

        System.out.println(arg0 + "bulunmadı test fail");
        failTest();
    }

    //    public void click_deviceOn() {
//        try {
//            MobileElement element = (MobileElement) driver.findElement(By.id(btn_off));
//            if (element.getAttribute("name").equals("button power off")) {
//                element.click();
//                TimeUnit.SECONDS.sleep(3);
//            }
//        } catch (Exception e) {
//            System.out.println("Cihaz on durumda");
//        }
//        System.out.println("Cihaz on butonuna basılır - PASS");
//    }
    public void click_deviceOn()
    {
        for(int i = 0; i < 5; i++)
        {
            try
            {
                driver.findElement(By.id(btn_off)).click();
                System.out.println("Cihaz on konumu için buttona basıldı " + i);
                try {
                    MobileElement element = (MobileElement) driver.findElement(By.id(btn_on));
                    if (element.getAttribute("name").equals("button power on"))
                    {
                        System.out.println("Cihaz on durumda - PASS");
                        return;
                    }
                }
                catch (Exception e)
                {
                    System.out.println("On butonu yok tekrar dene");
                }
            }
            catch (Exception e)
            {
                System.out.println("Cihaz on durumda - PASS");
                return;
            }
        }
        System.out.println("Cihaz açılmadı test fail");
        failTest();
    }
    public void click_deviceOff() {
        for(int i = 0; i < 5; i++)
        {
            try
            {
                driver.findElement(By.id(btn_on)).click();
                System.out.println("Cihaz off konumu için buttona basıldı " + i);
                try {
                    MobileElement element = (MobileElement) driver.findElement(By.id(btn_off));
                    if (element.getAttribute("name").equals("button power off"))
                    {
                        System.out.println("Cihaz off durumda - PASS");
                        return;
                    }
                }
                catch (Exception e)
                {
                    System.out.println("Off butonu yok tekrar dene");
                }
            }
            catch (Exception e)
            {
                System.out.println("Cihaz off durumda - PASS");
                return;
            }
        }
        System.out.println("Cihaz kapanmadı test fail");
        failTest();
    }
    //    public void click_deviceOff() {
//        try {
//            MobileElement element = (MobileElement) driver.findElement(By.id(btn_on));
//            if (element.getAttribute("name").equals("button power on")) {
//                element.click();
//                TimeUnit.SECONDS.sleep(3);
//            }
//        } catch (Exception e) {
//            System.out.println("Cihaz off durumda");
//        }
//        System.out.println("Ürün kapatılır - PASS");
//    }

    public void click_settings() {
        click_btn(By.name(btn_setting));
        System.out.println("Ayarlar seçilir - PASS");
    }

    public void click_locationPermit() throws InterruptedException {

        try {
            driver.findElementByAccessibilityId("Bir Kez İzin Ver").click();
            System.out.println("Lokasyon izini verildi");

        } catch (Exception e) {
            System.out.println("Lokasyon izini zaten verilmiş");
        }
        System.out.println("Lokasyon izini verilir - PASS");

        try {
            driver.findElementByName("Tamam").click();
            System.out.println("Tamama basildi - PASS");

        } catch (Exception e) {
            System.out.println("Tamama basılmasına gerek kalmadı");
        }
        System.out.println("Tamam butonu işlemi- PASS");
    }

    public void click_button(String arg0) {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
        click_btn(By.name(arg0));
        System.out.println(arg0 + " butonuma basıldı - PASS");
    }

    public void removeAddApp() throws InterruptedException {
        driver.removeApp("com.homewhiz.global");
        Thread.sleep(3000);
        System.out.println("Uygulama silindi");
        driver.installApp("/Users/TestOnay-Yazilim/Projects/HomeWhiz_iOSTest/Apps/HomeWhiz_3.1.14(2).ipa");
        Thread.sleep(3000);
        System.out.println("Uygulama yüklendi");
        driver.launchApp();
        Thread.sleep(3000);
//        try {
//            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("İzin Ver")));
//            click_btn(By.name("İzin Ver"));
//            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("Tamam")));
//            click_btn(By.name("Tamam"));
//            Thread.sleep(3000);
//        }
//        catch (Exception e) {
//            System.out.println("Uygulama açıldı");
//        }
            System.out.println("Uygulama açıldı");
    }

    public void click_logout() {
        try {
//            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(btn_drawerIos)));
            click_btn(By.xpath(btn_drawerIos));
            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(btn_logout)));
            click_btn(By.name(btn_logout));
            System.out.println("Logot yapıldı - PASS");
        }catch (Exception e) {
            System.out.println("Cihaz Login değil");
        }
    }

    public void control_containText(String arg0) {
        driver.findElementByXPath("//*[contains(@label, '" + arg0 + "')]");
        System.out.println(arg0 +" yazısı içeriği kontrol edildi - PASS");
    }

    public void loginMailError(String arg0, String arg1) throws InterruptedException {
        Thread.sleep(20000);
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("Geç")));
        driver.findElementByName("GİRİŞ YAP").click();
        Thread.sleep(3000);
        MobileElement el2 = (MobileElement) driver.findElementByAccessibilityId("E-posta Adresiniz:");
        el2.click();
        Thread.sleep(2000);
        MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("Metni sil");
        el3.click();
        Thread.sleep(2000);
        MobileElement el4 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeTextField[@name=\"E-posta Adresiniz\"]");
        el4.sendKeys(arg0);
        Thread.sleep(2000);
        driver.findElementByAccessibilityId("Şifreniz").sendKeys(arg1);
        Thread.sleep(2000);
        driver.findElementByAccessibilityId("Şifreniz").clear();
        Thread.sleep(2000);
        driver.findElementByName("GİRİŞ YAP").click();
        Thread.sleep(2000);
        System.out.println("loginMail - PASS");
    }

    public void wait_name(String arg0) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
        System.out.println(arg0 +" yazısı beklendi - PASS");
    }

    public void click_rightTopMenuBtn() {
        driver.findElementByIosClassChain(btn_threedot).click();
        System.out.println("Sag ust uc nokta butonuna basilir - PASS");
    }

    public void control_twoText(String arg0, String arg1) throws InterruptedException {
        Thread.sleep(2000);
        try {
            driver.findElementByXPath("//*[contains(@label, '" + arg0 + "')]");
            System.out.println(arg0 + " bulundu - PASS");
        }
        catch (Exception e){
            driver.findElementByXPath("//*[contains(@label, '" + arg1 + "')]");
            System.out.println(arg1 + " bulundu - PASS");
        }
    }

    public void findElementScrollIntoView(String arg0) {
        HashMap<String, String> scrollObject =new HashMap<>();
        scrollObject.put("predicateString", "name == '"+ arg0 +"'");
        driver.executeScript("mobile:scroll", scrollObject);
//        click_btn(By.name(arg0));
//        scrollObject.put("direction", "up");
        System.out.println(arg0+" sayfada bulundu - PASS" );
    }

    public void swipeScreen(String arg0) {
        JavascriptExecutor js =  driver;
        HashMap<String, String> scrollObject = new HashMap<>();
        scrollObject.put("direction", arg0);
        js.executeScript("mobile: swipe", scrollObject);
        System.out.println("Ekranı "+arg0+ " kaydır - PASS");
    }

    public void control_buttonValue(String arg0, String arg1) {
        assertEqualsAttribute(By.xpath("//XCUIElementTypeStaticText[@name='"+arg0+"']//following-sibling::XCUIElementTypeSwitch"), arg1, "value");
        System.out.println(arg0+" butonunun "+arg1+ " oldugu kontrol edilir");
    }

    public void click_switchButton(String arg0, String arg1) throws InterruptedException {
        Thread.sleep(3000);
        MobileElement el1 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeStaticText[@name='" + arg0 + "']//following-sibling::XCUIElementTypeSwitch");
        if (el1.getAttribute("value").equals(arg1)) {
            System.out.println(arg0 + " zaten " + arg1 + " durumda");
        } else {
            el1.click();
            Thread.sleep(3000);
            System.out.println(arg0 + " butonu " + arg1 + " yapıldı - PASS");
        }
    }

    public void clickAlertDialogue(String arg0) {
        driver.switchTo().alert();
        driver.findElement(By.name(arg0));
        System.out.println("Uyarı ekranı" +arg0+ " tuşuna basilir - PASS" );

    }
}
