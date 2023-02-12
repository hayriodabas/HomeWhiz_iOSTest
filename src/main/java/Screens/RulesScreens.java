package Screens;

import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import org.openqa.selenium.By;

import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofSeconds;

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
        String rule_text = "com.homewhiz.global:id/et_rule_name";
        setValue(By.id(rule_text), arg0);
        driver.hideKeyboard();
        System.out.println("Kural Adi" + arg0 + "- PASS");
    }

    public void Rules_renameRuleName(String arg0) throws InterruptedException {
        String rule_text = "com.homewhiz.global:id/et_rename";
//        clearValue(By.id(rule_text));
        setValue(By.id(rule_text), arg0);
        System.out.println("Kural Adi" + arg0 + " olarak değiştirildi - PASS");
    }

    public void Rules_clickRuleActivationButton() {
        String Activation_btn = "com.homewhiz.global:id/sp_activate_rule";
        click_btn(By.id(Activation_btn));
        System.out.println("Kuralı simdi etkinlestir butonuna basılır - PASS");
    }

    public void Rules_clickDeleteRuleButton(String arg0) {
        //click_btn(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup["+arg0+"]/android.widget.ImageView[2]"));
        click_btn(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[" + arg0 + "]/android.view.ViewGroup/android.widget.TextView[2]"));
        System.out.println("Kural" + arg0 + " sil butonuna basılır - PASS");
    }

    public void Rules_clickMoreArrowRuleButton(String arg0) {
        click_btn(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[" + arg0 + "]/android.widget.ImageView[2]"));
        System.out.println("Kural" + arg0 + " ok butonuna basılır - PASS");
    }

    public void Rules_clickActivationButton(String arg0) {
        click_btn(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[" + arg0 + "]/android.widget.Switch"));
        System.out.println("Kural" + arg0 + "aktivasyon butonuna basılır - PASS");
    }

    public void Rules_deleteRuleResult() {
        String cross_btn = "com.homewhiz.global:id/tv_delete";
        click_btn(By.id(cross_btn));
        System.out.println("Rules sonuç iptal işaretine basildi - PASS");
    }

    public void Rules_setHour(int try_count) throws InterruptedException {

        int endx = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.Button[1]").getLocation().getX();
        int startx = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.Button[2]").getLocation().getX();

        int endy = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.Button[1]").getLocation().getY();
        int starty = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[1]/android.widget.Button[2]").getLocation().getY();

        for (int i = 0; i < try_count; i++) {
            new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1, 10))).moveTo(point(endx, endy)).release().perform();
            Thread.sleep(500/*2000*/);
        }
        System.out.println("set rules hour set - PASS");
    }

    public void Rules_setMinute(int try_count) throws InterruptedException {

        int endx = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.Button[1]").getLocation().getX();
        int startx = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.Button[2]").getLocation().getX();

        int endy = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.Button[1]").getLocation().getY();
        int starty = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TimePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.NumberPicker[2]/android.widget.Button[2]").getLocation().getY();

        for (int i = 0; i < try_count; i++) {
            new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1, 10))).moveTo(point(endx, endy)).release().perform();
            Thread.sleep(500/*2000*/);
        }
        System.out.println("set rules minute set - PASS");
    }

    public void Rules_setDay(String day) {
        switch (day) {
            case "Mon":
                click_btn(By.id("com.homewhiz.global:id/bt_monday"));
                break;
            case "Tue":
                click_btn(By.id("com.homewhiz.global:id/bt_tuesday"));
                break;
            case "Wen":
                click_btn(By.id("com.homewhiz.global:id/bt_wednesday"));
                break;
            case "Thu":
                click_btn(By.id("com.homewhiz.global:id/bt_thursday"));
                break;
            case "Fri":
                click_btn(By.id("com.homewhiz.global:id/bt_friday"));
                break;
            case "Sat":
                click_btn(By.id("com.homewhiz.global:id/bt_saturday"));
                break;
            case "Sun":
                click_btn(By.id("com.homewhiz.global:id/bt_sunday"));
                break;
            default:
                click_btn(By.id("com.homewhiz.global:id/bt_monday"));
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

        System.out.println("set rules approve popup - PASS");
    }


}
