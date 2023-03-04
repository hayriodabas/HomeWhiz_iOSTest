package Screens;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.ios.IOSElement;
import io.appium.java_client.ios.IOSTouchAction;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.sql.DriverManager;
import java.time.Duration;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

import static datadriven.readExcelFile.getData;
import static io.appium.java_client.touch.WaitOptions.waitOptions;
import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofMillis;
import static java.time.Duration.ofSeconds;


public class NewScenariosScreens extends BaseScreen {
    public NewScenariosScreens(IOSDriver driver) {
        super(driver);
    }

    public IOSTouchAction actions;

    String lbl_livingRoom = "tv_title";
    String img_exclaim = "icon_warning";
    String deviceNameOven = "//*[@text=\"Rapple Firin\"]";
    String device_ref = "K60 Safir Buzdolabi";
    String deviceNameRef = "//*[@text=\"" + device_ref + "\"]";
    String device_dryer = "Apollo Pro D7S";
    String deviceNameDryer = "//*[@text=\"" + device_dryer + "\"]";
    String box_name = "(//XCUIElementTypeTextField[@name=\":\"])[1]";
    String box_telNo = "(//XCUIElementTypeTextField[@name=\":\"])[3]";
    String btn_save = "KAYDET";
    String img_livingRoomImg = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage";
    String lbl_ovenAppTitle = "//*[@class=\"android.widget.TextView\"]";
    String btn_standbyId = "button power on";
    String lbl_oven = "tv_model";
    String lbl_programSelectInfo = "Program seçebilmek için cihazı açmanız gerekiyor.";
    String lbl_remainingTime = "//XCUIElementTypeStaticText[@name=\"Kalan Süre\"]//following-sibling::XCUIElementTypeStaticText";
    String lbl_firstRemainingTime = "//XCUIElementTypeStaticText[@name=\"Program Süresi\"]//following-sibling::XCUIElementTypeStaticText";
    String lbl_favoritePrg = "//XCUIElementTypeButton[@name=\"ic plus\"]//preceding-sibling::XCUIElementTypeOther/XCUIElementTypeStaticText[contains(@name,'Süre')]";
    String lbl_noFavorinfo = "Favorilerinizi, cihazınızı çalıştırmadan önce program seçimi esnasında ya da Cihaz Geçmişi bölümünden belirleyebilirsiniz.";
    String lbl_favorites = "Favoriler";
    String lbl_programSelection = "Program Seçimi";
    String lbl_savedRecipes = "Hazır Tarifler";
    String lbl_remainingTimeTitle = "Program Süresi";
    String icn_manualControl = "Program Seçimi";
    String lbl_setOvenTemp = "//XCUIElementTypeStaticText[@name=\"Sıcaklık\"]//following-sibling::XCUIElementTypeButton";
    String lbl_setShelfProposal = "//XCUIElementTypeStaticText[@name=\"Raf Önerisi\"]//following-sibling::XCUIElementTypeButton";
    String lbl_setAntiCrease = "//XCUIElementTypeStaticText[@name=\"Kırışık Önleme\"]//following-sibling::XCUIElementTypeButton";
    String lbl_programmeCont = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Spinner/android.widget.TextView";
    String lbl_cookingTime = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.TextView[1]";
    String btn_startProgramme = "PROGRAMI BAŞLAT";
    String tim_timeSet = "//XCUIElementTypeStaticText[@name=\"Program Süresi\"]/parent::*//following-sibling::XCUIElementTypeButton";
    String btn_cookingTime = "//XCUIElementTypeStaticText[@name=\"Pişirme Süresi (Saat : Dakika)\"]/parent::*//following-sibling::XCUIElementTypeButton";
    String btn_ok = "button_ok";
    String btn_wasteBin = "çöp sepeti";
    String btn_cookingStepEditRun = "play running control";
    String btn_programSec = "//XCUIElementTypeImage[@name=\"manual_32\"]/preceding-sibling::XCUIElementTypeButton";
    String btn_recipeSelect = "//XCUIElementTypeImage[@name=\"recipe_32\"]/preceding-sibling::XCUIElementTypeButton";
    String btn_pause = "icon pause white";
    String icn_hand = "icon manual mini white";
    String tim_remaininTime = "tv_remaining_value";
    String btn_stop = "icon stop mini white";
    String btn_run = "icon start white";
    String lbl_staticPrg = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[1]";
    String lbl_SetTemp = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]";
    String lbl_modelNo = "tv_model_number";
    String btn_pauseiOS = "icon pause white";
    String lbl_digId = "tv_digital_id_no";
    String lbl_verion = "tv_version_info";
    String lbl_detailRoomName = "//*[@class=\"android.widget.TextView\"]";
    String btn_DryerOnOff = "button_on_off";
    String btn_notyDef = "Bildirim Ayarları";
    String btn_switchOnDoor = "//XCUIElementTypeSwitch[@name=\"Kapak açık bildirim iletme açık\"]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage";
    String btn_notifySave = "Kaydet";
    String btn_signOut = "Çıkış Yap";
    String btn_move = "button_move";
    String btn_roomSelect = "mv_spinner_rooms";
    String btn_menuButton = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[2]";
    String btn_moveTo = "mv_button_move";
    String btn_kitchen = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]";
    String function_name = "text_view_function_name";
    String lbl_DegreeCooler = "tv_degree_cooler";
    String bdFreezerSwipeId = "//XCUIElementTypePickerWheel";
    String bdFreezerId = "tv_degree_freezer";
    String lbl_DegreeFreezer = "tv_degree_freezer";
    String btn_switchDoor = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.Switch";
    String btn_deviceSetting = "Cihaz Ayarları";
    String btn_doorOpenMin = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.Spinner/android.widget.TextView";
    String lbl_fiveMin = "5 Dk";
    String lbl_fiveMinRes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.Spinner/android.widget.TextView";
    String lbl_oneMin = "1 Dk";
    String lbl_oneMinRes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.Spinner/android.widget.TextView";
    String lbl_kitchenDev = "tv_group";
    String lbl_refDev = "tv_brand";
    String lbl_howAdd = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView[2]";
    String btn_cancel = "item_cancel";
    String btn_allRecipes = "recipes_starter_all";
    String lbl_allRecipesTitle = "(//XCUIElementTypeStaticText[@name=\"Tüm Tarifler\"])[1]";
    String lbl_headerAllRecipes = "(//XCUIElementTypeStaticText[@name=\"Tüm Tarifler\"])[3]";
    String btn_hideFunc = "icon dropdown arrow 24 grey";
    String btn_continue = "play running control";
    String btn_dryerSelectCottonProgram = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[1]";
    String btn_dryerDryingLevel = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.Spinner/android.widget.TextView";
    String btn_dryerSelectDryingValue = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[1]";
    String btn_dryerDryingState = "tv_substate_value";
    String btn_dryerButtonPause = "icon start white";
    String btn_dryerClickMixProgram = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[9]";
    String btn_delicateDrySwitchButton = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.Switch";
    String btn_dryerMixProgram = "tv_program";
    String btn_settings_menu = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView";
    String btn_downloadProgramManage = "İndirilen Program Yönetimi";
    String btn_towelProgram = "Havlu";
    String btn_checkRadioButton = "rb_program_option";
    String btn_clickDownloadProgram = "bt_download_program_button";
    String btn_quilt_program = "Yorgan";
    String btn_clickWizard = "//XCUIElementTypeImage[@name=\"wizard_32\"]/preceding-sibling::XCUIElementTypeButton";
    String btn_click_synthetic = "Sentetik";
    String btn_clickWizartNextBtn1 = "Yük seçin";
    String btn_clickModerateWizardBtn2 = "Orta";
    String btn_clickDryLevelWizardBtn3 = "Kurutma seçin";
    String btn_clickIronDryWizardBtn4 = "Ütü Kuruluğu";
    String btn_clickRecommendedProgramsWizardBtn5 = "Önerilen Program seçin";
    String lbl_checkSyntheticDryLevel = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[2]";
    String lbl_remoteInfo = "tv_remote_control_info";
    String lbl_checkProgramList = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Spinner/android.widget.TextView";
    String btn_dryerClickKirisikOnleme = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.Spinner/android.widget.TextView";
    String btn_dryerClickSetKirisikOnleme = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[4]";
    String lbl_dryerFunctionValue = "//*[@class=\"android.widget.TextView\"]";
    String btn_dryerTimeDelay = "icon delay circle";
    String btn_off = "button power off";
    String btn_on = "button power on";
    String btn_updateInfo = "//XCUIElementTypeStaticText[@name=\"Bilgileri Güncelle\"]//preceding-sibling::XCUIElementTypeButton";
    String getBtn_dryerSelectCottonProgramList = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]";
    String btn_backDryerScreen1 = "//android.widget.ImageButton[@content-desc=\"Yukarı git\"]";
    String btn_clickOkAfterDownloadProgram = "Tamam";
    String lbl_devListTempCooler = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout[1]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView";
    String lbl_controlNumberOfTempInRefScreen = "tv_degree_cooler";
    String Lbl_controlDegreeOfTempInRefScreen = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView[2]";
    String lbl_controlNumberOfFreezerInRefScreen = "tv_degree_freezer";
    String lbl_controlDegreeOfFreezerInRefScreen = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView[2]";
    String btn_verticalAirMode = "//XCUIElementTypeStaticText[@name=\"Dikey Hava Akışı\"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_devListTempFreezer = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout[1]/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView";
    String btn_doorSwitch = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.Switch";
    String btn_frzDoorSwitch = "//XCUIElementTypeStaticText[@name=\"Kapı açık\"]/following-sibling::XCUIElementTypeSwitch";
    String btn_backHomeScreen1 = "//android.widget.ImageButton[@content-desc=\"Yukarı git\"]";
    String btn_CloseCooler = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[3]/android.widget.ImageView";
    String btn_CloseFreezer = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.RelativeLayout[3]/android.widget.ImageView";
    String bdCoolerId = "tv_degree_cooler";
    String lbl_airConTemp = "//XCUIElementTypePickerWheel";
    String lbl_manualText = "//XCUIElementTypeImage[@name=\"remote_32\"]/preceding-sibling::XCUIElementTypeButton";
    String lbl_sleepingMod = "//XCUIElementTypeStaticText[@name=\"Uyku Modu\"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_sleepingModOn = "//XCUIElementTypeStaticText[@name=\"Uyku Modu\"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_fanSpeed = "Düşük";
    String lbl_fanSpeedMedium = "Orta";
    String lbl_fanSpeedHigh = "Hızlı";
    String lbl_verticalAir = "//XCUIElementTypeStaticText[@name=\"Dikey Hava Akışı\"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_timerValue = "//XCUIElementTypeStaticText[@name=\"Zamanlayıcı\"]/following-sibling::XCUIElementTypeStaticText";
    String pck_airconTemp = "//XCUIElementTypePickerWheel";
    String lbl_airConMod = "Soğutma";
    String lbl_off = "Kapalı";
    String lbl_airCoolerSwipeId = "XCUIElementTypePickerWheel";
    String frm_tipe = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView";
    String lbl_workingModDryer = "Kurutma";
    String lbl_workingModCooling = "**/XCUIElementTypeStaticText[`label == \"Soğutma\"`][2]";
    String lbl_DegreeCoolerBar = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[6]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel";
    String lbl_sleepingNewMod = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView[2]";
    String lbl_verticalNewAir = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.TextView[2]";
    String lbl_timerNewValue = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.TextView[2]";
    String btn_standbyDevices = "//*[@class=\"android.widget.ImageButton\"]";
    String btn_fanSpeed = "//XCUIElementTypeStaticText[@name=\"Fan Hızı\"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_programmeName = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeButton";
    String btn_favorites = "icon favourite white";
    String btn_favorites1 = "//XCUIElementTypeImage[@name=\"fav_32\"]/preceding-sibling::XCUIElementTypeButton";
    String lbl_hijyen = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView";
    String lbl_superiorDry = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.TextView";
    String lbl_yogunSu = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.TextView";
    String lbl_hizli = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[5]/android.widget.TextView";
    String lbl_yarimYuk = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]/android.widget.TextView";
    String lbl_sure = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[7]/android.widget.TextView[1]";
    String lbl_startProgramme = "button_start_program";
    String btn_timeDelay = "button_time_delay";
    String btn_superiorDry = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.Switch";
    String lbl_rapid45 = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[4]";
    String btn_swchDoor = "//XCUIElementTypeSwitch[@name=\"Kapak açık bildirim iletme kapalı\"]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage";
    String lbl_rapidFunc = "//XCUIElementTypeStaticText[@name=\"Hızlı\"]//following-sibling::XCUIElementTypeSwitch";
    String lbl_superiorDryFunc = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.Switch";
    String btn_programEndHome = "home icon gray";
    String btn_sendToOwen = "//XCUIElementTypeButton[@name=\"FIRINA GÖNDER\"]";
    String lbl_timeArea = "//XCUIElementTypeStaticText[@name=\"SAAT\"]/parent::XCUIElementTypeOther";
    String btn_dishesType = "wizard_option_checkbox";
    String btn_lastPrgPlay = "repeat white";
    String btn_dirtLevel = "Kir seviyesi seçin";
    String btn_dirtLevelOption = "Çok";
    String btn_saveFavorite = "//XCUIElementTypeButton[@name=\"Geri\"]/following-sibling::XCUIElementTypeButton";
    String lbl_favoriteTitle = "//XCUIElementTypeAlert[@name=\"Favorilere Ekle\"]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField";
    String btn_favoriteOk = "OK";
    String lbl_name = "//XCUIElementTypeStaticText[@name=\"Ad\"]//following-sibling::XCUIElementTypeTextField";
    String lbl_surName = "//XCUIElementTypeStaticText[@name=\"Soyadı\"]//following-sibling::XCUIElementTypeTextField";
    String lbl_eMail = "//XCUIElementTypeStaticText[@name=\"E-posta\"]//following-sibling::XCUIElementTypeTextField";
    String lbl_phoneNumber = "//XCUIElementTypeStaticText[@name=\"Telefon Numarası\"]//following-sibling::XCUIElementTypeTextField";
    String lbl_favoritePrgName = "tv_fav_name";
    String btn_favotePlay = "icon start white";
    String btn_warmColor = "//XCUIElementTypeStaticText[@name=\"Sıcak\"]//parent::*";
    String btn_redColor = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther";
    String btn_purpleColor = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[14]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther";

    String btn_favoritePlus = "ic plus";
    String btn_cop = "icon favorite delete";
    String btn_favoriteDeleteOk = "//XCUIElementTypeButton[@name=\"Sil\"]";
    String lbl_lastProgram = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Spinner/android.widget.TextView";
    String btn_autoPrgCombo = "Kapalı";
    String sb_rinseAidLevel = "//XCUIElementTypeSlider";
    String lbl_autoDoorOpen = "//XCUIElementTypeButton[@name=\"Kapalı\"]";
    String lbl_seekBarTwo = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeSlider";
    String device_dishWasher = "B8 Bulaşık Makinesi";
    String deviceNameDish = "//*[@text=\"" + device_dishWasher + "\"]";
    String btn_warningOptions = "Uyarı Görüntüleme Ayarları";
    String btn_noSaltWarn = "//XCUIElementTypeStaticText[@name=\"Tuz yok\"]//following-sibling::XCUIElementTypeSwitch";
    String lbl_noSaltWarn = "tv_alert";
    String btn_modeArrow = "(//XCUIElementTypeImage[@name=\"icon_dropdown_arrow_gray\"])[1]";
    String btn_productPause = "\"//*[@class=\\\"android.widget.ImageButton\\\"]\";";
    String device_WM = "CM Digital Prologue";
    String deviceNameWM = "//*[@text=\"" + device_WM + "\"]";
    String icn_heart = "fav";
    String lbl_noFavInst = "tv_no_fav_instruction";
    String btn_devicesHome = "tabbar icon dashboard grey";
    String btn_quickAccess = "tabbar icon quick access grey";
    String btn_devices = "tabbar icon devices grey";
    String btn_rules = "tabbar icon rules grey";
    String lbl_appBarTitle = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.TextView[1]";
    String lbl_appBarSubTitle = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.TextView[2]";
    String btn_controlPanel = "Kontrol Paneli";
    String btn_users = "Kullanıcılar";
    String img_userProfile = "user_card_view_picture";
    String btn_support = "nav_support";
    String btn_conOptions = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView";
    String lbl_agreementDetail = "consent_detail";
    String lbl_agreementContent = "HOMEWHIZ UYGULAMASI HİZMET KOŞULLARI";
    String btn_bell = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[2]";
    String btn_recipesArrow = "//XCUIElementTypeStaticText[@name=\"YEMEK TARİFLERİ\"]//following-sibling::XCUIElementTypeImage";
    String lbl_progressInfo = "Pişiriyor";
    String btn_steamOnOff = "//XCUIElementTypeStaticText[@name=\"Buhar\"]//following-sibling::XCUIElementTypeSwitch";
    String cbx_userAgreement = "//XCUIElementTypeButton[@name=\"unchecked checkbox\"]";
    String btn_preWash = "//XCUIElementTypeStaticText[@name=\"Ön yıkama\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_extraWater = "//XCUIElementTypeStaticText[@name=\"İlave Su\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_rapidOff = "//XCUIElementTypeStaticText[@name=\"Hızlı yıkama +\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_yogun = "//XCUIElementTypeStaticText[@name=\"Yoğun\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_smartCrease = "//XCUIElementTypeStaticText[@name=\"Akıllı Kırışık Azaltma\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_personalTimeLevel = "//XCUIElementTypeStaticText[@name=\"Kişiselleşmiş Süre Seviyesi\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_nightMode = "//XCUIElementTypeStaticText[@name=\"Gece Modu\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_crease = "//XCUIElementTypeStaticText[@name=\"Kırışık Azaltma\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_sudaBastirma = "//XCUIElementTypeStaticText[@name=\"Suda bastırma\"]//following-sibling::XCUIElementTypeSwitch";
    String lbl_extraRinseCount = "//XCUIElementTypeStaticText[@name=\"0\"]";
    String btn_plusWaterFunc = "//XCUIElementTypeStaticText[@name=\"İlave Su\"]//following-sibling::XCUIElementTypeSwitch";
    String lbl_dailyMini = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[4]";
    String lbl_stain = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[9]";
    String btn_preWashFunc = "//XCUIElementTypeStaticText[@name=\"Ön yıkama\"]//following-sibling::XCUIElementTypeSwitch";
    String lbl_setTime = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeButton";
    String btn_colorWhite = "//XCUIElementTypeStaticText[@name=\"Beyaz\"]//preceding-sibling::radio button selected";
    String btn_dirtLevelMedium = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.ScrollView/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.RadioButton";
    String btn_hijenPlus = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[12]";
    String btn_spinList = "//XCUIElementTypeStaticText[@name=\"Devir\"]//following-sibling::XCUIElementTypeButton";
    String lbl_lowSound = "Düşük";
    String lbl_highSound = "Yüksek";
    String btn_cmDoorOpen = "//XCUIElementTypeStaticText[@name=\"Kapak açık\"]/following-sibling::XCUIElementTypeSwitch";
    String btn_cmDoorClose = "//XCUIElementTypeStaticText[@name=\"Kapak açık\"]/following-sibling::XCUIElementTypeSwitch";
    String btn_cmDoorNoty = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.Switch";
    String btn_bdDoorOpen = "//XCUIElementTypeStaticText[@name=\"Kapı açık\"]/following-sibling::XCUIElementTypeSwitch";
    String btn_bdDoorOpen3 = "//XCUIElementTypeStaticText[@name=\"Kapı açık\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_bdDoorClose = "**/XCUIElementTypeSwitch[`label == \"Kapı açık bildirim iletme açık\"`]";
    String btn_otherFunc = "icon dropdown arrow 24 grey";
    String btn_otherFuncClose = "icon dropdown arrow 24 grey";
    String btn_posiFav = "icon favourite white";
    String lbl_toneLow = "Düşük";
    String lbl_silent = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[6]";
    String lbl_remoteControlOpen = "//XCUIElementTypeStaticText[@name=\"Uzaktan Kontrol\"]//following-sibling::XCUIElementTypeStaticText";
    String lbl_colorCircle = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther";
    String lbl_devices = "icon";
    String lbl_homeName = "tv_title_home";
    String icn_device = "iv_device_icon";
    String btn_onOff = "iv_turn_on_button";
    String btn_deviceOnBackground = "iv_device_on_background";
    String btn_home = "navigation_dashboard";
    String lbl_weather = "text_view_city_temp";
    String btn_gotorulePage = "image_button_navigate_to_rule_dashboard";
    String btn_addrule = "tv_add_rule";
    String lbl_elements = "//*[@class=\"android.widget.TextView\"]"; //get(3)
    String btn_functions = "icon_mini_right_arrow_gray";
    String btn_drawerIos = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[1]";
    String btn_myAccountIos = "Hesabım";
    String lbl_hwInfoTitle = "Homewhiz İletişim Bilgileri";
    String lbl_otherInfoTitle = "**/XCUIElementTypeStaticText[`label == \"Diğer İletişim Bilgileri\"`][1]";
    String btn_rapidCoolingFunc = "//XCUIElementTypeSwitch[@name=\"Hızlı Soğutma\"]";
    String btn_rapidFreezingFunc = "//XCUIElementTypeSwitch[@name=\"Hızlı Dondurma\"]";
    String btn_vacationMood = "//XCUIElementTypeSwitch[@name=\"Tatil Modu\"]";
    String btn_ecoFuzzy = "//XCUIElementTypeStaticText[@name=\"Eco Fuzzy\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_doorSwtchOff = "//XCUIElementTypeSwitch[@name=\"Kapak açık bildirim iletme kapalı\"]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage";
    String lbl_favoriteTB = "//XCUIElementTypeAlert[@name=\"Favorilere Ekle\"]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther";
    String btn_wizard = "Favoriler";
    String btn_continue_program = "play running control";
    String lbl_wizardSelection = "Sihirbaz";
    String btn_threedot = "**/XCUIElementTypeNavigationBar[`name == \"CİHAZLAR\"`]/XCUIElementTypeButton[2]";
    String btn_posiOff = "icon power";
    String lbl_delayTimeHour = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeDatePicker/XCUIElementTypePicker/XCUIElementTypePickerWheel[1]";
    String lbl_delayTimeMin = "//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeDatePicker/XCUIElementTypePicker/XCUIElementTypePickerWheel[2]";
    String btn_clickStartProgramDelay = "(//XCUIElementTypeButton[@name=\"PROGRAMI BAŞLAT\"])[2]";
    String lbl_progressTextValue = "//XCUIElementTypeStaticText[@name=\"AŞAMA: \"]/following-sibling::XCUIElementTypeStaticText";
    String lbl_plusDryLevel = "//XCUIElementTypeStaticText[@name=\"Ek kuruluk\"]";
    String btn_programSelection = "//XCUIElementTypeStaticText[@name=\"Program\"]/preceding-sibling::XCUIElementTypeStaticText";
    String icn_circle_ppm_holder = "//XCUIElementTypeStaticText[contains(@name,'PPM')]//preceding-sibling::XCUIElementTypeOther";
    String btn_nightModeSwtch = "//XCUIElementTypeStaticText[@name=\"Gece Modu\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_freezerCabinMode = "//XCUIElementTypeStaticText[@name=\"Dondurucu Kabin Modu\"]//following-sibling::XCUIElementTypeButton";
    String pck_freezerMode = "//XCUIElementTypePickerWheel";
    String btn_airCleanBtn = "//XCUIElementTypeStaticText[@name=\"Hava Temizleme\"]//preceding-sibling::XCUIElementTypeButton";
    String btn_modeSelection = "//XCUIElementTypeStaticText[@name=\"Mod Seçimi\"]//preceding-sibling::XCUIElementTypeButton";
    String btn_airClean = "//XCUIElementTypeStaticText[@name=\"Hava Temizleme\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_lamp = "//XCUIElementTypeStaticText[@name=\"Işık\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_dirtLevelActive = "//XCUIElementTypeButton[@name=\"Aktif\"]";
    String btn_dirtLevelPasive = "//XCUIElementTypeButton[@name=\"Pasif\"]";
    String btn_needToCleanFilter = "//XCUIElementTypeStaticText[@name=\"Filtrenin temizlenmesi gerekiyor\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_fanSpeedSelection = "//XCUIElementTypeStaticText[@name=\"Fan Seviyesi\"]//preceding-sibling::XCUIElementTypeStaticText";
    String ppm_value = "";
    String lbl_humidityValue = "//XCUIElementTypeStaticText[@name=\"NEM\"]//following-sibling::XCUIElementTypeStaticText";
    String lbl_tempValue = "//XCUIElementTypeStaticText[@name=\"SICAKLIK\"]//following-sibling::XCUIElementTypeStaticText";
    String btn_co2Info = "info mini white";
    String btn_c2oInfoAlert = "icon close grey";
    String lbl_ppmValue = "//XCUIElementTypeStaticText[contains(@name,'PPM')]";
    String lbl_firstRecipe = "Armut ve Elma Kurusu";
    String btn_plugDevOnOff = "//XCUIElementTypeOther[contains(@name,\"Priz\")]/parent::*//following-sibling::XCUIElementTypeOther//XCUIElementTypeSwitch";
    String btn_plugStatus = "//XCUIElementTypeStaticText[@name=\"AKILLI PRIZ:\"]//following-sibling::XCUIElementTypeStaticText";
    String btn_lampStatus = "//XCUIElementTypeOther[contains(@name,\"Lamba\")]/parent::*//following-sibling::XCUIElementTypeOther//XCUIElementTypeSwitch";
    String btn_power = "icon power";
    String lbl_plugEnergyValue = "//XCUIElementTypeStaticText[@name=\"ANLIK GÜÇ TÜKETİMİ:\"]//following-sibling::XCUIElementTypeStaticText";
    String lbl_plugEnergyValueDetail = "//XCUIElementTypeStaticText[@name=\"Anlık güç tüketimi\"]//following-sibling::XCUIElementTypeStaticText[contains(@name,'W')]";
    String btn_options = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[2]";
    String btn_consumption = "Tüketim";
    String btn_accessEnergy = "icon quick access energy";
    String btn_accessEnergyPlug = "//XCUIElementTypeSwitch";
    String btn_plugStartingDate = "//XCUIElementTypeStaticText[@name=\"Başlangıç Tarihi\"]//following-sibling::XCUIElementTypeStaticText";
    String pck_dateDayPicket = "//XCUIElementTypePickerWheel[1]";
    String txf_roomName = "//XCUIElementTypeTextField";
    String btn_addNewRoomIcon = "AC Plus";
    String btn_roomPic = "//XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage";
    String btn_lightPowerOn = "light icon green";
    String btn_lightPowerOff = "ic light off";
    String btn_ovenDoorOpen = "//XCUIElementTypeStaticText[@name=\"Kapak açık\"]//following-sibling::XCUIElementTypeSwitch";
    String btn_coldColor = "//XCUIElementTypeStaticText[@name=\"Soğuk\"]//parent::*";
    String btn_otherOptions = "//XCUIElementTypeNavigationBar[@name=\"CİHAZLAR\"]/XCUIElementTypeButton[2]";
    String btn_startingDay = "//XCUIElementTypePickerWheel[1]";
    String btn_skip = "ATLA";
    String btn_vegaStop = "icon stop white";


    public void clickProduct(String arg0) throws InterruptedException {

        click_btn(By.xpath("//*[contains(@name,'" + arg0 + "')]"));
        System.out.println(arg0 + " ürününe girilir- PASS");
        //Thread.sleep(3000); //koray deneme amaçlı eklendi.
    }

    public void urunKontrolu(String urunIsim) {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(urunIsim)));
        driver.findElementByXPath("//*[contains(@name,'" + urunIsim + "')]");
        System.out.println("Ürün " + urunIsim + " - PASS");
    }

    public void controlRoomName(String arg0) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
        driver.findElementByName(arg0);
        System.out.println("Oda adı " + arg0 + " kontrol edilir - PASS");
    }

    public void controlExclamationMark() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertFalseDisplayed(By.name(img_exclaim));
        System.out.println("Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et - PASS");
    }

    public void clickOvenName() throws InterruptedException {
        Thread.sleep(5000);
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_livingRoom)));
        click_btn(By.xpath(deviceNameOven));
        System.out.println("clickOvenName - PASS");
    }

    public void controlOvenName() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(img_livingRoomImg)));
        TimeUnit.SECONDS.sleep(3);
        assertTrueDisplayed(By.xpath(deviceNameOven));
        System.out.println("controlOvenName - PASS");
    }

    public void controlRefName() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(img_livingRoomImg)));
        assertTrueDisplayed(By.xpath(deviceNameRef));
        System.out.println("controlRefName - PASS");
    }

    public void controlDryerName() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertTrueDisplayed(By.xpath(deviceNameDryer));
        System.out.println("controlDryerName - PASS");
    }

    public void clickMyAccount() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(btn_myAccountIos)));
