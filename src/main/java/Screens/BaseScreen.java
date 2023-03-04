package Screens;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.touch.LongPressOptions;
import io.appium.java_client.touch.offset.ElementOption;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.Reporter;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofSeconds;

public class BaseScreen<assertFalseDisplayed> {

    protected IOSDriver driver;

    public BaseScreen(IOSDriver driver) {
        this.driver = driver;
    }

    protected WebDriverWait waitVisibility() {
        return new WebDriverWait(driver, 100);
    }

    protected void click_btn(By by) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        driver.findElement(by).click();
    }

    protected void doubleClick_btn(By by) {
        Actions actions = new Actions(driver);
        MobileElement element = (MobileElement) driver.findElement(by);
        actions.doubleClick(element).perform();
    }

    protected void doubleClick_btns(By by, int x) {
        Actions actions = new Actions(driver);
        MobileElement element = (MobileElement) driver.findElements(by).get(x);
        actions.doubleClick(element).perform();
    }

    protected void click_ByAccessibilityId(String NameAccessibilityId) {
        driver.findElementByAccessibilityId(NameAccessibilityId).click();
    }

    protected void click_btns(By by, int x) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        MobileElement e1 = (MobileElement) driver.findElements(by).get(x);
        e1.click();
    }

    protected void assertEqualsforCenter(By by, int x, int y) {
        MobileElement actual = (MobileElement) driver.findElements(by).get(x);
        MobileElement expected = (MobileElement) driver.findElements(by).get(y);
        Assert.assertEquals(actual.getCenter(), expected.getCenter());
        Reporter.log("expected: " + expected.getCenter() + " found: " + actual.getCenter());
    }

    protected void assertEqualsforButton(String expected, By by) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        String actual = driver.findElement(by).getText();
        Assert.assertEquals(actual, expected);
        Reporter.log("expected: " + expected + " found: " + actual);
    }

    protected void assertEqualsAttributeElements(By by, int x, String actual, String Attribute) {
        MobileElement element = (MobileElement) driver.findElements(by).get(x);
        String text = element.getAttribute(Attribute);
        //actual must be true or false
        Assert.assertEquals(actual, text);
        System.out.println("assertEqualsAttributeElements - PASS");
    }

    protected void assertTrueDisplayed(By by) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        MobileElement element = (MobileElement) driver.findElement(by);
        Assert.assertTrue(element.isDisplayed());
    }

    protected void assertFalseDisplayed(By by) {
        if (isElementPresent(by)) {
            Assert.assertTrue(false);
        }
        Assert.assertTrue(true);
    }

    protected void failTest()
    {
        Assert.fail();
    }

    protected void assertTrueDisplayedElements(By by, int x) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        MobileElement element = (MobileElement) driver.findElements(by).get(x);
        Assert.assertTrue(element.isDisplayed());
    }

    protected void assertEqualsElements(String actual, By by, int x) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        MobileElement expected = (MobileElement) driver.findElements(by).get(x);
        Assert.assertEquals(actual, expected.getText());
        Reporter.log("expected: " + expected.getText() + " found: " + actual);
    }

    protected void assertEqualsAttribute(By by, String actual, String Attribute) {
        String text = driver.findElement(by).getAttribute(Attribute);
        //actual must be true or false
        Assert.assertEquals(actual, text);
    }

    protected void notAssertEquals(String actual, By by) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        String expected = driver.findElement(by).getText();
        Assert.assertNotEquals(actual, expected);
    }

