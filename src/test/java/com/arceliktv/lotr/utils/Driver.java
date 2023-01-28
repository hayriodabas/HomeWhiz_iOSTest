package com.arceliktv.lotr.utils;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.remote.MobileCapabilityType;
import org.openqa.selenium.Platform;

import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.MalformedURLException;
import java.net.URL;

public class Driver {

    static   AppiumDriver<MobileElement> driver;

    private Driver() {
    }

    public static AppiumDriver<MobileElement> getDriver(){
        if (driver==null){
            DesiredCapabilities desiredCapabilities=new DesiredCapabilities();
            //we use android
            desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, Platform.ANDROID);
            //our version
            desiredCapabilities.setCapability(MobileCapabilityType.VERSION,ConfigurationReader.get("version"));
            //device name
            desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME,ConfigurationReader.get("deviceName"));

            desiredCapabilities.setCapability("appPackage", ConfigurationReader.get("appPackage"));
            desiredCapabilities.setCapability("appActivity", ConfigurationReader.get("appActivity"));

            try {
                driver=new AppiumDriver<MobileElement>(new URL("http://localhost:4723/wd/hub"),desiredCapabilities);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
        return driver;
    }
    public static void closeDriver() {
        if (driver != null) {
            driver.quit();
            driver = null;
        }
    }

}