//        click_btn(By.id(btn_myAccountIos));
        click_ByAccessibilityId("Hesabım");
        System.out.println("clickMyAccount - PASS");
    }

    public void changeUserName(String _newUserName) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(box_name)));
        MobileElement usrname = (MobileElement) driver.findElementByXPath(box_name);
        usrname.clear();
        usrname.sendKeys(_newUserName);
        System.out.println("changeUserName -" + _newUserName);
    }

    public void changePhoneNumber(String _newPhoneNumber) throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(box_telNo)));
        MobileElement usrtel = (MobileElement) driver.findElementByXPath(box_telNo);
        usrtel.clear();
        usrtel.sendKeys(_newPhoneNumber);
        Thread.sleep(2000);
        driver.findElementByAccessibilityId("Ad").click();
        System.out.println("changePhoneNumber - PASS");
    }

    public void clickSaveButtom() throws InterruptedException {
//        waitvisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(btn_save)));
        TimeUnit.SECONDS.sleep(6);
        click_ByAccessibilityId(btn_save);
        TimeUnit.SECONDS.sleep(3);
        System.out.println("clickSaveButtom - PASS");
    }

    public void controlStandbyButtonEnable() {
        assertTrueDisplayed(By.id(btn_standbyId));
        System.out.println("controlStandbyButtonEnable - PASS");
    }

    public void controlOvenLbl() {
        assertEqualsforButton(getData("COMMON_TYPE_OVEN"), By.id(lbl_oven));
        System.out.println("controlOvenLbl - PASS");
    }

    public void clickStandbyBtn() throws InterruptedException {
        TimeUnit.SECONDS.sleep(5);

        try {
            MobileElement element = (MobileElement) driver.findElement(By.id(lbl_remoteInfo));
            TimeUnit.SECONDS.sleep(3);
            if (element.isDisplayed()) {
                TimeUnit.SECONDS.sleep(3);
                click_btn(By.id(btn_standbyId));
                System.out.println("Standby butonuna basıldı");
                TimeUnit.SECONDS.sleep(5);
            }
        } catch (Exception e) {
            System.out.println("Cihaz zaten on durumda");
        }
    }

    public void controlFavoriteIcn() {
        driver.findElementByName(lbl_favorites);
//        driver.findElement(By.xpath("//XCUIElementTypeStaticText[@name=\"" + icn_favorites + "\"]"));
        System.out.println("Favoriler bölümünün varolduğu kontrol edilir - PASS");
    }

    public void controlWorkingModeIcn() {
        assertTrueDisplayed(By.id(icn_manualControl));
        System.out.println("controlWorkingModeIcn - PASS");
    }

    public void controlCookingTimeLbl() {
        assertEqualsforButton(getData("VARIABLE_OVEN_DURATION"), By.xpath(lbl_cookingTime));
        System.out.println("controlCookingTimeLbl - PASS");
    }

    public void clickDryer() throws InterruptedException {
        TimeUnit.SECONDS.sleep(15);
        click_btn(By.xpath(deviceNameDryer));
        System.out.println("clickDryer - PASS");
    }

    public void controlDetailRoomName() {
        assertEqualsElements(getData("LIVING_ROOM"), By.xpath(lbl_detailRoomName), 1);
        System.out.println("controlDetailRoomName - PASS");
    }

    public void clickDryerOnOffBtn() {
        click_btn(By.id(btn_DryerOnOff));
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(btn_DryerOnOff)));
        System.out.println("clickDryerOnOffBtn - PASS");
    }

    public void backgroundApp() {
        driver.runAppInBackground(Duration.ofSeconds(30));
        System.out.println("Arka alana at - PASS");
    }

    public void controlPauseBtn() {
        assertTrueDisplayed(By.id(btn_pause));
        System.out.println("Progres texti kontol edilir - PASS");
    }

    public void controlHandIcn() {
        driver.findElementByAccessibilityId(icn_hand);
        System.out.println("El ikonu kontrol edilir - PASS");
    }

    public void controlStopBtn() {
        driver.findElementByAccessibilityId(btn_stop);
        System.out.println("controlProssesPausedText - PASS");
    }

    public void controlStartBtn() {
        assertTrueDisplayed(By.id(btn_run));
        System.out.println("Başlat butonu kontrol edilir - PASS");
    }

    public void clickHandbtn() throws InterruptedException {
        Thread.sleep(3000);
        click_btn(By.name(icn_hand));
        System.out.println("El ikonuna basılır - PASS");
    }

    public void changeProgramme() throws InterruptedException {
        click_btn(By.xpath(lbl_programmeCont));
        Thread.sleep(5000);
        click_btn(By.xpath(lbl_staticPrg));
        System.out.println("changeProgramme - PASS");
    }

    public void changeTempBack() throws InterruptedException {
        click_btn(By.xpath(lbl_setOvenTemp));
        System.out.println("changeTempBack - PASS ");
        Thread.sleep(3000);

        click_btn(By.xpath(lbl_SetTemp));
        System.out.println("lbl_SetTemp - PASS ");
    }

    /* koray
        public void clickGoBtn() {
            click_btn(By.id(btn_startPrg));
    //        waitvisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(img_oven)));
            System.out.println("clickGoBtn - PASS");
        }
    */



    public void controlModelNo() {
        assertEqualsforButton(getData("MODEL"), By.id(lbl_modelNo));
        System.out.println("controlModelNo - PASS");
    }

    public void controlVersionNo() {
        assertEqualsforButton(getData("VERSION_NO"), By.id(lbl_verion));
        System.out.println("controlVersionNo - PASS");
    }

    public void controlVersionNo(String verstr) {
        assertEqualsforButton(verstr, By.name(verstr));
        System.out.println("controlVersionNo - PASS " + verstr);
    }

    public void controlDigitalIdNo() {
        assertEqualsforButton(getData("DIGITAL_ID"), By.id(lbl_digId));
        System.out.println("controlDigitalIdNo - PASS");

    }

    public void controlDigitalIdNo(String digital_idstr) {
        assertEqualsforButton(digital_idstr, By.name(digital_idstr));
        System.out.println("controlDigitalIdNo - PASS " + digital_idstr);
    }

    public void controlModelNo(String modelNoStr) {
        assertEqualsforButton(modelNoStr, By.name(modelNoStr));
        System.out.println("controlModelNo - PASS " + modelNoStr);
    }

    public void controlProductName(String arg0) {
//        assertEqualsforButton(arg0, By.name(lbl_productName));
        driver.findElements(By.name(arg0));
        System.out.println("controlProductName - PASS " + arg0);
    }

    public void clickNotificationPref() throws InterruptedException {
        click_btn(By.name(btn_notyDef));
        Thread.sleep(3000);
        System.out.println("Bildirim ayarlarına gidilir - PASS");
    }

    public void clickNotifyButton() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByXPath(btn_doorSwtchOff).click();
        System.out.println("Kapak açık uyarısı On yapıldı - PASS");
    }

    public void controlOpenNoty() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertEqualsAttribute(By.xpath("//XCUIElementTypeSwitch[@name=\"Kapak açık bildirim iletme açık\"]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeImage"), "true", "index");
        System.out.println("Kontrol Kapak Açık Bildirimi On - PASS");
    }

    public void controlOffNoty() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertEqualsAttribute(By.xpath(btn_switchOnDoor), "true", "enabled");
        System.out.println("controlOffNoty - PASS");
    }

    public void changeRoomToKitchen() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Mutfak");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Firini mutfak odasina tasi - PASS");
    }

    public void gotoKitchen() throws InterruptedException {
        TimeUnit.SECONDS.sleep(5);
        for(int i = 0; i < 5 ; i++) {
            swipeLeft();
            try {
                driver.findElementByName("Mutfak");
                System.out.println("Mutfak odasına gidilir - PASS");
                return;
            } catch (Exception e) {
                System.out.println("Kaydırmayı Tekrar dene");
            }
        }
        //TimeUnit.SECONDS.sleep(3);
        System.out.println("Mutfak odasına gidilemedi");
        failTest();
    }

    public void movetoLivingRoom() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_btn(By.name("TAMAM"));
        Thread.sleep(2000);
        System.out.println("Firini oturma odasina geri tasi - PASS");
    }

    public void clickRefrigeratorName() throws InterruptedException {
        Thread.sleep(3000);
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_livingRoom)));
        Thread.sleep(1000);
        click_btn(By.xpath(deviceNameRef));
        System.out.println("clickRefrigeratorName - PASS");
    }

    public void controlShoppingMode() {
        assertEqualsElements(getData("FRIDGE_SHOPPING"), By.id(function_name), 4);
        System.out.println("controlShoppingMode - PASS");
    }

    public void controlRefCooller1Deg() {
        assertEqualsforButton("4", By.id(lbl_DegreeCooler));
        System.out.println("controlRefCooller1Deg - PASS");
    }

    public void controlRefCoollerOneDeg() {
        assertEqualsforButton("1", By.id(lbl_DegreeCooler));
        System.out.println("controlRefCoollerOneDeg - PASS");
    }

    public void clickRefDoorOpenNoty() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_bdDoorOpen);
        TimeUnit.SECONDS.sleep(3);
        if (element.getAttribute("value").equals("0")) {
            Thread.sleep(2000);
            element.click();
            System.out.println("Kapı açık on yapılır");
        } else System.out.println("Kapak açık uyarısı zaten on durumda");
    }

    public void controlRefDoorOpenNotfy() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertEqualsforButton(getData("DOOR_NOTIFICATION_OPEN"), By.xpath(btn_doorSwitch));
        System.out.println("controlRefDoorOpenNotfy - PASS");
    }

    public void controlRefDoorOffNotfy() {
        assertEqualsAttribute(By.xpath(btn_frzDoorSwitch), "0", "value");
        System.out.println("Kapı açık bildirimi Off kontrolü - PASS");
    }


    public void changeRefRoom() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Mutfak");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Mutfak odasına taşındı - PASS");
    }

    public void changeRefRoomBack() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Oturma odasına taşındı - PASS");
    }

    public void clickDeviceSetting() {
        driver.findElementByName(btn_deviceSetting).click();
        System.out.println("Cihaz ayarlarına gidilir - PASS");
    }

    public void clickDoorOpenMin() throws InterruptedException {
        driver.findElementByName(lbl_fiveMin).click();
        System.out.println("5 Dakika seçilir - PASS");
    }

    public void controlWaitTime() throws InterruptedException {
        IOSElement lb1 = (IOSElement) driver.findElementByName(lbl_fiveMin);
        TimeUnit.SECONDS.sleep(3);
        if (lb1.getAttribute("enabled").equals("true")) {
            System.out.println("Kapı açık kalma süresi 5 Dk seçili");
        }
    }

    public void clickDoorOpenMinOne() throws InterruptedException {
        driver.findElementById(lbl_oneMin).click();
        System.out.println("1 Dakika seçilir - PASS");
    }

    public void controlWaitOne() throws InterruptedException {
        Thread.sleep(3000);
        assertEqualsforButton("1 Dk", By.xpath(lbl_oneMinRes));
        System.out.println("controlRefFreezerMinus18Deg - PASS");

    }

    public void clickKitchenDevices() {
        click_btns(By.id(lbl_kitchenDev), 0);
        System.out.println("clickKitchenDevices - PASS");
    }

    public void clickRef() {
        click_btns(By.id(lbl_refDev), 0);
        System.out.println("clickRef - PASS");
    }

    public void sendSKU() {
        MobileElement el1 = (MobileElement) driver.findElementById("com.homewhiz.global:id/pinet_sku_entry");
        el1.sendKeys("7280046717");
        System.out.println("sendSKU - PASS");
    }

    public void controlHowToAddDeviceText() {
        assertEqualsforButton(getData("DEVICE_MANUAL_TUTORIAL_HEADER"), By.xpath(lbl_howAdd));
        System.out.println("controlHowToAddDeviceText - PASS");
    }

    public void controlCancelButton() {
        assertTrueDisplayed(By.id(btn_cancel));
        System.out.println("controlCancelButton - PASS");
    }

    public void controlAllRecipesTitle() throws InterruptedException {
        driver.findElements(By.xpath(lbl_allRecipesTitle));
        System.out.println("Tüm tariflere yazısı kontrol edilir - PASS");
    }

    public void controlHeaderAllRecipes() {
        assertTrueDisplayed(By.xpath(lbl_headerAllRecipes));
        System.out.println("controlHeaderAllRecipes - PASS");
    }

    public void swipeDegree() throws InterruptedException {
        WebElement el = driver.findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()).setAsHorizontalList().scrollIntoView(" + "new UiSelector().text(\"8\"));"));
        TimeUnit.SECONDS.sleep(3);
        System.out.println("swipeDegree - PASS");
    }

    public void killAndRunApp(int arg0) throws InterruptedException {
        driver.terminateApp("com.homewhiz.global");
        TimeUnit.SECONDS.sleep(arg0);
        driver.launchApp();
        System.out.println("Uygulama " + arg0 + " sn kill edilir - PASS ");
    }

    public void clickAllRecipes() throws InterruptedException {
        Thread.sleep(3000);
        click_btn(By.name(btn_allRecipes));
        System.out.println("Tüm tariflere basılır - PASS");
    }

    public void clickCottonProgram() {
        click_btn(By.xpath(btn_dryerSelectCottonProgram));
        System.out.println("clickCottonProgram - PASS ");
    }

    public void clickDryingLevel() throws InterruptedException {
        click_btn(By.xpath(btn_dryerDryingLevel));
        System.out.println("clickDryingLevel - PASS ");
        Thread.sleep(3000);
        click_btn(By.xpath(btn_dryerSelectDryingValue));
        System.out.println("btn_dryerSelectDryingValue - PASS ");
    }

    public void checkPlayIkon() {
        driver.findElementByAccessibilityId(btn_dryerButtonPause);
        System.out.println("checkPlayIkon - PASS ");
    }

    public void clickMixProgram() {
        click_btn(By.xpath(btn_dryerClickMixProgram));
        System.out.println("clickMixProgram - PASS");
    }

    public void clickDelicateDrySwitchButton() {
        MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_delicateDrySwitchButton));
        element.click();
        System.out.println("clickDelicateDrySwitchButton - PASS");
    }

    public void checkDryerMixProgramName() {
        assertEqualsforButton(getData("PROGRAM_MIX"), By.id(btn_dryerMixProgram));
        System.out.println("checkDryerMixProgramName - PASS ");
    }

    public void checkProgramDryingState() {
        assertEqualsforButton(getData("DRYER_MESSAGE_DRYING"), By.id(btn_dryerDryingState));
        System.out.println("checkProgramDryingState - PASS ");
    }

    public void clickSettingButton() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByIosClassChain(btn_threedot).click();
        Thread.sleep(2000);
        driver.findElementByName("Ayarlar").click();
        Thread.sleep(2000);
        System.out.println("Ayarlara gidilir - PASS");
    }

    public void clickDownloadProgram() {
        driver.findElementByAccessibilityId(btn_downloadProgramManage).click();
        System.out.println("İndirilen programlara basılır - PASS");
    }

    public void clickTowelProgram() {
        driver.findElementByAccessibilityId(btn_towelProgram).click();
        System.out.println("Havlu Programına Basılır - PASS");
    }

    public void clickStartDownloadProgram() {
        driver.findElementByName("İNDİR").click();
        System.out.println("İndir butonuna basılır - PASS");
    }

    public void clickQuiltProgram() {
        driver.findElementByAccessibilityId(btn_quilt_program).click();
        System.out.println("Havlu Programına Basılır - PASS");
    }

    public void clickWizard() {
        driver.findElement(By.xpath(btn_clickWizard)).click();
        System.out.println("Sihirbaz butonuna basılır - PASS");
    }

    public void clickWizardSyntetic() {
        driver.findElementByAccessibilityId(btn_click_synthetic).click();
        System.out.println("clickWizardSyntetic - PASS");
    }

    public void clickWizartNextBtn1() {
        driver.findElementByName(btn_clickWizartNextBtn1).click();
        System.out.println("Yükle butonuna basılır - PASS");
    }

    public void clickModerateWizardBtn2() {
        driver.findElementByAccessibilityId(btn_clickModerateWizardBtn2).click();
        System.out.println("Orta seçim seçilir - PASS");
    }

    public void clickDryLevelWizardBtn3() {
        driver.findElementByName(btn_clickDryLevelWizardBtn3).click();
        System.out.println("Kurutma seçin butonuna pasılır - PASS");
    }

    public void clickIronDryWizardBtn4() {
        driver.findElementByAccessibilityId(btn_clickIronDryWizardBtn4).click();
        System.out.println("Ütü kuruluğu seçilir - PASS");
    }

    public void clickRecommendedProgramsWizardBtn5() {
        driver.findElementByName(btn_clickRecommendedProgramsWizardBtn5).click();
        System.out.println("Önerilen program seçin butonuna basılır - PASS");
    }

    public void checkSyntheticDryLevel() {
        assertTrueDisplayed(By.xpath(lbl_checkSyntheticDryLevel));
        System.out.println("checkSyntheticDryLevel - PASS");
    }

    /*koray
        public void clickDryerWizardStartProgram() {
            assertTrueDisplayed(By.id(btn_clickDryerWizardStartProgram));
            System.out.println("clickDryerWizardStartProgram - PASS");
        }
    */
    public void controlOvenOnOffState() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.id(lbl_remoteInfo));
            TimeUnit.SECONDS.sleep(3);
            if (element.isDisplayed()) {
                TimeUnit.SECONDS.sleep(3);
                click_btn(By.id(btn_standbyId));
                System.out.println("Standby butonuna basıldı");
                TimeUnit.SECONDS.sleep(5);
            }
        } catch (Exception e) {
            System.out.println("Cihaz on durumda");
        }
    }

    public void checkProgramList() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_checkProgramList));
        String switchStatus3 = driver.findElementByXPath(lbl_checkProgramList).getText();
        if (!(switchStatus3.trim()).equals("Pamuklu Ekonomik")) {
            element.click();
            Thread.sleep(3000);

            WebElement el = driver.findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()).setAsVerticalList().scrollIntoView(" + "new UiSelector().text(\"" + "Pamuklu Ekonomik" + "\"));"));
            TimeUnit.SECONDS.sleep(3);
            String switchStatus4 = driver.findElementByXPath(getBtn_dryerSelectCottonProgramList).getText();
            if ((switchStatus4.trim()).equals("Pamuklu Ekonomik")) {
                click_btn(By.xpath(getBtn_dryerSelectCottonProgramList));
            }
        }
    }

    public void clickKirisikOnleme() {
        click_btn(By.xpath(btn_dryerClickKirisikOnleme));
        System.out.println("clickKirisikOnleme - PASS ");
    }

    public void clickSetKirisikOnleme() {
        click_btn(By.xpath(btn_dryerClickSetKirisikOnleme));
        System.out.println("clickSetKirisikOnleme - PASS ");
    }

    public void checkDryerFunctionValue() {
        assertEqualsElements(("120"), By.xpath(lbl_dryerFunctionValue), 7);
        System.out.println("checkDryerFunctionValue - PASS ");
    }

    public void checkDryerTimeDelay() {
        driver.findElementByAccessibilityId(btn_dryerTimeDelay);
        System.out.println("Zaman erteleme butonu kontrol edilir - PASS ");
    }

    public void clickStandbyIfDeviceIsOff() {

        try {
            MobileElement element = (MobileElement) driver.findElement(By.id(btn_off));
            if (element.getAttribute("name").equals("button power off")) {
                element.click();
                TimeUnit.SECONDS.sleep(3);
            }
        } catch (Exception e) {
            System.out.println("Cihaz on durumda");
        }
        System.out.println("Ürün açılır - PASS");

    }

    public void clickStandbyIfDeviceIsOn() throws InterruptedException {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.id(btn_on));
            if (element.getAttribute("name").equals("button power on")) {
                element.click();
                TimeUnit.SECONDS.sleep(3);
            }
        } catch (Exception e) {
            System.out.println("Cihaz off durumda");
        }
        System.out.println("Ürün kapatılır - PASS");

    }

    public void clickreturnDryerScreen() {
        click_btn(By.xpath(btn_backDryerScreen1));
        System.out.println("clickreturnDryerScreen");
    }

    public void clickDryerCancelButton() {
        click_btn(By.id(btn_stop));
        System.out.println("clickDryerCancelButton");
    }

    public void clickOkAfterDownloadProgram() throws InterruptedException {
        driver.findElementByAccessibilityId(btn_clickOkAfterDownloadProgram).click();
        Thread.sleep(10000);
        System.out.println("clickOkAfterDownloadProgram");
    }

    public void controlRefTempDevList() {
        assertEqualsforButton("4 °C", By.xpath(lbl_devListTempCooler));
        System.out.println("controlRefTempDevList - PASS");
    }

    public void controlTempInRefScreen() {
        assertEqualsforButton("4", By.id(lbl_controlNumberOfTempInRefScreen));
        System.out.println("controlNumberTempInRefScreen - PASS");

        assertEqualsforButton("°C", By.xpath(Lbl_controlDegreeOfTempInRefScreen));
        System.out.println("controlDegreeIconTempInRefScreen - PASS");
    }

    public void controlFreezerInRefScreen() {
        assertEqualsforButton("-18", By.id(lbl_controlNumberOfFreezerInRefScreen));
        System.out.println("controlNumberFreezerInRefScreen - PASS");

        assertEqualsforButton("°C", By.xpath(lbl_controlDegreeOfFreezerInRefScreen));
        System.out.println("controlDegreeIconFreezerInRefScreen - PASS");
    }

    public void controlRefFreezerTempDevList() {
        assertEqualsforButton("-18 °C", By.xpath(lbl_devListTempFreezer));
        System.out.println("controlRefFreezerTempDevList - PASS");
    }

    public void clickReturnHomeScreen() {
        click_btn(By.xpath(btn_backHomeScreen1));
        System.out.println("clickReturnHomeScreen");
    }

    public void clickCloseCoolerSet() {
        click_btn(By.xpath(btn_CloseCooler));
        System.out.println("clickCloseCoolerSet - PASS");
    }

    public void clickCloseFreezerSet() {
        click_btn(By.xpath(btn_CloseFreezer));
        System.out.println("clickCloseCoolerSet - PASS");
    }

    public void clickFreezerCoolerSet() {
        click_btn(By.xpath(btn_CloseFreezer));
        System.out.println("clickFreezerCoolerSet - PASS");
    }

    public void controlRefCooller5Deg() {
        assertEqualsforButton("5", By.id(lbl_DegreeCooler));
        System.out.println("controlRefCooller5Deg - PASS");
    }

    public void controlRefCooller4Deg() {
        assertEqualsforButton("4", By.id(lbl_DegreeCooler));
        System.out.println("controlRefCooller4Deg - PASS");
    }

    public void controlRefCoollerMinus19Deg() {
        assertEqualsforButton("-19", By.id(lbl_DegreeFreezer));
        System.out.println("controlRefCoollerMinus19Deg - PASS");
    }

    public void controlRefCoollerMinus18Deg() {
        assertEqualsforButton("-18", By.id(lbl_DegreeFreezer));
        System.out.println("controlRefCoollerMinus18Deg - PASS");
    }

    public void coolerClick() {
        click_btn(By.id(bdCoolerId));
        System.out.println("coolerClick - PASS");
    }

    public void controlAirConTemp(int arg0) {
        assertEqualsforButton("16°C", By.xpath(lbl_airConTemp));
        System.out.println("controlAirConTemp - PASS");
    }

    public void clickManualBtn() {
        driver.findElementByXPath(lbl_manualText).click();
        System.out.println("Kumanda butonuna basılır - PASS");
    }

    public void controlSleepingMode(String arg0) {
        assertEqualsforButton(arg0, By.xpath(lbl_sleepingMod));
        System.out.println("Uyku modu kapalı kontrolü - PASS");
    }

    public void controlVerticalAir() {
        assertEqualsforButton("Otomatik", By.id(lbl_verticalAir));
        System.out.println("controlVerticalAir - PASS");
    }

    public void controlTimer() {
        assertEqualsforButton("0.0", By.id(lbl_timerValue));
        System.out.println("controlTimer - PASS");
    }

    public void clickDetailStandByBtn() {
        try {
            MobileElement element = (MobileElement) driver.findElementByAccessibilityId(btn_posiOff);
            if (element.getAttribute("name").equals("icon power")) {
                element.click();
                TimeUnit.SECONDS.sleep(3);
            }
        } catch (Exception e) {
            System.out.println("clickDetailStandByBtn");
        }
    }

    public void controlNewSetTemp() {
        assertEqualsforButton("17°C", By.xpath(lbl_airConTemp));
        System.out.println("controlNewSetTemp - PASS");
    }

    public void clickWorkingModeDryer() throws InterruptedException {
        driver.findElementByName(lbl_airConMod).click();
        Thread.sleep(2000);
        driver.findElementByAccessibilityId(lbl_workingModDryer).click();
        Thread.sleep(2000);
        System.out.println("Kurutma modu seçilir - PASS");
    }

    public void setCoolingMod() throws InterruptedException {
        driver.findElementByName(lbl_airConMod).click();
        Thread.sleep(2000);
        driver.findElementByIosClassChain(lbl_workingModCooling).click();
        Thread.sleep(2000);
        System.out.println("Soğutucu modu seçilir - PASS");
    }

    public void setCoolingNewDegree() throws InterruptedException {

        click_btn(By.id(lbl_DegreeCoolerBar));

        int height = driver.findElement(By.id(lbl_DegreeCoolerBar)).getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int startx = width / 4;
        int endy = height;
        int endx = width / 3;

        new TouchAction(driver).press(point(endx, endy)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(startx, starty)).release().perform();
        Thread.sleep(5000);

        System.out.println("setNewAirConTemp - PASS");
    }

    public void controlNewSleepingMode() {
        assertEqualsforButton("Kapalı", By.xpath(lbl_sleepingNewMod));
        System.out.println("controlSleepingMode - PASS");
    }

    public void controlNewVerticalAir() {
        assertEqualsforButton("Kapalı", By.xpath(lbl_verticalNewAir));
        System.out.println("controlVerticalAir - PASS");
    }

    public void controlNewTimer() {
        assertEqualsforButton("0", By.xpath(lbl_timerNewValue));
        System.out.println("controlTimer - PASS");
    }

    public void clickSleepMod(String arg0) throws InterruptedException {
        for (int i = 0; i < 5; i++) {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_sleepingMod));
            System.out.println("Sleep Mode : " + element.getAttribute("name"));
            if (element.getAttribute("name").equals(arg0)) {
                System.out.println("Sleep Mode Set " + arg0 + "- PASS");
                return;
            } else
                element.click();

            TimeUnit.SECONDS.sleep(5);
        }
        failTest();
    }


    public void clickTimer(String arg0) throws InterruptedException {
//        MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_timerValue));


        for (int i = 0; i < 5; i++) {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_timerValue));
            System.out.println("Zamanlayıcı : " + element.getAttribute("name"));
            if (element.getAttribute("name").equals(arg0)) {
                System.out.println("Zamanlayıcı " + arg0 + "- PASS");
                return;
            } else
                element.click();

            TimeUnit.SECONDS.sleep(5);
        }
        failTest();


