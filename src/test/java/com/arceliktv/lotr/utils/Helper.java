package com.arceliktv.lotr.utils;

import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static io.appium.java_client.touch.offset.PointOption.point;

public class Helper {
    private static int explicitWait = Integer.parseInt(ConfigurationReader.get("explicitWait"));
    private static int shortExplicitWait = Integer.parseInt(ConfigurationReader.get("explicitWait"));
    private static int longImplicitWait = Integer.parseInt(ConfigurationReader.get("longImplicit"));
    private static int shortimplicitWait = Integer.parseInt(ConfigurationReader.get("shortImlicit"));



    public static void clickElement(RemoteWebElement element){

        element.click();

    }

    public static void clickMobileElement(MobileElement element){

        element.click();

    }
    public static void backButtonClick(){
        Driver.getDriver().navigate().back();
    }

    public static void sendKeys(RemoteWebElement element,String key){
        element.sendKeys(key);
    }

    public static void   clickTimes (RemoteWebElement element,int count){

        for (int i=0;i<count;i++){
            element.click();
        }

    }

    public static void waitFor(int seconds) {
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }



    public static void  checkTextAreSame(RemoteWebElement element,String text){
        waitForVisibility(element);
        element.getText().equals(text);

    }

    public static void waitForVisibility(RemoteWebElement e) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), explicitWait);
        wait.until(ExpectedConditions.visibilityOf(e));
    }

    public static void waitForVisibility(RemoteWebElement e, int sec) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), sec);
        wait.until(ExpectedConditions.visibilityOf(e));
    }

    public static void shortWaitForVisibility(RemoteWebElement e) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), explicitWait);
        wait.until(ExpectedConditions.visibilityOf(e));
    }


    public static void waitForVisibility(By e) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), explicitWait);
        wait.until(ExpectedConditions.visibilityOfElementLocated(e));
    }


    public static void waitForPrecence(By e) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), explicitWait);
        wait.until(ExpectedConditions.presenceOfElementLocated(e));
    }

    public static void waitForPrecence(By e, int w) {
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), w);
        wait.until(ExpectedConditions.presenceOfElementLocated(e));
    }

    public static List<MobileElement> getElement_s(By by) {
        List elements = Driver.getDriver().findElements(by);
        return elements;
    }

    public static boolean isElementAbsent(By by) {

        return getElement_s(by).size()==0;
    }
    public static void clickElementWithKey(List<RemoteWebElement> elements, String text){
        for (WebElement element : elements) {
            if (element.getText().equals(text)) {
                element.click();
                break;
            }
        }}

    public static String getText(RemoteWebElement element){
        String text=element.getText();
        return text;
    }
    public static void swipeLeft() {
        TouchAction t = new TouchAction(Driver.getDriver());
        t.press(point(844, 1306)).waitAction().moveTo(point(126, 1306)).release()
                .perform();
    }

    @AndroidFindBy(xpath = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.view.ViewGroup[1]/android.widget.NumberPicker[2]/android.widget.EditText")
    public RemoteWebElement cookMin;

    public static void setCookTime(String hour,String min){
        RemoteWebElement cookHour=  Driver.getDriver().findElement(By.xpath("//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.view.ViewGroup[1]/android.widget.NumberPicker[1]/android.widget.EditText"));
        RemoteWebElement cookMin=Driver.getDriver().findElement(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.view.ViewGroup[1]/android.widget.NumberPicker[2]/android.widget.EditText"));
        System.out.println("hour = " + hour);
        do{
            TouchAction t = new TouchAction(Driver.getDriver());
            t.press(point(436, 1131)).waitAction().moveTo(point(436, 891)).release()
                    .perform();
            System.out.println("cookHour.getText() ="+cookHour.getText());
        }while(!cookHour.getText().equals(hour));

        do{
            TouchAction l = new TouchAction(Driver.getDriver());
            l.press(point(647, 1096)).waitAction().moveTo(point(647, 916)).release()
                    .perform();
        }while(!cookMin.getText().equals(min));

    }

    public static void selectCookTemp(List<RemoteWebElement>elements,String temp){
        for (WebElement element : elements) {
            if (element.getText().equals(temp)) {
                element.click();
                break;
            }
        }}

    public static void checkAttribute(RemoteWebElement element,String text,String attribute){

        if(element.getAttribute(attribute).equals(text)){
            Assert.assertTrue(true);
        }

    }

    public static void checkAttributeAndClick(RemoteWebElement element,String text,String attribute){

        if(element.getAttribute(attribute).equals(text)){
            element.click();
        }

    }

    public static void swipeRight() {
        TouchAction t = new TouchAction(Driver.getDriver());
        t.press(point(126, 1306)).waitAction().moveTo(point(844, 1306)).release()
                .perform();
    }






}