/*    public void longPressOnElement(By by, String arg0, int arg1) {
        MobileElement btn = (MobileElement) driver.findElement(by);
        TouchAction action = new TouchAction(driver);
        action.press(point(btn.getCenter())).waitAction(waitOptions(ofSeconds(arg1))).release().perform();
    }*/

    public void setValue(By by, String value) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        driver.findElement(by).sendKeys(value);
    }
    public void clearTextField(By by) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        driver.findElement(by).clear();
    }

    protected void setValueElements(By by, int x, String value) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(by));
        MobileElement element = (MobileElement) driver.findElements(by).get(x);
        element.setValue(value);
    }

    protected boolean isElementPresent(By by) {
        try {
            driver.findElement(by);
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    protected void swipeUp() throws InterruptedException {
        TouchAction action = new TouchAction(driver);

        int height = driver.manage().window().getSize().getHeight();
        int width = driver.manage().window().getSize().getWidth();

        int startx = height / 10;
        int starty = width / 2;
        int endy = (height / 10) * 9;
        int endx = width / 2;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(60);
    }

    protected void swipeDown() throws InterruptedException {
        TouchAction action = new TouchAction(driver);

        int height = driver.manage().window().getSize().getHeight();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height / 10;
        int startx = width / 2;
        int endy = (height / 10) * 9;
        int endx = width / 2;

        new TouchAction(driver).press(point(endx, endy)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(startx, starty)).release().perform();
        Thread.sleep(60);
    }

    protected void swipeLeft() throws InterruptedException {
        TouchAction action = new TouchAction(driver);

        int height = driver.manage().window().getSize().getHeight();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height / 2;
        int startx = (width / 10) * 9;
        int endy = height / 2;
        int endx = width / 10;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(60);
    }

    protected void swipeRight() throws InterruptedException {
        TouchAction action = new TouchAction(driver);

        int height = driver.manage().window().getSize().getHeight();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height / 2;
        int startx = (width / 10) * 9;
        (new TouchAction(driver)).tap(point(startx,starty)).perform();

        Thread.sleep(60);
    }

    public void takeScreenShot() {
        // Set folder name to store screenshots.
        String destDir = "screenshots1";
        // Capture screenshot.
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        // Set date format to set It as screenshot file name.
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy__hh_mm_ssaa");
        // Create folder under project with name "screenshots" provided to destDir.
        new File(destDir).mkdirs();
        // Set file name using current date time.
        String destFile = dateFormat.format(new Date()) + ".png";

        try {
            // Copy paste file at destination folder location
            FileUtils.copyFile(scrFile, new File(destDir + "/" + destFile));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void scrollUntilFindText(String ContentText) {
        Map<String, Object> args = new HashMap<>();
        args.put("direction", "down");
        driver.executeScript("mobile: scroll", args);
        args.put("direction", "up");
        driver.executeScript("mobile: scroll", args);
        args.put("direction", "down");
        args.put("name", ContentText);
        driver.executeScript("mobile: scroll", args);
    }

    protected Boolean findText(String ContentText) {

        try {
            driver.findElement(MobileBy.AndroidUIAutomator(
                    "new UiSelector().textContains(" + ContentText + ")"));
            return true;

        } catch (Exception e) {
            return false;
        }
    }


    public void findTextNoScroll(String arg0) throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElement(MobileBy.iOSNsPredicateString("label == '" + arg0 + "'"));
//        driver.findElement(MobileBy.iOSNsPredicateString("label == '" + arg0 + "'")).click();
        Thread.sleep(2000);
        element.click();
        System.out.println(arg0 + " texti sayfa kaydirmadan bulunur");
    }

    public void control_warning(String arg0, String arg1) throws InterruptedException {
        assertEqualsAttribute(By.xpath("//XCUIElementTypeStaticText[@name='"+arg0+"']//following-sibling::XCUIElementTypeSwitch"), arg1, "value");
        System.out.println(arg0+ " butonu "+arg1+" olduğu kontrol edilir - PASS");
    }

    public void control_noContent(String arg0) throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertFalseDisplayed(By.name(arg0));
        System.out.println(arg0+" yazsısının olmadığı kontrol edilir - PASS");
    }

    public void longPressOnElement(String arg0, int arg1) {
        MobileElement btn = (MobileElement) driver.findElementByName(arg0);
        TouchAction action = new TouchAction(driver);
        action.press(point(btn.getCenter())).waitAction(waitOptions(ofSeconds(arg1))).release().perform();
    }

}