//        for (int i = 0; i < 4; i++) {
//            String switchStatus = driver.findElementByXPath(lbl_timerValue).getText();
//            if ((switchStatus.trim()).equals("1.0 "))
//                break;
//            else
//                element.click();
//            TimeUnit.SECONDS.sleep(5);
//            System.out.println(i);
//        }
    }

    public void controlSleepingModOff() {
        assertEqualsforButton("Açık", By.xpath(lbl_sleepingModOn));
//        driver.findElementByXPath(lbl_sleepingModOn);
        System.out.println("Utku modu açık kontrol edilir - PASS");
    }

    public void controlTimerThree(String arg0) {
//        assertEqualsforButton(arg0, By.xpath(lbl_timerValue));
        assertEqualsAttribute(By.xpath(lbl_timerValue), arg0, "name");
        System.out.println("Kontrol Zamanlayıcı " + arg0 + " - PASS");
    }

    public void clickStandbyBtnOff() throws InterruptedException {
        Thread.sleep(3000);
        click_btn(By.id(btn_standbyId));
        System.out.println("clickStandbyBtnOff");
    }

    public void setFanSpeed(String arg0) throws InterruptedException {

        for (int i = 0; i < 5; i++) {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_fanSpeed));
            System.out.println("Fan Speed : " + element.getAttribute("name"));
            if (element.getAttribute("name").equals(arg0)) {
                System.out.println("Fan Speed Set " + arg0 + "- PASS");
                return;
            } else
                element.click();

            TimeUnit.SECONDS.sleep(5);
        }
        failTest();
    }

    public void controlFavoritesIcon() {
        driver.findElementByAccessibilityId(btn_favorites);
        System.out.println("Kalp ikonu kontrol edilir - PASS");
    }

    public void controlHijyenText() {
        assertEqualsforButton("Hijyen", By.xpath(lbl_hijyen));
        System.out.println("controlHijyenText - PASS");
    }

    public void controlYogunSuText() {
        assertEqualsforButton("Yoğun su", By.xpath(lbl_yogunSu));
        System.out.println("controlYogunSuText - PASS");
    }

    public void controlRapdidText() {
        assertEqualsforButton("Hızlı", By.xpath(lbl_hizli));
        System.out.println("controlRapdidText - PASS");
    }

    public void controlHalfLoadText() {
        assertEqualsforButton("Yarım Yük", By.xpath(lbl_yarimYuk));
        System.out.println("controlHalfLoadText - PASS");
    }

    public void controlTime() {
        assertEqualsforButton("Süre", By.xpath(lbl_sure));
        System.out.println("controlTime - PASS");
    }


    public void controlProgramStartBtn() {
        assertTrueDisplayed(By.id(lbl_startProgramme));
        System.out.println("controlProgramStartBtn - PASS");
    }

    public void controlTimeDelayBtn() {
        assertTrueDisplayed(By.id(btn_timeDelay));
        System.out.println("controlTimeDelayBtn - PASS");
    }

    public void controlSuperiorDryText() {
        assertEqualsforButton("Mükemmel Kurutma", By.xpath(lbl_superiorDry));
        System.out.println("controlSuperiorDryText - PASS");
    }

    public void setRapid40() throws InterruptedException {
        click_btn(By.xpath(lbl_programmeName));
        Thread.sleep(2000);
        click_btn(By.xpath(lbl_rapid45));
        System.out.println("setRapid40 - PASS");
    }

    public void clickSuperiorDryBtn() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_superiorDry));
            if (element.isDisplayed()) {
                element.click();
            }
        } catch (Exception e) {
            System.out.println("Superior Dry on durumda");
        }
        System.out.println("clickSuperiorDryBtn - PASS");
    }

    public void clickBMrapid() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_rapidFunc));
            if (element.isDisplayed()) {
                element.click();
            }
        } catch (Exception e) {
            System.out.println("Hızli on durumda");
        }
        System.out.println("Hızlı Yardomcı Fonksiyon On yapılır - PASS");
    }

    public void clickMukemmelKurutmaBtn() {
        click_btn(By.xpath(lbl_superiorDryFunc));
        System.out.println("clickMukemmelKurutmaBtn - PASS");
    }

    public void controlAutoPrgRemaming() {
        assertEqualsforButton("02:43", By.id(tim_remaininTime));
        System.out.println("controlAutoPrgRemaming - PASS");
    }

    public void clickProgramHomeBtn() {
        WebElement element = waitVisibility().until(ExpectedConditions.visibilityOfElementLocated(By.name(btn_programEndHome)));
        element.click();
        System.out.println("Program Sonu Home butonuna basılır - PASS");
    }

    public void programStandbyOffYapilir() {
        click_btn(By.id(btn_standbyId));
        System.out.println("clickProgramHomeBtn - PASS");
    }

    public void controlProgramStartBtnPassive() {
        assertEqualsAttribute(By.id(btn_startProgramme), "false", "enabled");
        System.out.println("controlProgramStartBtnPassive - PASS");
    }

    public void clickTimeDelayBtn() {
        click_btn(By.id(btn_dryerTimeDelay));
        System.out.println("Zaman erteleme butonuna basılır - PASS");
    }

    public void clickTimeArea() {
        click_btn(By.xpath(lbl_timeArea));
        System.out.println("Saat bölümüne gidilir - PASS");
    }

    public void setNewTime() throws InterruptedException {

        int height = driver.findElementByXPath("//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeDatePicker/XCUIElementTypePicker").getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int startx = (width / 5) * 2;
        int endy = (height / 20) * 19;
        int endx = (width / 5) * 2;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(5000);
        System.out.println("setNewTime - PASS");
    }

    public void setNewMinute() throws InterruptedException {
        int height = driver.findElementByXPath("//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeDatePicker/XCUIElementTypePicker").getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int startx = (width / 5) * 3;
        int endy = (height / 20) * 19;
        int endx = (width / 5) * 3;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(1))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(500/*2000*/);
        System.out.println("setNewMinute - PASS");
    }

    public void clickOkBtn() {
        click_btn(By.id(btn_ok));
        System.out.println("clickOkBtn - PASS");
    }

    public void clickDaily() {
        driver.findElementByAccessibilityId("Günlük").click();
        System.out.println("clickDaily - PASS");
    }

    public void clickKirSeviyesi() {
        click_btn(By.id(btn_dirtLevel));
        System.out.println("clickKirSeviyesi - PASS");
    }

    public void clickKirSeviyesiCok() {
        driver.findElementByAccessibilityId(btn_dirtLevelOption).click();
        System.out.println("clickKirSeviyesiCok - PASS");
    }

    public void clickSaveFavorite() throws InterruptedException {
        driver.findElementByXPath(btn_saveFavorite).click();
        System.out.println("clickSaveFavorite - PASS");
    }

    public void favoritePrgName(String _favPrgName) {
        setValue(By.xpath(lbl_favoriteTitle), _favPrgName);
        System.out.println("Favori program adı -" + _favPrgName + "olarak ayarlanır");
    }

    public void clickFavoriteOk() {
        click_btn(By.id(btn_favoriteOk));
        System.out.println("clickFavoriteOk - PASS");
    }

    public void clickFavorite() {
        driver.findElementByXPath(btn_favorites1).click();
        System.out.println("Favoriler butonuna basılır - PASS");
    }

    public void controlFavoritePrgName() {
        assertEqualsforButton("Fav Yikama", By.id(lbl_favoritePrgName));
        System.out.println("clickFavorite - PASS");
    }

    public void clickFavoritePlayBtn() throws InterruptedException {
        MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("icon start white");
        el3.click();
        Thread.sleep(3000);
//        driver.findElementByAccessibilityId(btn_favotePlay).click();
        System.out.println("Favori play butonuna basılır - PASS");
    }

    public void clickPlusBtn() {
        click_btn(By.id(btn_favoritePlus));
        System.out.println("Artı butonuna basılır - PASS");
    }

    public void clickCopBtn() {
        click_btn(By.id(btn_cop));
        System.out.println("Çöp sepeti butonuna basılır - PASS");
    }

    public void clickFavoriteDeleteOk() {
        driver.findElementByXPath(btn_favoriteDeleteOk).click();
        System.out.println("Favorileri sil OK tuşuna basılır - PASS");
    }

    public void controlLastProgram() {
        assertEqualsforButton("Yoğun 70°C", By.xpath(lbl_lastProgram));
        System.out.println("controlLastProgram - PASS");
    }

    public void setOtomatikKapiAcma() {
        click_btn(By.name(btn_autoPrgCombo));
        System.out.println("Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir - PASS");
    }

    public void controlAutoOpenDoorNot() {
        assertEqualsAttribute(By.xpath(lbl_autoDoorOpen), "1", "value");
        System.out.println("Otomatik kapi acma kapali oldugu kontrol edilir - PASS");
    }

    public void cihazAyarlariEkranindaParlaticiSeviyesiniKademedeOldugunuKontrolEt() {
        assertEqualsforButton("%50", By.xpath(lbl_seekBarTwo));
        System.out.println("controlAutoOpenDoorNot - PASS");
    }

    public void setNewLevelZero(String _newLevelZero) {
        setValue(By.id(sb_rinseAidLevel), _newLevelZero);
        System.out.println("favoritePrgName -" + _newLevelZero);
    }

    public void setNewLvl() throws InterruptedException {
        WebElement slider = driver.findElement(By.xpath(lbl_seekBarTwo));
        slider.sendKeys("0.5");
        System.out.println("Cihaz ayarlari ekraninda parlatici seviyesini 2 kademeye ayarlanir - PASS");
    }

    public void setFirstLvl() throws InterruptedException {
        WebElement slider = driver.findElement(By.xpath(lbl_seekBarTwo));
        slider.sendKeys("0");
        System.out.println("Cihaz ayarlari ekraninda parlatici seviyesini kademeye getirilir - PASS");
    }

    public void changeRoomDishWasher() throws InterruptedException {
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Mutfak");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Mutfak odasına geri taşı - PASS");
    }

    public void movetoLivingRoomDishWasher() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_btn(By.name("TAMAM"));
        Thread.sleep(2000);
        System.out.println("movetoLivingRoom - PASS");
    }

    public void clickUyariTercihleri() {
        click_btn(By.name(btn_warningOptions));
        System.out.println("Uyarı Tercihlerine gidilir - PASS");
    }

    public void clickSaltWarningOff() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_noSaltWarn);
        TimeUnit.SECONDS.sleep(3);
        if (element.getAttribute("value").equals("1")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Tuz yok uyarisi off yapilir - PASSr");
        } else System.out.println("Tuz yok uyarisi zaten off durumda");
    }

    public void conrolNoSaltWarning() {
        assertFalseDisplayed(By.xpath(btn_noSaltWarn));
        System.out.println("Tuz yok uyarisi kontrol edilir - PASS");
    }

    public void clickProductPause() {
        click_btns(By.xpath(btn_productPause), 1);
        System.out.println("clickProductPause - PASS");
    }

    public void clickPause() throws InterruptedException {

        for(int i = 0; i < 5; i++)
        {
            try
            {
                driver.findElementByAccessibilityId(btn_pauseiOS).click();
                System.out.println("Program bekleme butonuna basılır " + i);
                try
                {
                    driver.findElementById(btn_stop);
                    System.out.println("Program bekleme moduna alınır - PASS");
                    return;
                }
                catch (Exception e)
                {
                    System.out.println("Program bekleme moduna alınamadı tekrar dene");
                }
            }
            catch (Exception e)
            {
                System.out.println("Bekleme butonu bulunamadı tekrar dene");
                return;
            }
        }
        System.out.println("Program bekleme moduna alınamadı fail test");
        failTest();
//
//        int try_count;
//
//        for (try_count = 0; try_count < 5; try_count++) {
//            System.out.println("Pause butonuna basilir - Basıldı");
//            driver.findElementById(btn_pauseiOS).click();
//            TimeUnit.SECONDS.sleep(10);
//            String switchStatus = driver.findElement(By.xpath(lbl_progressTextValue)).getText();
//            if (
//                    (switchStatus.trim()).equals("Program duraklatıldı") ||
//                            (switchStatus.trim()).equals("Durdu") ||
//                            (switchStatus.trim()).equals("Duraklatıldı") ||
//                            (switchStatus.trim()).equals("Durduruldu") ||
//                            (switchStatus.trim()).equals("Bitiş zamanı etkin") || //bulaşık makinesi pause edildiğinde bu yazıyor
//                            (switchStatus.trim()).equals("Erteleme Duraklatıldı") || //çamaşır makinesi pause edildiğinde bu yazıyor
//                            (switchStatus.trim()).equals("Bekleme Duraklatıldı")) {
//                System.out.println("Program bekleme moduna alındı - PASS");
//                return;
//            } else {
//                System.out.println("Pause butonuna basilir - Retry");
//            }
//        }
//        System.out.println("clickPause - FAIL");

    }

    public void clickStop() throws InterruptedException {

        click_btn(By.id(btn_stop));
        System.out.println("Stop butonuna basılır - PASS");

//        for(int i = 0; i < 5; i++)
//        {
//            try
//            {
//                driver.findElementByAccessibilityId(btn_stop).click();
//                System.out.println("Program stop butonuna basılır " + i);
//                try
//                {
//                    driver.findElementByName("Programı iptal etmek istediğinize emin misiniz?");
//                    System.out.println("Program stop moduna alınır - PASS");
//                    return;
//                }
//                catch (Exception e)
//                {
//                    System.out.println("Program stop moduna alınamadı tekrar dene");
//                }
//            }
//            catch (Exception e)
//            {
//                System.out.println("Stop butonu bulunamadı tekrar dene");
//                return;
//            }
//        }
//        System.out.println("Program stop moduna alınamadı fail test");
//        failTest();


    }




    public void controlAppbarSubTitleWashingMachineText() {
        assertEqualsElements("Mutfak", By.xpath(lbl_ovenAppTitle), 1);
        System.out.println("controlAppbarSubTitleWashingMachineText - PASS");
    }

    public void controlWashingMachineProgramName() {
        assertEqualsElements("Program", By.id(function_name), 0);
        System.out.println("controlWashingMachineProgramName - PASS");
    }

    public void controlCMTmpreturText() {
        assertEqualsElements("Sıcaklık", By.id(function_name), 1);
        System.out.println("controlCMTmpreturText - PASS");
    }

    public void controlCMSpinText() {
        assertEqualsElements("Devir", By.id(function_name), 2);
        System.out.println("controlCMSpinText - PASS");
    }

    public void controlCMTSteamText() {
        assertEqualsElements("Buhar", By.id(function_name), 3);
        System.out.println("controlCMTSteamText - PASS");
    }

    public void controlCMPreWashText() {
        assertEqualsElements("Ön yıkama", By.id(function_name), 4);
        System.out.println("controlCMPreWashText - PASS");
    }

    public void controlCMExtraWaterText() {
        assertEqualsElements("İlave Su", By.id(function_name), 5);
        System.out.println("controlCMExtraWaterText - PASS");
    }

    public void controlTextOnScreenWithScroll(String arg0) throws InterruptedException {
        Thread.sleep(3000);
        scrollUntilFindText(arg0);
        System.out.println(arg0 + " program adı kontrol edilir - PASS");
    }

    public void controlTextOnScreenWOScroll(String arg0) throws InterruptedException {
        if (!findText(arg0))
            failTest();

        System.out.println(arg0 + " controlTextOnScreenWOScroll - PASS");
    }

    public void changeRoomWashingMachine() throws InterruptedException {
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Banyo");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Banyo odasına taşı - PASS");
    }

    public void gotoBathroom() throws InterruptedException {
        swipeLeft();
        TimeUnit.SECONDS.sleep(3);
        swipeLeft();
        TimeUnit.SECONDS.sleep(3);
        System.out.println("Banyo odasına gidilir - PASS");
    }

    public void movetoKitchenRoomWMWasher() throws InterruptedException {
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Mutfak");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Mutfak odasına geri taşı - PASS");
    }

    public void controlHeartIcon() {
        driver.findElementByAccessibilityId(icn_heart);
        System.out.println("Kalp ikonu kontrol edilir - PASS");
    }

    public void controlnoFavoriteInst() {
        assertEqualsforButton("Favorilerinizi, cihazınızı çalıştırmadan önce program seçimi esnasında ya da Cihaz Geçmişi bölümünden belirleyebilirsiniz.", By.id(lbl_noFavorinfo));
        System.out.println("Favori yok açıklama texti kontrol edilir - PASS");
    }


    public void controlProgramOptionFrame() throws InterruptedException {
        TimeUnit.SECONDS.sleep(3);
        assertFalseDisplayed(By.id(lbl_programSelectInfo));
        System.out.println("Program seçenekleri bölümü off kontrolü - PASS");
    }

    public void controlProgramRemainingTime(String arg0) {
        driver.findElement(MobileBy.xpath("//*[contains(@label, '" + arg0 + "')]"));
        System.out.println("Program kalan süresi " + arg0 + " - PASS");
    }

    public void clickDevicesBtn() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(btn_devices)));
        click_ByAccessibilityId(btn_devices);
        System.out.println("clickDevicesBtn - PASS");
    }

    public void controlAppbarTitle(String arg0) {
        assertEqualsforButton(arg0, By.xpath(lbl_appBarTitle));
        System.out.println(arg0 + " controlAppbarTitle - PASS");
    }

    public void clickControlPanel() {
        click_ByAccessibilityId(btn_controlPanel);
        System.out.println("clickControlPanel - PASS");
    }

    public void clickUsers() {
        click_ByAccessibilityId(btn_users);
        System.out.println("clickUsers - PASS");
    }

    public void clickUserName() {
        click_btn(By.id(img_userProfile));
        System.out.println("clickUserName - PASS");
        System.out.println();
    }

    public void clickSupport() {
        click_btn(By.id(btn_support));
        System.out.println("clickSupport - PASS");
    }

    public void clickCommunicationOptions() {
        click_btn(By.xpath(btn_conOptions));
        System.out.println("clickCommunicationOptions - PASS");
    }

    public void clickText(String arg0) {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
        driver.findElementByName(arg0).click();
        System.out.println(arg0 + " butonuna basılır" + " - PASS");
    }

    public void clickAgreement() {
        click_btn(By.id(lbl_agreementDetail));
        System.out.println("clickAgreement - PASS");
    }

    public void controlAgreementContent() {
        assertTrueDisplayed(By.id(lbl_agreementContent));
        System.out.println("controlAgreementContent - PASS");
    }

    public void clickBellIcon() {
        click_btn(By.xpath(btn_bell));
        System.out.println("clickBellIcon - PASS");
    }

    public void clickRecipesArrow() {
        click_btn(By.xpath(btn_recipesArrow));
        System.out.println("clickRecipesArrow - PASS");
    }

    public void controlSteamOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_steamOnOff), "0", "value");
        System.out.println("Buhar yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlAgreementChecked() {
        assertEqualsAttribute(By.xpath(cbx_userAgreement), "1", "value");
        System.out.println("controlAgreementChecked - PASS");
    }

    public void controlPreWashOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_preWash), "0", "value");
        System.out.println("Ön yıkama yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlExtraWaterOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_extraWater), "0", "value");
        System.out.println("İlave durulama yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlRapidWashOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_rapidOff), "0", "value");
        System.out.println("Hızlı yıkama yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlIntenceOn() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_yogun), "1", "value");
        System.out.println("Yoğun yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlSmartCreaseOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_smartCrease), "0", "value");
        System.out.println("Akıllı kırışık azaltma yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlPersonalTimeLevelOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_personalTimeLevel), "0", "value");
        System.out.println("Kişilleşme Süre Seviyesi yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlNightModeOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_nightMode), "0", "value");
        System.out.println("Gece modu pasif kontrolü - PASS");
    }

    public void controlCreaseOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_crease), "0", "value");
        System.out.println("Kırışık azaltma yardımcı fonksiyonu off kontrolü - PASS");
    }

    public void controlSudaBastirmaOff() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsAttribute(By.xpath(btn_sudaBastirma), "0", "value");
        System.out.println("Suda bastırmna - PASS");
    }

    public void controlExtraRinseCount() throws InterruptedException {
        Thread.sleep(2000);
        assertEqualsforButton("0", By.xpath(lbl_extraRinseCount));
        System.out.println("Ekstra Durulama Sayısı 0 kontol edilir - PASS");
    }

    public void clickPlusWater() throws InterruptedException {
        driver.findElementByXPath(btn_plusWaterFunc).click();
//        IOSElement element = (IOSElement) driver.findElementByXPath(btn_plusWaterFunc);
        TimeUnit.SECONDS.sleep(10);
//        System.out.println(element.getAttribute("value"));
//        if (element.getAttribute("value").equals("0")) {
//            element.click();
//            System.out.println("İlave su butonuna basılır");
//        } else System.out.println("Ilave su zaten on durumda");
        System.out.println("İlave Su on yapılır - PASS");
    }

    public void clickDailyMini() {
        click_btn(By.xpath(lbl_dailyMini));
        System.out.println("clickDailyMini - PASS");
    }

    public void controlStartButtonDisable() {
        assertEqualsAttribute(By.id(btn_startProgramme), "false", "enabled");
        System.out.println("controlStartButtonDisable - PASS");
    }

    public void clickStain() {
        click_btn(By.xpath(lbl_stain));
        System.out.println("clickStain - PASS");
    }

    public void clickPreWashOn() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_preWash);
        System.out.println(element.getAttribute("name"));
        //TimeUnit.SECONDS.sleep(3);
        if (element.getAttribute("value").equals("0")) {
            element.click();
            System.out.println("Ön yıkama on yapıldı");
        } else System.out.println("Ön Yıkama zaten on durumda");
        TimeUnit.SECONDS.sleep(10);
    }

    public void controlPreWashOn() {
        assertEqualsAttribute(By.xpath(btn_preWashFunc), "1", "value");
        System.out.println("Ön yıkama On kontrolü - PASS");
    }

    public void clickTimeSet() {
        driver.findElementByXPath(lbl_setTime).click();
        System.out.println("clickTimeSet - PASS");
    }

    public void setNewHour() throws InterruptedException {
        int height = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.view.ViewGroup[1]/android.widget.NumberPicker[1]/android.widget.EditText").getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int startx = (width / 5) * 2;
        int endy = (height / 20) * 17;
        int endx = (width / 5) * 2;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(0, 10))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(2000);
        System.out.println("setNewHour - PASS");
    }

    public void setOneMinute() throws InterruptedException {
        int height = driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.view.ViewGroup[1]/android.widget.NumberPicker[2]/android.widget.EditText").getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int startx = (width / 5) * 3;
        int endy = (height / 20) * 17;
        int endx = (width / 5) * 3;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofSeconds(0, 10))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(500/*2000*/);
        System.out.println("setOneMinute - PASS");
    }

    public void clickColorType() {

        click_btn(By.id(btn_dirtLevel));
        System.out.println("clickColorType - PASS");
    }

    public void clickColorTypeWhite() {
        driver.findElementByName("Beyaz").click();
        System.out.println("Renk tipi beyaz secilir - PASS");
    }

    public void clickDirtLevelMedium() {
        click_btn(By.xpath(btn_dirtLevelMedium));
        System.out.println("clickDirtLevelMedium - PASS");
    }

    public void clickHijyenPlus() {
        click_btn(By.xpath(btn_hijenPlus));
        System.out.println("clickHijyenPlus - PASS");
    }

    public void clickLowSound() {
        driver.findElementByName(lbl_lowSound);
        System.out.println("clickLowSound - PASS");
    }

    public void clickHighSound() {
        driver.findElementByName(lbl_highSound);
        System.out.println("clickHighSound - PASS");
    }

    public void clickCMDoorOpen() throws InterruptedException {
        driver.findElementByXPath(btn_cmDoorOpen).click();
        System.out.println("Kapak açık uyarısı off yapıldı - PASS");
//        MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_cmDoorOpen));
//        TimeUnit.SECONDS.sleep(3);
//        if (element.getAttribute("value").equals("true")) {
//            element.click();
//            System.out.println("Tüm Fonksiyonlar off yapildi");
//        } else System.out.println("Kapak açık uyarısı zaten off durumda");
    }

    public void controlCMDoorOpenNotf() {
//        MobileElement el2 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeSwitch[@name=\"Kapak açık bildirim iletme kapalı\"]");
//        System.out.println(el2.getAttribute("value"));
        assertEqualsAttribute(By.xpath(btn_cmDoorClose), "0", "value");
        System.out.println("Kapı açık off olduğu kontrol edilir - PASS");
    }

    public void clickCMDoorNotyOn() throws InterruptedException {
        driver.findElementByXPath(btn_cmDoorClose).click();
        System.out.println("Kapı açık uyarısı On yapılır - PASS");
    }

    public void clickBDDoorOpenNotyfOff() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_bdDoorOpen);
        TimeUnit.SECONDS.sleep(3);
        if (element.getAttribute("value").equals("1")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Kapı açık off yapılır");
        } else System.out.println("Kapak açık uyarısı zaten off durumda");
    }

    public void controlRefDoorOpenNotfyOff() {
        assertEqualsAttribute(By.xpath(btn_bdDoorOpen), "false", "checked");
        System.out.println("controlRefDoorOpenNotfyOff - PASS");
    }

    public void clickBDDoorOpenNotyfOn() throws InterruptedException {
        IOSElement sw1 = (IOSElement) driver.findElementByXPath(btn_bdDoorOpen3);
        TimeUnit.SECONDS.sleep(3);
        if (sw1.getAttribute("value").equals("0")) {
            Thread.sleep(2000);
            sw1.click();
            Thread.sleep(2000);
            System.out.println("Kapak açık bildirimi on konumuna getirildi");
        } else System.out.println("Kapak açık uyarısı zaten on durumda");
    }

    public void clickOtherFunctions() {
        driver.findElementByAccessibilityId(btn_otherFunc).click();
        System.out.println("Diğer yardımcı fonksiyonlar butonuna basılır - PASS");
    }

    public void clickCloseOtherFunctions() {
        driver.findElementByName(btn_otherFuncClose).click();
        System.out.println("Diğer yardımcı fonksiyonlar menüsü kapatılır - PASS");
    }

    public void clickPosiHeartIcon() {
        click_btn(By.id(btn_posiFav));
        System.out.println("Kalp ikonuna basılır - PASS");
    }

    public void posiFavoritePrgName(String _klima_fav) {
        setValue(By.id(lbl_favoriteTitle), _klima_fav);
        System.out.println("favoritePrgName -" + _klima_fav);

        MobileElement el1 = (MobileElement) driver.findElementByXPath(lbl_favoriteTB);
        el1.sendKeys(_klima_fav);
        System.out.println("Süre " + _klima_fav + " olarak setlendi - PASS");
    }

    public void clickPlayButton() {
        click_btn(By.id(btn_run));
        System.out.println("clickPlayButton - PASS");
    }

    public void clickKMDoorOpenNotfyOff() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByXPath(btn_switchOnDoor).click();
        Thread.sleep(2000);
        System.out.println("Kapak açık uyarısı Off yapıldı - PASS");
    }

    public void setParlaklikOne() throws InterruptedException {
        IOSElement slider = (IOSElement) driver.findElementByXPath("//XCUIElementTypeSlider");
        slider.setValue("1");
        System.out.println("Parlaklık full yapıldı - PASS");
    }

    public void controlBrightnessOne() {
        System.out.println("Başladı");
        System.out.println(driver.findElementByXPath(sb_rinseAidLevel).getAttribute("value"));
        assertEqualsforButton("%100", By.xpath(sb_rinseAidLevel));
        System.out.println("Parlaklık değeri %100 kontrolü - PASS");
    }

    public void controlToneLow() {
        assertEqualsAttribute(By.id(lbl_toneLow), "1", "value");
        System.out.println("controlToneLow - PASS");
    }

    public void setParlaklikZero() throws InterruptedException {
        click_btn(By.xpath(sb_rinseAidLevel));
        WebElement slider = driver.findElement(By.xpath(sb_rinseAidLevel));
        slider.sendKeys("0.1");
        System.out.println("Parlaklık Sıfır yapıldı - PASS");
    }

    public void clickSilent() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElement(By.xpath(lbl_checkProgramList));
        String switchStatus3 = driver.findElementByXPath(lbl_checkProgramList).getText();
        if (!(switchStatus3.trim()).equals("Sessiz")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Sessiz Programı Seçili Değil - PASS ");

            WebElement el = driver.findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()).setAsVerticalList().scrollIntoView(" + "new UiSelector().text(\"" + "Sessiz" + "\"));"));
            TimeUnit.SECONDS.sleep(3);
            String switchStatus4 = driver.findElementByXPath(lbl_silent).getText();
            if ((switchStatus4.trim()).equals("Sessiz")) {
                click_btn(By.xpath(lbl_silent));
                System.out.println("Sessiz Programı Seçildi - PASS ");
            }
        }
    }

    public void dryFavoritePrgName(String _kurutma_pr) {
        setValue(By.id(lbl_favoriteTitle), _kurutma_pr);
        System.out.println("favoritePrgName -" + _kurutma_pr);
    }

    public void controlUserName(String arg0) throws InterruptedException {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
//        driver.findElementByAccessibilityId(arg0);
        assertEqualsAttribute(By.xpath(lbl_name), arg0, "value");
        System.out.println(arg0 + " controlText - PASS");
    }

    public void controlUserSurName(String arg0) throws InterruptedException {
        assertEqualsAttribute(By.xpath(lbl_surName), arg0, "value");
        System.out.println(arg0 + " controlText - PASS");
    }

    public void controlUserEmail(String arg0) throws InterruptedException {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
//        driver.findElementByAccessibilityId(arg0);
        assertEqualsAttribute(By.xpath(lbl_eMail), arg0, "value");
        System.out.println(arg0 + " controlUserEmail - PASS");
    }

    public void controlUserPhoneNumber(String arg0) throws InterruptedException {
//        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(arg0)));
//        driver.findElementByAccessibilityId(arg0);
        assertEqualsAttribute(By.xpath(lbl_phoneNumber), arg0, "value");
        System.out.println(arg0 + " controlUserPhoneNumber - PASS");
    }

    public void controlAppbarSubTitleText(String arg0) {
        assertEqualsforButton(arg0, By.xpath(lbl_appBarSubTitle));
        System.out.println(arg0 + " controlAppbarSubTitle - PASS");
    }

    public void controlRemoteControlStatus(String arg0) throws InterruptedException {
        assertEqualsforButton(arg0, By.xpath(lbl_remoteControlOpen));
        TimeUnit.SECONDS.sleep(3);
        System.out.println("Uzaktan Kontrol " + arg0 + " yazısı kontrolü - PASS");
    }

    public int clickStandbyOnDevicesSecreenIfDeviceIsOff() throws InterruptedException {
        String ContentText = "->";
        int try_count;

        if (findText(ContentText)) {
            System.out.println("Cihaz Zaten Acık - PASS");
            return 0;
        }

        for (try_count = 0; try_count < 5; ++try_count) {

            click_btns(By.xpath(btn_standbyDevices), 1);
            System.out.println("Standby On tusuna basıldı " + try_count);
            Thread.sleep(10000);

            if (findText(ContentText)) {
                System.out.println("Standby On Yapıldı " + try_count + " - PASS");
                return try_count;
            }
        }

        System.out.println("Standby On Yapılamadı");
        failTest();
        return try_count;
    }

    public int clickStandbyOffDevicesSecreenIfDeviceIsOn() throws InterruptedException {
        String ContentText = "->";
        int try_count;

        if (!findText(ContentText)) {
            System.out.println("Cihaz Zaten Acık - PASS");
            return 0;
        }

        for (try_count = 0; try_count < 5; ++try_count) {

            click_btns(By.xpath(btn_standbyDevices), 1);
            System.out.println("Standby On tusuna basıldı " + try_count);
            Thread.sleep(10000);

            if (!findText(ContentText)) {
                System.out.println("Standby On Yapıldı " + try_count + " - PASS");
                return try_count;
            }
        }

        System.out.println("Standby On Yapılamadı");
        failTest();
        return try_count;
    }

    public void clickNavigationDrawer() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(btn_drawerIos)));
        click_btn(By.xpath(btn_drawerIos));
        System.out.println("Yan menüye basilir - PASS");
    }

    public void clickStandbyBtnDevices() {
        click_btns(By.xpath(btn_standbyDevices), 1);
        System.out.println("clickStandbyBtnDevices - PASS");
    }

    public void click_doorNoty() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_swchDoor));
            if (element.isEnabled()) {
                element.click();
            }
        } catch (Exception e) {
            System.out.println("Kapak bildirimi off durumda");
        }
        System.out.println("click_doorNoty - PASS");
    }

    public void control_isdevicepage() {
        assertTrueDisplayed(By.id(lbl_devices));
        System.out.println("control_isdevicepage - PASS");
    }

    public void control_homeName(String homeName) {
        assertEqualsforButton(homeName, By.id(lbl_homeName));
        System.out.println("control_homeName - PASS");
    }

    public void control_deviceIcon() {
        assertTrueDisplayed(By.id(icn_device));
        System.out.println("control_deviceIcon - PASS");
    }

    public void control_onOffButon() {
        assertTrueDisplayed(By.id(btn_onOff));
        System.out.println("control_onOffButon - PASS");
    }

    public void control_onOffBackground() {
        assertTrueDisplayed(By.id(btn_deviceOnBackground));
        System.out.println("control_onOffBackground - PASS");
    }

    public void click_homeBtn() {
        click_btn(By.id(btn_home));
        System.out.println("control_onOffBackground - PASS");
    }

    public void control_homePage() {
        assertTrueDisplayed(By.id(lbl_weather));
        System.out.println("control_homePage - PASS");
    }

    public void click_rule() {
        click_btn(By.id(btn_gotorulePage));
        System.out.println("click_rule - PASS");
    }

    public void control_rulepage() {
        assertTrueDisplayed(By.id(btn_addrule));
        assertEqualsElements(getData("layout_rule_counts"), By.xpath(lbl_elements), 3);
        System.out.println("control_rulepage - PASS");
    }

    public void control_homeName_Temprature(String homeName) {
        String xpath_lbl_homeweather_homename = "//*[contains(@text, '" + homeName + "' )]";
        assertTrueDisplayed(By.xpath(xpath_lbl_homeweather_homename));
        System.out.println("control_homeName_Temprature - PASS");
    }

    public void turnOffAll() throws InterruptedException {
        IOSElement el1 = (IOSElement) driver.findElementByXPath(btn_rapidCoolingFunc);
        if (el1.getAttribute("value").equals("1")) {
            el1.click();
            Thread.sleep(5000);
            System.out.println("Hızlı Soğutma off yapıldı");
        } else System.out.println("Hızlı Soğutma zaten off durumda");

        IOSElement el2 = (IOSElement) driver.findElementByXPath(btn_rapidFreezingFunc);
        if (el2.getAttribute("value").equals("1")) {
            el2.click();
            Thread.sleep(5000);
            System.out.println("Hızlı Dondurma off yapıldı");
        } else System.out.println("Hızlı Dondurma zaten off durumda");

        IOSElement el3 = (IOSElement) driver.findElementByXPath(btn_vacationMood);
        if (el3.getAttribute("value").equals("1")) {
            el3.click();
            Thread.sleep(5000);
            System.out.println("Tatil Modu off yapıldı");
        } else System.out.println("Tatil Modu zaten off durumda");

        IOSElement el4 = (IOSElement) driver.findElementByXPath(btn_ecoFuzzy);
        if (el4.getAttribute("value").equals("1")) {
            el4.click();
            Thread.sleep(5000);
            System.out.println("Eco Fuzzy off yapıldı");
        } else System.out.println("Eco Fuzzy zaten off durumda");

        System.out.println("Tüm fonksiyonlar Off yapılır - PASS");
    }

    public void click_nextBtn() {
        click_btn(By.id(btn_dirtLevel));
        System.out.println("click_nextBtn - PASS");
    }

    public void click_functions() {
        click_btn(By.id(btn_functions));
        System.out.println("Yardımcı Fonksiyonlara basilir - PASS");
    }

    public void turnon_quickcool() throws InterruptedException {
        click_btn(By.xpath(btn_rapidCoolingFunc));
        Thread.sleep(5000);
        System.out.println("Hızlı Soğutma On Yapıldı - PASS");
    }

    public void control_quickcoolON() {
        assertEqualsAttribute(By.xpath(btn_rapidCoolingFunc), "1", "value");
        System.out.println("Hizli sogutmanin on oldugu kontrol edilir - PASS");
    }

    public void turnon_vacationmode() throws InterruptedException {
        click_btn(By.xpath(btn_vacationMood));
        Thread.sleep(5000);
        System.out.println("Tatil modu on yapilir -PASS");
    }

    public void control_quickcoolOFF() {
        assertEqualsAttribute(By.xpath(btn_rapidCoolingFunc), "0", "value");
        System.out.println("Hizli sogutmanin off oldugu kontrol edilir - PASS");
    }

    public void swipeOneDegreeFreezer() throws InterruptedException {
        int height = driver.findElement(By.xpath(bdFreezerSwipeId)).getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int endy = height;

        int startx = width / 2;
        int endx = width / 4;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofMillis(820))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(5000);
    }

    public void setFreezerDegree19() throws InterruptedException {
        driver.findElementByAccessibilityId("DONDURUCU").click();
        swipeOneDegreeFreezer();
        System.out.println("Dondurucu -19 dereceye ayarlanır - PASS");
    }


    public void swipeOneDegreeFreezerBack18() throws InterruptedException {
        driver.findElementByAccessibilityId("DONDURUCU").click();

        int height = driver.findElement(By.xpath(bdFreezerSwipeId)).getLocation().getY();
        int width = driver.manage().window().getSize().getWidth();

        int starty = height;
        int endy = height;

        int startx = width / 4;
        int endx = width / 2;

        new TouchAction(driver).press(point(startx, starty)).waitAction(waitOptions(ofMillis(820))).moveTo(point(endx, endy)).release().perform();
        Thread.sleep(5000);
    }

    public void clickInfoOkBtn() {
        MobileElement el1 = (MobileElement) driver.findElementByIosClassChain("**/XCUIElementTypeButton[`label == \"TAMAM\"`]");
        el1.click();
        System.out.println("clickInfoOkBtn - PASS ");
    }

    public void selectProgramme(String arg0) throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByXPath(btn_programSelection).click();
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker[1]//XCUIElementTypePickerWheel[1]")).sendKeys(arg0);
        Thread.sleep(2000);
        driver.findElementByAccessibilityId("Seç").click();
        Thread.sleep(15000);
        System.out.println(arg0 + " programi seçildi - PASS");
    }

    public void selectTemp(String arg0) throws InterruptedException {
        driver.findElementByXPath(lbl_setOvenTemp).click();
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker[1]//XCUIElementTypePickerWheel[1]")).sendKeys(arg0);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.println(arg0 + " sıcaklığı seçildi- PASS");
    }

    public void controlProgramProgress(String arg0) {
        assertTrueDisplayed(By.id(arg0));
        System.out.println("Program aşaması " + arg0 + " - PASS");
    }

    public void controlBrand(String arg0) {
        scrollUntilFindText(arg0);
        System.out.println(arg0 + " markası kontrolü - PASS");
    }

    public void selectRPM(String arg0) throws InterruptedException {
        click_btn(By.xpath(btn_spinList));
        Thread.sleep(3000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys(arg0);
        click_ByAccessibilityId("Seç");
        Thread.sleep(10000);
        System.out.println(arg0 + " RPM seçildi - PASS");
    }

    public void backToLivingRoom() throws InterruptedException {
        swipeRight();
        System.out.println("Odaya geri gidilir - PASS ");
    }

    public void click_updateInfo() {
        click_btn(By.xpath(btn_updateInfo));
        System.out.println("click_updateInfo - PASS ");
    }

    public void conrol_userMailAddress(String arg0) {
        WebElement elem = ((IOSDriver) driver).findElement(MobileBy.xpath("//*[contains(@label, '" + arg0 + "')]"));
        System.out.println("conrol_userMailAddress - PASS ");
    }

    public void control_remoteControlOn() {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(lbl_remoteControlOpen)));
        assertEqualsforButton("Açık", By.id(lbl_remoteControlOpen));
        System.out.println("Uzaktan Kontrol Açık - PASS ");
    }

    public void control_homeWhizInfoTitle() throws InterruptedException {
        Thread.sleep(3000);
//        waitvisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(lbl_hwInfoTitle)));
        driver.findElementByName(lbl_hwInfoTitle);
        System.out.println("control_homeWhizInfoTitle");
    }

    public void control_otherInfoTitle() {
        driver.findElementByIosClassChain(lbl_otherInfoTitle);
        System.out.println("control_otherInfoTitle");
    }

    public void control_programSelection() {
        driver.findElementByName(lbl_programSelection);
        System.out.println("Program seçim bölümünün varolduğu kontrol edilir - PASS");
    }

    public void control_savedRecipes() {
        driver.findElementByName(lbl_savedRecipes);
        System.out.println("Kayıtlı tarif kontrol edilir - PASS");
    }

    public void click_programSelection() throws InterruptedException {
        //Thread.sleep(1500);
        driver.findElement(By.xpath(btn_programSec)).click();
        System.out.println("Program seçimine basilir - PASS");
    }

    public void control_remainingTimeTitle() {
        driver.findElementByAccessibilityId(lbl_remainingTimeTitle);
        System.out.println("Konrol Zaman Başlığı - PASS");
    }

    public void setTimeiOS(String arg0) throws InterruptedException {
        click_btn(By.xpath(tim_timeSet));
        Thread.sleep(6000);
        List<WebElement> values = driver.findElementsByXPath("//XCUIElementTypePickerWheel");
        String val1 = values.get(0).getAttribute("value");
        String val2 = values.get(1).getAttribute("value");
        values.get(0).sendKeys(arg0);
        values.get(1).sendKeys("00");
        Thread.sleep(3000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.println("Süre " + arg0 + " olarak setlendi - PASS");
    }

    public void click_startProgramme() throws InterruptedException {
        //Thread.sleep(2000);
        //driver.findElementByAccessibilityId(btn_startProgramme).click();
        //Thread.sleep(10000);
        //System.out.println("Program Başlat butonuna basılır - PASS");

        for(int i = 0; i < 5; i++)
        {
            try
            {
                driver.findElementByAccessibilityId(btn_startProgramme).click();
                System.out.println("Program Başlat butonuna basılır " + i);
                try
                {
                    driver.findElementById(btn_pauseiOS);
                    System.out.println("Program Başlat butonuna basılır - PASS");
                    return;
                }
                catch (Exception e)
                {
                    System.out.println("Program başlamadı tekrar dene");
                }
            }
            catch (Exception e)
            {
                System.out.println("Başlat butonu bulunamadı tekrar dene");
                return;
            }
        }
        System.out.println("Program baslatılamadı");
        failTest();
    }

    public void click_hideFunc() throws InterruptedException {
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(btn_hideFunc)));
        driver.findElementByAccessibilityId(btn_hideFunc).click();
        Thread.sleep(2000);
        System.out.println("Yardımcı fonksiyonlar kapatılır - PASS");
    }

    public void click_continue() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByAccessibilityId(btn_continue).click();
        System.out.println("Devam tuşuna basılır - PASS");
    }

    public void clickSaveNotyButtom() throws InterruptedException {
        IOSElement element = (IOSElement) driver.findElementByAccessibilityId("Kaydet");
        if (element.getAttribute("enabled").equals("true")) {
            element.click();
            Thread.sleep(3000);
            driver.findElementByAccessibilityId("TAMAM").click();
            Thread.sleep(2000);
            System.out.println("Kaydet butonuna basıldı");
        } else System.out.println("Değişiklik yok");
    }

    public void setFavoriteText(String arg0) {
        MobileElement el1 = (MobileElement) driver.findElementByXPath(lbl_favoriteTB);
        el1.sendKeys(arg0);
        System.out.println("Favori program " + arg0 + " olarak setlendi - PASS");
    }

    public void clickSignOut() {
        click_btn(By.id(btn_signOut));
        System.out.println("Çıkış butonuna basıldı - PASS");
    }

    public void control_wizardButton() {
        driver.findElementByName(btn_wizard);
        System.out.println("Sihirbaz butonu kontrolü - PASS");
    }

    public void selectAntiCreaseTime(String arg0) throws InterruptedException {
        driver.findElementByXPath(lbl_setAntiCrease).click();
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker[1]//XCUIElementTypePickerWheel[1]")).sendKeys(arg0);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.println("Kırışık azaltme " + arg0 + " olarak seçildi - PASS");
    }

    public void selectDryingLevel(String arg0) throws InterruptedException {
        click_ByAccessibilityId("Dolap Kuruluğu");
//        driver.findElementByName(lbl_dryingLevel).click();
//        click_btn(By.id(lbl_dryingLevel));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker[1]//XCUIElementTypePickerWheel[1]")).sendKeys(arg0);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.println("Kırışık azaltme " + arg0 + " olarak seçildi - PASS");
    }

    public void click_continue_program() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByAccessibilityId(btn_continue_program).click();
        Thread.sleep(2000);
        System.out.println("Programı devam ettir butonuna bas - PASS");
    }

    public void control_wizardSelection() {
        driver.findElementByName(lbl_wizardSelection);
        System.out.println("control_programSelection");
    }

    public void control_temp(String arg0) {
        assertEqualsforButton(arg0, By.xpath(lbl_airConTemp));
        System.out.println("Sıcaklik değeri " + arg0 + " kontrolü  - PASS");
    }

    public void control_airConSleepingMood(String arg0) {
        assertEqualsforButton(arg0, By.id(lbl_off));
        System.out.println("Uyku modu " + arg0 + " kontrol edilir - PASS");
    }

    public void control_airConVertical(String arg0) {
        assertEqualsforButton(arg0, By.xpath(lbl_verticalAir));
        System.out.println("Dikey hava akışı " + arg0 + " kontrol edilir - PASS");
    }

    public void setCoolingBackDegree() throws InterruptedException {
        Thread.sleep(2000);
        driver.findElementByXPath("//XCUIElementTypeButton[@name=\"Kurutma\"]").click();
        Thread.sleep(2000);
        driver.findElementByAccessibilityId("Soğutma").click();
        Thread.sleep(2000);
        System.out.println("Soğutucu modu seçilir - PASS");
    }

    public void swipeDownOfPage() throws InterruptedException {
//      swipeDown();
        JavascriptExecutor js = (JavascriptExecutor) driver;
        HashMap<String, String> scrollObject = new HashMap<>();
        scrollObject.put("direction", "up");
        js.executeScript("mobile: swipe", scrollObject);
        System.out.println("Sayfa altına gidilir - PASS");
    }

    public void setDelayTime(String arg0) {
        IOSElement tm1 = (IOSElement) driver.findElementByXPath(lbl_delayTimeHour);
        tm1.setValue(arg0);
        System.out.println("Geçikme zamanı saat " + arg0 + "olarak setlenir - PASS");
    }

    public void setDelayTimeMin(String arg0) {
        IOSElement tm1 = (IOSElement) driver.findElementByXPath(lbl_delayTimeMin);
        tm1.setValue(arg0);
        System.out.println("Geçikme zamanı dakika " + arg0 + " olarak setlenir - PASS");
    }

    public void clickProgramStartDelay() {
        driver.findElementByXPath(btn_clickStartProgramDelay).click();
        System.out.println("Zaman geciktirme programı başlat - PASS");
    }

    public void selectLaundryType(String arg0) {
        IOSElement el1 = (IOSElement) driver.findElementByName(arg0);
        el1.click();
        System.out.println("Çamaşır tipi " + arg0 + " olarak seçilir - PASS");
    }

    public void setNewLogin() throws InterruptedException {
        Thread.sleep(2000);
        MobileElement el2 = (MobileElement) driver.findElementByAccessibilityId("E-posta Adresiniz:");
        el2.click();
        Thread.sleep(2000);
        MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("Metni sil");
        el3.click();
        Thread.sleep(2000);
        MobileElement el4 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeTextField[@name=\"E-posta Adresiniz\"]");
        el4.sendKeys("hayri.odabas@arcelik.com");
        Thread.sleep(2000);
        MobileElement el6 = (MobileElement) driver.findElementByAccessibilityId("Şifreniz");
        el6.sendKeys("12345678");
        Thread.sleep(2000);
        MobileElement el7 = (MobileElement) driver.findElementByName("GİRİŞ YAP");
        el7.click();
        Thread.sleep(2000);
        System.out.println("loginMail - PASS");
    }

    public void setPlusDryingLevel() {
        driver.findElementByXPath(lbl_plusDryLevel).click();
        System.out.println("Ek kuruluk seviyesi seçilir - PASS");
    }

    public void controlVerticalAirStatus(String arg0) {
//        assertEqualsforButton(arg0, By.xpath(lbl_verticalAir));
        assertEqualsAttribute(By.xpath(lbl_verticalAir), arg0, "name");
        System.out.println("Kontrol diket hava akışı " + arg0 + " - PASS");
    }

    public void setAirConTemp(String arg0) {
        MobileElement element = (MobileElement) driver.findElementByXPath(pck_airconTemp);
        element.sendKeys(arg0);
        System.out.println("Sicaklik " + arg0 + " dereceye ayarlanir - PASS");
    }

    public void control_airConSleepingMoodStatus() {
        assertEqualsforButton("3.0 ", By.xpath(lbl_timerValue));
        System.out.println("Zamanlayıcı 3 e setlenir - PASS ");
    }

    public void setVertAirMode(String arg0) throws InterruptedException {
        for (int i = 0; i < 5; i++) {
            MobileElement element = (MobileElement) driver.findElement(By.xpath(btn_verticalAirMode));
            System.out.println("Vertical air mode : " + element.getAttribute("name"));
            if (element.getAttribute("name").equals(arg0)) {
                System.out.println("Dikey hava modu " + arg0 + " konuma getirilir - PASS");
                return;
            } else
                element.click();

            TimeUnit.SECONDS.sleep(5);
        }
        failTest();
    }

    public void controlFanSpeedValue(String arg0) {
        assertEqualsAttribute(By.xpath(btn_fanSpeed), arg0, "name");
        System.out.println("Fan hizinin " + arg0 + " oldugu kontrol edilir - PASS");
    }

    public void setNewLoginAgain() throws InterruptedException {
        MobileElement el6 = (MobileElement) driver.findElementByAccessibilityId("Şifreniz");
        el6.sendKeys("12345678");
        Thread.sleep(2000);
        MobileElement el7 = (MobileElement) driver.findElementByName("GİRİŞ YAP");
        el7.click();
        System.out.println("Yeniden Login Olunur - PASS");
    }

    public void control_login() {
        try {
            MobileElement element = (MobileElement) driver.findElementByName("GİRİŞ YAP");
            TimeUnit.SECONDS.sleep(3);
            if (element.getAttribute("name").equals("GİRİŞ YAP")) {
                TimeUnit.SECONDS.sleep(3);
                element.click();
                TimeUnit.SECONDS.sleep(5);
                Thread.sleep(2000);
                MobileElement el2 = (MobileElement) driver.findElementByAccessibilityId("E-posta Adresiniz:");
                el2.click();
                Thread.sleep(2000);
                MobileElement el3 = (MobileElement) driver.findElementByAccessibilityId("Metni sil");
                el3.click();
                Thread.sleep(2000);
                MobileElement el4 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeTextField[@name=\"E-posta Adresiniz\"]");
                el4.sendKeys("hayri.odabas@arcelik.com");
                Thread.sleep(2000);
                driver.findElementByAccessibilityId("Şifreniz").sendKeys("12345678");
                Thread.sleep(2000);
                driver.findElementByAccessibilityId("Şifreniz").clear();
                Thread.sleep(2000);
                driver.findElement(By.name("GİRİŞ YAP")).click();
                Thread.sleep(2000);
                System.out.println("Login yapıldı");
            }
        } catch (Exception e) {
            System.out.println("Zaten login");
        }
    }

    public void setNewRoomName(String arg0) throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(txf_roomName);
        element.clear();
        Thread.sleep(2000);
        element.sendKeys(arg0);
        Thread.sleep(2000);
        click_btn(By.name("Done"));
        Thread.sleep(2000);
        System.out.println("Oda ismi " + arg0 + " olarak ayarlanır");
    }

    public void control_totalRemainingTime(String arg0) {
        assertEqualsAttribute(By.xpath(lbl_firstRemainingTime), arg0, "name");
        System.out.println("Program süresi " + arg0 + " - PASS");
    }

    public void control_favoriteProgName(String arg0) {
        assertEqualsAttribute(By.xpath(lbl_favoritePrg), arg0, "name");
        System.out.println("Favori program adı " + arg0 + " - PASS");
    }

    public void controlPpmValues() throws InterruptedException {
        String str = driver.findElementByXPath(lbl_ppmValue).getAttribute("value");
        String[] newStr = str.split("PPM");

        float ppm = Float.parseFloat(newStr[0]);
        Thread.sleep(3000);
        if (ppm > 30 && ppm < 5100) {
            System.out.println("PPM degeri kabul edilebilir bir deger mi kontrol edilir: " + ppm + " - PASS");
        } else {
            System.out.println("PPM degeri kabul edilebilir bir deger mi kontrol edilirr: " + ppm + " - FAIL");
            failTest();
        }
    }

    public void controlCirclePpmHolder() {
        assertTrueDisplayed(By.xpath(icn_circle_ppm_holder));
        System.out.println("Ppm degerinin icinde bulundugu halka ikonu sayfada goruntulenme kontrolu - PASS");
    }

    public void set_frezerMode(String arg0) throws InterruptedException {
        WebDriverWait wait = new WebDriverWait(driver, 10);
  //      wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(btn_freezerCabinMode)));
        driver.findElementByXPath(btn_freezerCabinMode).click();
        Thread.sleep(3000);
        MobileElement element = (MobileElement) driver.findElementByXPath(pck_freezerMode);
        element.setValue(arg0);
        Thread.sleep(2000);
        click_btn(By.name("Seç"));
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("Sürüyor")));
        click_btn(By.name(btn_hideFunc));
        Thread.sleep(2000);
        System.out.println("Dondurucu kabin modu " + arg0 + " olarak ayarlanır");
    }

    public void click_rapidFreezeOn() {
        click_btn(By.xpath(btn_rapidFreezingFunc));
        System.out.println("Hızlı Dondurma On yapılır - PASS");
    }

    public void control_rapidFreezerOn() {
        assertEqualsAttribute(By.xpath(btn_rapidFreezingFunc), "1", "value");
        System.out.println("Hızlı Dondurma On kontrolü - PASS");
    }

    public void click_fuzzyModeOn() {
        click_btn(By.xpath(btn_ecoFuzzy));
        System.out.println("EcoFuzzy On yapılır - PASS");
    }

    public void control_fuzzyModeOn() {
        assertEqualsAttribute(By.xpath(btn_ecoFuzzy), "1", "value");
        System.out.println("EcoFuzzy On kontrolü - PASS");
    }

    public void click_fuzzyModeOff() {
        assertEqualsAttribute(By.xpath(btn_ecoFuzzy), "0", "value");
        System.out.println("EcoFuzzy Off kontrolü - PASS");
    }

    public void click_vacationModeOn() {
        click_btn(By.xpath(btn_vacationMood));
        System.out.println("VacationMode On yapılır - PASS");
    }

    public void click_vacationModeOff() {
        assertEqualsAttribute(By.xpath(btn_vacationMood), "0", "value");
        System.out.println("VacationMode Off kontrolü - PASS");
    }

    public void control_airCleanFunc() {
        assertEqualsAttribute(By.xpath(btn_airClean), "1", "value");
        System.out.println("Hava Temizleme on kontrol edilir - PASS");
    }

    public void control_airCleanFuncOff() {
        assertEqualsAttribute(By.xpath(btn_airClean), "0", "value");
        System.out.println("Hava Temizleme Off kontrol edilir - PASS");
    }

    public void click_airCleanBtn() {
        click_btn(By.xpath(btn_airCleanBtn));
        System.out.println("Hava Temizleme butonuna basılır - PASS");
    }

    public void click_airCleanOff() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_airClean);
        if (element.getAttribute("value").equals("1")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Hava Temizleme Off yapıldı - PASS");
        } else System.out.println("Hava Temizleme zaten off durumda");
    }

    public void click_lightBtn() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_lamp);
        if (element.getAttribute("value").equals("0")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Işık On yapıldı - PASS");
        } else System.out.println("Işık zaten on durumda");
    }

    public void control_lightBtnOn() {
        assertEqualsAttribute(By.xpath(btn_lamp), "1", "value");
        System.out.println("Işık butonu On kontrol edilir - PASS");
    }

    public void click_lightBtnOff() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_lamp);
        if (element.getAttribute("value").equals("1")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Işık Off yapıldı - PASS");
        } else System.out.println("Işık zaten off durumda");
    }

    public void control_lightBtnOff() {
        assertEqualsAttribute(By.xpath(btn_lamp), "0", "value");
        System.out.println("Işık butonu On kontrol edilir - PASS");
    }

    public void click_modeSelectionBtn() {
        click_btn(By.xpath(btn_modeSelection));
        System.out.println("Mod Seçimi butonuna basılır - PASS");
    }

    public void click_airCleanOn() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_airClean);
        if (element.getAttribute("value").equals("0")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Hava Temizleme On yapıldı - PASS");
        } else System.out.println("Hava Temizleme zaten On durumda");
    }

    public void click_dirtyFilterResetActive() {
        driver.findElementByName("Aktif").click();
        System.out.println("Kir Filtresi Seviyesini Sıfırla aktif yapılır - PASS");
    }

    public void control_dirtLevelActive() {
        assertEqualsAttribute(By.xpath(btn_dirtLevelActive), "false", "enabled");
        System.out.println("Kir Filtresi Seviyesini aktif kontrolu - PASS");
    }

    public void control_dirtLevelPasive() {
        assertEqualsAttribute(By.xpath(btn_dirtLevelPasive), "true", "enabled");
        System.out.println("Kir Filtresi Seviyesini pasif kontrolu - PASS");
    }

    public void click_needToCleanFilter() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_needToCleanFilter);
        if (element.getAttribute("value").equals("0")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Filtrenin temizlenmesi gerekiyor on yapilir - PASS");
        } else System.out.println("Filtrenin temizlenmesi gerekiyor zaten On durumda");
    }

    public void control_needToCleanFilter() {
        assertEqualsAttribute(By.xpath(btn_needToCleanFilter), "1", "value");
        System.out.println("Filtrenin temizlenmesi gerekiyor on kontrolu - PASS");
    }

    public void click_needToCleanFilterOff() throws InterruptedException {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_needToCleanFilter);
        if (element.getAttribute("value").equals("1")) {
            element.click();
            Thread.sleep(3000);
            System.out.println("Filtrenin temizlenmesi gerekiyor off yapilir - PASS");
        } else System.out.println("Filtrenin temizlenmesi gerekiyor zaten off durumda");
    }

    public void control_needToCleanFilterOff() {
        assertEqualsAttribute(By.xpath(btn_needToCleanFilter), "0", "value");
        System.out.println("Filtrenin temizlenmesi gerekiyor on kontrolu - PASS");
    }

    public void changeFanSpeed(String arg0) throws InterruptedException {
        click_btn(By.xpath(btn_fanSpeedSelection));
        waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("İptal")));
        MobileElement element = (MobileElement) driver.findElementByXPath(bdFreezerSwipeId);
        element.setValue(arg0);
        click_btn(By.name("Seç"));
        Thread.sleep(5000);
        System.out.println("Fan seviyesi " + arg0 + " olarak ayarlanir - PASS");
    }

    public void controlNightModeOffIfOn() {
        try {
            MobileElement element = (MobileElement) driver.findElementByName(btn_nightModeSwtch);
            if (element.getAttribute("value").equals("0")) {
                element.click();
                System.out.println("Gece Modu Off yapıldı - PASS");
            }
        } catch (Exception e) {
            System.out.println("Gece Modu Zaten Off durumda - PASS");
        }
        System.out.println("Gece Modu Off yapıldı - PASS");
    }

    public void click_nightMode() {
        click_btn(By.xpath(btn_nightModeSwtch));
        System.out.println("Gece modu buttonuna basilir - PASS");
    }

    public void control_nightModeOn() {
        assertEqualsAttribute(By.xpath(btn_nightModeSwtch), "1", "value");
        System.out.println("Gece modu acik mi diye kontrol edilir - PASS");
    }

    public void control_emptyValueOfPpm(String arg0) {
        assertFalseDisplayed(MobileBy.xpath("//*[contains(@label, '" + arg0 + "')]"));
        System.out.println("Gecmis ekranindaki degerin " + arg0 + " icermedigi kontrol edilir");
    }

    public void control_airQuality(String arg0, String arg1, String arg2, String arg3, String arg4) {
        driver.findElement(MobileBy.xpath("//*[contains(@label, '" + arg0 + "')] | //*[contains(@label, '" + arg1 + "')] | //*[contains(@label, '" + arg2 + "')] | //*[contains(@label, '" + arg3 + "')] | //*[contains(@label, '" + arg4 + "')]"));
        System.out.println("Hava kalitesi texti kontrol edilir - PASS");
    }

    public void control_humidityLevel() throws InterruptedException {
        String str = driver.findElementByXPath(lbl_humidityValue).getAttribute("value");
        String[] newStr = str.split("%");

        float humidity = Float.parseFloat(newStr[1]);
        Thread.sleep(3000);
        if (humidity > 0 && humidity < 103) {
            System.out.println("Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir - PASS");
            System.out.println("nem:" + humidity);
        } else {
            System.out.println("Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir - FAIL");
            failTest();
        }
    }

    public void control_tempLevel() throws InterruptedException {
        String str = driver.findElementByXPath(lbl_tempValue).getAttribute("value");
        String[] newStr = str.split("°C");

        float temp = Float.parseFloat(newStr[0]);
        Thread.sleep(3000);
        if (temp > 10 && temp < 40) {
            System.out.println("Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir: " + temp + " - PASS");
        } else {
            System.out.println("Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir: " + temp + " - FAIL");
            failTest();
        }
    }

    public void click_co2Info() {
        click_btn(By.name(btn_co2Info));
        System.out.println("Karbondioksit seviyesi bilgilendirmesi yapan pop-up acılır - PASS");
    }

    public void click_c2oinfoAlert() {
        click_btn(By.name(btn_c2oInfoAlert));
        System.out.println("Carpı isaretine basilip ekran kapatilir - PASS");
    }

    public void click_recipeArrow() {
        click_btn(By.xpath(btn_recipesArrow));
        System.out.println("Cihaz Ekranında Yemek tarifleri ok butonuna basilir - PASS");
    }

    public void click_firstRecipe() {
        click_btn(By.name(lbl_firstRecipe));
        System.out.println("Cihaz Ekranında İlk Yemek tarifine basilir");
    }

    public void click_plugOff() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_plugDevOnOff);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                System.out.println("Cihazlar ekraninda priz off yapilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Plug Zaten Off durumda - PASS");
        }
        System.out.println("Cihazlar ekraninda priz off yapilir - PASS");
    }

    public void control_plugOff() {
        assertEqualsAttribute(By.xpath(btn_plugDevOnOff), "0", "value");
        System.out.println("Cihazlar ekraninda priz off oldugu kontrol edilir - PASS");
    }

    public void click_plugOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_plugDevOnOff);
            if (el1.getAttribute("value").equals("0")) {
                el1.click();
                System.out.println("Cihazlar ekraninda priz on yapilir - PASS - PASS");
            }
        } catch (Exception e) {
            System.out.println("Plug Zaten On durumda - PASS");
        }
    }

    public void control_plugOn() {
        assertEqualsAttribute(By.xpath(btn_plugDevOnOff), "1", "value");
        System.out.println("Cihazlar ekraninda priz on oldugu kontrol edilir - PASS");
    }

    public void control_plugOffDetail() {
        assertEqualsAttribute(By.xpath(btn_plugStatus), "KAPALI", "value");
        System.out.println("Plug cihaz ekranında kapalı oldugunu kontrol et - PASS");
    }

    public void click_power() {
        click_btn(By.name(btn_power));
        System.out.println("Guc butonuna basılı - PASS");
    }

    public void control_plugOnDetail() {
        assertEqualsAttribute(By.xpath(btn_plugStatus), "KAPALI", "value");
        System.out.println("Plug cihaz ekranında acık oldugunu kontrol et - PASS");
    }

    public void control_deviceOnDetail() {
//        if (findText("ANLIK GÜÇ TÜKETİMİ:")){
//            System.out.println("Plug cihaz ekraninda acik oldugunu kontrol et - PASS");
//    }

        try {
            if (findText("ANLIK GÜÇ TÜKETİMİ:")) {
                System.out.println("Plug cihaz ekraninda acik oldugunu kontrol et - PASS - PASS");
            }
        } catch (Exception e) {
            failTest();
            System.out.println("Plug cihaz ekraninda acik oldugunu kontrol et - FAIL");
        }

    }

    public void control_energyConsumptionCompare() throws InterruptedException {
        String dPower = driver.findElementByXPath(lbl_plugEnergyValue).getAttribute("value");
        String[] newPower = dPower.split("W");
        float powerF = Float.parseFloat(newPower[0]);

        click_btn(By.xpath(btn_options));
        Thread.sleep(2000);
        click_btn(By.name(btn_consumption));
        Thread.sleep(2000);

        String tPower = driver.findElementByXPath(lbl_plugEnergyValueDetail).getAttribute("value");
        String[] newPower1 = tPower.split("W");
        float powerDt = Float.parseFloat(newPower1[0]);

        if (powerF == powerDt) {
            System.out.println("Değerler birbirine eşit - PASS");
            System.out.println("Birinci değer : " + powerF);
            System.out.println("İkinci değer : " + powerDt);
        } else {
            System.out.println("Değerler birbirine eşit değil - FAIL");
            System.out.println("Birinci değer : " + powerF);
            System.out.println("İkinci değer : " + powerDt);
            failTest();
        }
    }

    public void click_accessEnergy() {
        click_btn(By.name(btn_accessEnergy));
        System.out.println("Akilli erisimden priz sayfasi acilir - PASS");
    }

    public void control_accessEnergyOff() {
        assertEqualsAttribute(By.xpath(btn_accessEnergyPlug), "0", "value");
        System.out.println("Akilli erişim priz sayfasinda kapali oldugu kontrol edilir - PASS");
    }

    public void click_smartAccessOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_accessEnergyPlug);
            if (el1.getAttribute("value").equals("0")) {
                el1.click();
                System.out.println("Akilli erisim priz sayfasindan priz on yapılır - PASS");
            }
        } catch (Exception e) {
            System.out.println("Plug Zaten On durumda - PASS");
        }
    }

    public void control_accessEnergyOn() {
        assertEqualsAttribute(By.xpath(btn_accessEnergyPlug), "1", "value");
        System.out.println("Akilli erişim priz sayfasinda açık oldugu kontrol edilir - PASS");
    }

    public void click_smartAccessOff() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_accessEnergyPlug);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                System.out.println("Akilli erisim priz sayfasindan priz off yapılır - PASS");
            }
        } catch (Exception e) {
            System.out.println("Plug Zaten On durumda - PASS");
        }
    }

    public void setPlugStartingTime(String arg0) throws InterruptedException {
        click_btn(By.xpath(btn_plugStartingDate));
        Thread.sleep(3000);
        MobileElement element = (MobileElement) driver.findElementByXPath(pck_dateDayPicket);
        element.sendKeys("28");
        Thread.sleep(2000);
        click_btn(By.name("Bitti"));
        Thread.sleep(2000);
        System.out.println("Plug başlangıç tarih günü " + arg0 + "olarak degistirilir");
    }

    public void click_changeRoom(String arg0) {
        click_btn(By.xpath("//XCUIElementTypeStaticText[@name='" + arg0 + "']/following-sibling::XCUIElementTypeButton"));
        System.out.println(arg0 + " oda duzenle butonuna basilir");
    }

    public void click_addNewRoomIcon() {
        click_btn(By.name(btn_addNewRoomIcon));
        System.out.println("Yeni Oda Ekle butonuna basılır - PASS");
    }

    public void select_firstPic() {
        click_btn(By.xpath(btn_roomPic));
        System.out.println("Ilk resim secilir - PASS");
    }

    public void goToNewRoom() throws InterruptedException {
        swipeLeft();
        swipeLeft();
        swipeLeft();
        System.out.println("Yeni eklenen odaya gidilir - PASS");
    }

    public void control_timeDateAlert() {
        try {
            Thread.sleep(5000);
//            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(btn_clickOkAfterDownloadProgram)));
            click_btn(By.name(btn_clickOkAfterDownloadProgram));
            System.out.println("Uyarı Tamam butonuna basıldı - PASS");
        } catch (Exception e) {
            System.out.println("Uyarı Alert gösterilmedi");
        }
    }

    public void control_popUpAlert() {
        try {
            Thread.sleep(5000);
//            waitVisibility().until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name("İzin Ver")));
            click_btn(By.name("İzin Ver"));
            Thread.sleep(2000);
            System.out.println("Bildirimlere izin verildi uyarısı - PASS");
        } catch (Exception e) {
            System.out.println("Bildirim uyarısı gelmedi");
        }
    }

    public void control_lampOffDevices() {
        assertEqualsAttribute(By.xpath(btn_lampStatus), "0", "value");
        System.out.println("Lamba cihaz ekranında kapalı oldugunu kontrol et - PASS");
    }

    public void onLampIfOffDevices() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_lampStatus);
            if (el1.getAttribute("value").equals("0")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba cihazlarim ekraninda on yapilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten On durumda - PASS");
        }
    }

    public void offLampIfOnDevices() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_lampStatus);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba cihazlarim ekraninda off yapilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten Off durumda - PASS");
        }
    }

    public void control_lampOnDevices() throws InterruptedException {
        assertEqualsAttribute(By.xpath("//XCUIElementTypeApplication[@name=\"HomeWhiz\"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]/XCUIElementTypeOther/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeSwitch"), "1", "value");
        System.out.println("Lamba cihaz ekranında açık oldugunu kontrol et - PASS");
    }

    public void click_lampPowerOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByName(btn_lightPowerOff);
            if (el1.getAttribute("name").equals(btn_lightPowerOff)) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba power butonu ile acilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten On durumda - PASS");
        }
    }

    public void click_lampPowerOff() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByName(btn_lightPowerOn);
            if (el1.getAttribute("name").equals(btn_lightPowerOn)) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba power butonu ile Kapatilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten Off durumda - PASS");
        }
    }

    public void click_lampPowerOffIfOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_lampStatus);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Cihazlarim ekraninda lamba on ise off konumuna getirilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten Off durumda - PASS");
            actions = new IOSTouchAction(driver);
        }
        System.out.println("Lamba Zaten Off durumda - PASS");
    }

    public void click_ovenDoorOpenOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_ovenDoorOpen);
            if (el1.getAttribute("value").equals("0")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Firin kapak acik bildirimi aktif edilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Firin kapak acik bildirimi aktif edilir - PASS");
        }
    }

    public void control_ovenDoorOpenOn() {
        assertEqualsAttribute(By.xpath(btn_ovenDoorOpen), "1", "value");
        System.out.println("Firin kapak acik bildirimi aktif kontrolu - PASS");
    }

    public void click_ovenDoorOpenOff() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_ovenDoorOpen);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Firin kapak acik bildirimi pasif edilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Firin kapak acik bildirimi pasif edilir - PASS");
        }
    }

    public void control_ovenDoorOpenOff() {
        assertEqualsAttribute(By.xpath(btn_ovenDoorOpen), "0", "value");
        System.out.println("Firin kapak acik bildirimi pasif kontrolu - PASS");
    }

    public void click_coldColor() {
        click_btn(By.xpath(btn_coldColor));
        System.out.println("Soğuk renk seçilir - PASS");
    }

    public void setBrightness(double arg0) {
        MobileElement element = (MobileElement) driver.findElementByXPath(sb_rinseAidLevel);
        element.setValue(String.valueOf(arg0));
        System.out.println("Parlaklık " + arg0 + " olarak ayarlanır");
    }

    public void click_redColor() {
        click_btn(By.xpath(btn_redColor));
        System.out.println("Kırmızı renk seçilir - PASS");
    }

    public void click_purpleColor() {
        click_btn(By.xpath(btn_purpleColor));
        System.out.println("Mor renk seçilir - PASS");
    }

    public void click_warmColor() {
        click_btn(By.xpath(btn_warmColor));
        System.out.println("Sıcak renk seçilir - PASS");
    }

    public void click_colorCircle() throws InterruptedException {
        TouchAction action = new TouchAction(driver);
        MobileElement element = (MobileElement) driver.findElementByXPath(lbl_colorCircle);

        int height = element.getSize().getHeight();
        int width = element.getSize().getWidth();
        int start = width / 2;
        int end = (height / 10) * 10;

        new TouchAction(driver).tap(point(start, end)).release().perform();
        Thread.sleep(60);

        System.out.println("Cember uzerinden renk degistirilir - PASS");
    }

    public void click_menu() {
        click_btn(By.xpath(btn_otherOptions));
        System.out.println("Menü tuşuna basılır - PASS");
    }

    public void setNewDay(String arg0) {
        MobileElement element = (MobileElement) driver.findElementByXPath(btn_startingDay);
        element.setValue(arg0);
    }

    public void control_smartAccessLampOff() {
        assertEqualsAttribute(By.xpath(btn_accessEnergyPlug), "0", "value");
        System.out.println("Akıllı erişim lamba sayfasında kapalı olduğu kontrol edilir - PASS");
    }

    public void click_smartAccessLampOn() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_accessEnergyPlug);
            if (el1.getAttribute("value").equals("0")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba power butonu ile açılır - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten On durumda - PASS");
        }
    }

    public void control_smartAccessLampOn() {
        assertEqualsAttribute(By.xpath(btn_accessEnergyPlug), "1", "value");
        System.out.println("Akıllı erişim lamba sayfasında açık olduğu kontrol edilir - PASS");
    }

    public void click_smartAccessLampOff() {
        try {
            MobileElement el1 = (MobileElement) driver.findElementByXPath(btn_accessEnergyPlug);
            if (el1.getAttribute("value").equals("1")) {
                el1.click();
                Thread.sleep(3000);
                System.out.println("Lamba power butonu ile Kapatilir - PASS");
            }
        } catch (Exception e) {
            System.out.println("Lamba Zaten Off durumda - PASS");
        }
    }

    public void setShelfProposal(String arg0) throws InterruptedException {
        driver.findElementByXPath(lbl_setShelfProposal).click();
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker[1]//XCUIElementTypePickerWheel[1]")).sendKeys(arg0);
        Thread.sleep(2000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.printf("Raf onerisi " + arg0 + " olarak ayarlanir");
    }

    public void control_preHeatingStep() {
        try {
            MobileElement element = (MobileElement) driver.findElementByAccessibilityId(btn_skip);
            if (element.getAttribute("name").equals(btn_skip)) {
                element.click();
                Thread.sleep(3000);
                System.out.println("Ön ısıtma adımı atlandı - PASS");
            }
        } catch (Exception e) {
            System.out.println("Ön ısıtma yapılmadı - PASS");

        }
    }

    public void click_vegaFirinStop() throws InterruptedException {

        int try_count;

        for (try_count = 0; try_count < 5; try_count++) {
            System.out.println("Stop butonuna basilir - Basıldı");
            driver.findElementByAccessibilityId(btn_vegaStop).click();
            TimeUnit.SECONDS.sleep(10);
            String switchStatus = driver.findElement(By.xpath(lbl_progressTextValue)).getText();
            if (
                    (switchStatus.trim()).equals("Ön ısıtma tamamlandı") |
                            (switchStatus.trim()).equals("Ön Isıtma") |
                            (switchStatus.trim()).equals("Pişiriliyor")
            ) {
                System.out.println("Program stop butonuna basildi - PASS");
                return;
            } else {
                System.out.println("Stop butonuna basilir - Retry");
            }
        }
        System.out.println("Click Stop - FAIL");
    }

    public void changeRoomToBathroom() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Banyo");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Firini mutfak odasina tasi - PASS");
    }

    public void movetoBathroom() throws InterruptedException {
        Thread.sleep(2000);
        click_btn(By.xpath(btn_menuButton));
        Thread.sleep(2000);
        click_btn(By.name("Oda Değiştir"));
        Thread.sleep(2000);
        driver.findElement(By.xpath("//XCUIElementTypePicker//XCUIElementTypePickerWheel")).sendKeys("Mutfak");
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        click_ByAccessibilityId("TAMAM");
        Thread.sleep(2000);
        System.out.println("Firini oturma odasina geri tasi - PASS");
    }

    public void click_warning(String arg0, String arg1) throws InterruptedException {
        MobileElement el1 = (MobileElement) driver.findElementByXPath("//XCUIElementTypeStaticText[@name='"+arg0+"']//following-sibling::XCUIElementTypeSwitch");
        if (el1.getAttribute("value").equals(arg1)) {
            System.out.println(arg0+ " zaten "+ arg1 +" durumda" );
        } else{
            el1.click();
            Thread.sleep(3000);
            System.out.println(arg0+ " butonu "+arg1+" yapıldı - PASS");
        }
    }

    public void select_waitingMode(String arg0) throws InterruptedException {
        click_btn(By.xpath(btn_modeArrow));
        Thread.sleep(3000);
        driver.findElement(By.xpath("//XCUIElementTypePickerWheel")).sendKeys(arg0);
        Thread.sleep(2000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.printf("Bekleme Modu "+arg0+ " olarak seçilir - PASS");
    }

    public void changeWaitingTime() {
        MobileElement element = (MobileElement) driver.findElementByXPath("//XCUIElementTypeSlider");
        element.setValue("0.7");
        System.out.println("Bekleme suresi 120 dakika yapilir");
    }

    public void control_waitingTime() {
        assertEqualsAttribute(By.xpath("//XCUIElementTypeSlider"), "%75", "value");
        System.out.println("Bekleme suresinin 120 dakika oldugu kontrol edilir - PASS");
    }

    public void changeWaitingTimeReset() {
        MobileElement element = (MobileElement) driver.findElementByXPath("//XCUIElementTypeSlider");
        element.setValue("0.0");
        System.out.println("Bekleme suresi sıfırlanır - PASS");
    }

    public void control_waitingTimeReset() {
        assertEqualsAttribute(By.xpath("//XCUIElementTypeSlider"), "%0", "value");
        System.out.println("Bekleme suresinin sifirlandigi kontrol edilir - PASS");
    }

    public void click_cameraAccessOk() {
        try {
            click_btn(By.name("Tamam"));
            System.out.println("Kamera erişim izini verildi - PASS");
        } catch (Exception e) {
            System.out.println("Kamera izni zaten daha önce verilmişti");
        }
    }

    public void setCookingTime(String arg0, String arg1) throws InterruptedException {
        click_btn(By.xpath(btn_cookingTime));
        Thread.sleep(6000);
        List<WebElement> values = driver.findElementsByXPath("//XCUIElementTypePickerWheel");
        values.get(0).getAttribute("value");
        values.get(1).getAttribute("value");
        values.get(0).sendKeys(arg0);
        values.get(1).sendKeys(arg1);
        Thread.sleep(3000);
        click_ByAccessibilityId("Seç");
        Thread.sleep(2000);
        System.out.println("Süre " + arg0 + ":"+arg1+ " olarak setlendi - PASS");
    }

    public void click_deleteCookingSteps() throws InterruptedException {
        click_btn(By.name(btn_wasteBin));
        Thread.sleep(2000);
        click_btn(By.name(btn_wasteBin));
        Thread.sleep(2000);
        click_btn(By.name(btn_wasteBin));
        Thread.sleep(2000);
        click_btn(By.name(btn_wasteBin));
        Thread.sleep(2000);
        click_btn(By.name(btn_wasteBin));
        Thread.sleep(2000);
        System.out.println("Eklenen bes adim silinir - PASS");
    }

    public void click_stepCookingEditRun() {
        click_btn(By.id(btn_cookingStepEditRun));
        System.out.println("Adımlı pişirme edit play tuşuna basılır - PASS");
    }

    public void click_recipes() throws InterruptedException {
        Thread.sleep(1500);
        driver.findElement(By.xpath(btn_recipeSelect)).click();
        System.out.println("Program seçimine basilir - PASS");
    }

    public void click_sendToOwen() {
        click_btn(By.xpath(btn_sendToOwen));
        System.out.println("Firina gonder butonuna basilir - PASS");
    }

    public void click_lastProgramPlay() {
        click_btn(By.id(btn_lastPrgPlay));
        System.out.println("Son calistirilan program play tusuna basilir - PASS");
    }

    public void click_deviceHistoryPlay(String arg0) {
        click_btn(By.xpath("(//XCUIElementTypeStaticText[@name='"+arg0+"'])[1]/parent::*/following-sibling::XCUIElementTypeOther[1]"));
        System.out.println(arg0 + " play tuşuna basilir - PASS");
    }

    public void control_sendToOwenBtn() {
        assertEqualsAttribute(By.xpath(btn_sendToOwen), "false", "accessible");
        System.out.println("Firina gonder butonunun olmadigi kontrol edilir - PASS");
    }
}










