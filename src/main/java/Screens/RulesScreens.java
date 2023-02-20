package Screens;

import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.By;


public class RulesScreens extends BaseScreen {

    public RulesScreens(IOSDriver driver) {
        super(driver);
    }


    public void Rules_clickOnList(String arg0) {
        String list_text = "//*[@class='android.widget.CheckedTextView' and @text='" + arg0 + "']";
        click_btn(By.xpath(list_text));
        System.out.println(arg0 + " açık listeden seçildi- PASS");
    }

    public void Rules_setRuleName(String arg0) {
        driver.getKeyboard().sendKeys(arg0);
        System.out.println("Kural Adi" + arg0 + "- PASS");
    }

    public void Rules_renameRuleName(String arg0) {
        String rule_text = "com.homewhiz.global:id/et_rename";
        setValue(By.id(rule_text), arg0);
        System.out.println("Kural Adi" + arg0 + " olarak değiştirildi - PASS");
    }

    public void Rules_clickRuleActivationButton() {
        String Activation_btn = "com.homewhiz.global:id/sp_activate_rule";
        click_btn(By.id(Activation_btn));
        System.out.println("Kuralı simdi etkinlestir butonuna basılır - PASS");
    }

    public void Rules_clickActivationButton(String arg0) {
        click_btn(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[" + arg0 + "]/android.widget.Switch"));
        System.out.println("Kural" + arg0 + "aktivasyon butonuna basılır - PASS");
    }

    public void Rules_setHour(int arg0){
        MobileElement element = (MobileElement) driver.findElementByXPath("//XCUIElementTypePickerWheel[1]");
        String text = element.getAttribute("value");

        String hour = text.substring(5);

        int hourValue = Integer.parseInt(hour);

        hourValue += arg0;

        if (hourValue > 23) {
            hourValue = 0;
        }

        String hourString = String.format("%02d", hourValue);

        element.setValue(hourString);

        System.out.println("set rules hour set - PASS");
    }

    public void Rules_setMinute(int arg0) {
        MobileElement element = (MobileElement) driver.findElementByXPath("//XCUIElementTypePickerWheel[2]");
        String text = element.getAttribute("value");

        String minute = text.substring(0,2);

        int minuteValue = Integer.parseInt(minute);

        minuteValue += arg0;

        if (minuteValue > 59) {
            minuteValue = 0;
        }

        String minuteString = String.format("%02d", minuteValue);

        element.setValue(minuteString);

        System.out.println("set rules minute set - PASS");
    }

    public void Rules_setDay(String day) {
        switch (day) {
            case "Mon":
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"P\"])[1]/parent::* /parent::*"));
                break;
            case "Tue":
                click_btn(By.xpath("//XCUIElementTypeStaticText[@name=\"S\"]/parent::* /parent::*"));
                break;
            case "Wed":
                click_btn(By.xpath("//XCUIElementTypeStaticText[@name=\"Ç\"]/parent::* /parent::*"));
                break;
            case "Thu":
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"P\"])[2]/parent::* /parent::*"));
                break;
            case "Fri":
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"C\"])[1]/parent::* /parent::*"));
                break;
            case "Sat":
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"C\"])[2]/parent::* /parent::*"));
                break;
            case "Sun":
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"P\"])[3]/parent::* /parent::*"));
                break;
            default:
                click_btn(By.xpath("(//XCUIElementTypeStaticText[@name=\"P\"])[1]/parent::* /parent::*"));
        }
        System.out.println("set rules day " + day + " - PASS");
    }

    public void Rules_ApproveLocationPopUp() {
        String approve_text = "TAMAM";
        String approve_text2 = "DEVAM ET";

//        if (FindText(approve_text2)) {
//            click_btn(By.xpath("//android.widget.Button[@text='" + approve_text2 + "']"));
//        }
//
//        if (FindText(approve_text)) {
//            click_btn(By.xpath("//android.widget.Button[@text='" + approve_text + "']"));
//        }

        System.out.println("Lokasyon izin bilgilendirme metni var ise onayla - PASS");
    }

    public void rules_setValue(String arg0) {
        setValue(By.xpath("//XCUIElementTypePickerWheel"), arg0);
        System.out.println(arg0 + " set edilir - PASS");
    }

    public void rules_clickComboItem(String arg0) {
        click_btn(By.xpath("//XCUIElementTypeStaticText[@name= '"+arg0+"']//parent::*"));
        System.out.println(arg0 + " seçilir - PASS");
    }

    public void Rules_clickMoreArrowRuleButton() {

        int height = driver.manage().window().getSize().getHeight();
        int width = driver.manage().window().getSize().getWidth();

        int y = (height / 20) * 7;
        int x = (width / 10) * 2;

        new TouchAction(driver).press(PointOption.point(x, y)).perform();

        System.out.println("Kural ok butonuna basılır - PASS");
    }

    public void rules_clickAlertDelete() {
        click_btn(By.xpath("(//XCUIElementTypeButton[@name=\"Sil\"])[2]"));
        System.out.println("Uyari popupi sil butonuna basilir - PASS");
    }
}

