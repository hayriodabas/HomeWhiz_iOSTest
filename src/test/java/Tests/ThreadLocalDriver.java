package Tests;

import io.appium.java_client.ios.IOSDriver;

public class ThreadLocalDriver {
    private static ThreadLocal<IOSDriver> tlDriver = new ThreadLocal<>();
    public static void setTLDriver(IOSDriver driver){
        tlDriver.set(driver);
    }

    public static IOSDriver getTLDriver(){
        return tlDriver.get();
    }
}
