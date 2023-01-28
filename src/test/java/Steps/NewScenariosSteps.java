package Steps;

import org.apache.commons.codec.binary.Base64;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;


public class NewScenariosSteps extends BaseSteps {
    @Before
    public void setup() {
        setupCucumber();
    }

    @Before
    public void reportStart(Scenario scenario) {
        System.out.println("Recording start....");
        getTLDriver().startRecordingScreen();
    }


    @Before
    public void beforeScenario(Scenario scenario) {
        String ANSI_CYAN = "\u001B[36m";
        String ANSI_RESET = "\u001B[0m";

        System.out.println(ANSI_CYAN + "Running > " + scenario.getName() + ANSI_RESET);
    }

    @After
    public void afterScenario(Scenario scenario) {
        String ANSI_RED = "\u001B[31m";
        String ANSI_GREEN = "\u001B[32m";
        String ANSI_RESET = "\u001B[0m";

        if (scenario.isFailed()) {
            System.out.println(ANSI_RED + "Result : FAIL" + ANSI_RESET);
        } else {
            System.out.println(ANSI_GREEN + "Result : PASS"+ ANSI_RESET);
        }
    }

    @After
    public synchronized void teardown(Scenario scenario) throws IOException {


        String media = getTLDriver().stopRecordingScreen();

        if (scenario.isFailed()) {

            String folder_name = "videos";
            String timeStamp;
            timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
            new File(folder_name).mkdir();
            String scenario_name = scenario.getName();
            String[] first_word = scenario_name.split("_");
            String file_name = first_word[0];
            File videoShotName = new File(folder_name + "/" + file_name + "_" + timeStamp + ".mp4");

            FileOutputStream stream = new FileOutputStream(videoShotName);
            stream.write(Base64.decodeBase64(media));
            stream.close();
            System.out.println("Video recorded ...");
        }
        getTLDriver().resetApp();
    }


    @Then("^\"([^\"]*)\" adi kontrol edilir$")
    public void adiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlRoomName(arg0);
        reportLog(arg0 + " oda adi kontrol edilir");
    }

    @Then("^Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et$")
    public void listedeCihazlarinBagliOlmadiginiBelirtenIsaretininOlmadiginiKontrolEt() throws InterruptedException {
        newScenariosScreens.controlExclamationMark();
        reportLog("Listede cihazlarin bagli olmadigini belirten ! isaretinin olmadigini kontrol et");
    }

    @Then("^Rapple firin kontrolu$")
    public void rappleFirinKontrolu() throws InterruptedException {
        newScenariosScreens.controlOvenName();
        reportLog("Rapple firin kontrolu");
    }

    @Then("^Apollo kurutucu kontrolu$")
    public void apolloKurutucuKontrolu() throws InterruptedException {
        newScenariosScreens.controlDryerName();
        reportLog("Apollo kurutucu kontrolu");
    }

    @And("^Hesabim ekrani acilir$")
    public void hesabimEkraniAcilir() {
        newScenariosScreens.clickMyAccount();
        reportLog("Hesabim ekrani acilir");
    }

    @And("^Kaydet butonuna basilir$")
    public void kaydetButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickSaveButtom();
        reportLog("Kaydet butonuna basilir");
    }

    @And("^Rapple firin detayina gidilir$")
    public void rappleFirinDetayinaGidilir() throws InterruptedException {
        newScenariosScreens.clickOvenName();
        reportLog("Rapple firin detayina gidilir");
    }

    @Then("^Standby ikonunun gri oldugu kontrol edilir$")
    public void standbyIkonununGriOlduguKontrolEdilir() {
        newScenariosScreens.controlStandbyButtonEnable();
        reportLog("Standby ikonunun gri oldugu kontrol edilir");
    }

    @Then("^Firin texti kontrol edilir$")
    public void firinTextiKontrolEdilir() {
        newScenariosScreens.controlOvenLbl();
        reportLog("Firin texti kontrol edilir");
    }

    @And("^Standby tusuna basilir$")
    public void standbyTusunaBasilir() throws InterruptedException {
        newScenariosScreens.clickStandbyBtn();
        TimeUnit.SECONDS.sleep(10);
        reportLog("Standby tusuna basilir");
    }

    @Then("^Favoriler bolumunun var oldugunu kontrol et$")
    public void favorilerBolumununVarOldugunuKontrolEt() throws InterruptedException {
        newScenariosScreens.controlFavoriteIcn();
        reportLog("Favoriler bolumunun var oldugunu kontrol et");
    }

    @Then("^Calisma Modu Secimi bolumunun var oldugunu kontrol et$")
    public void calismaModuSecimiBolumununVarOldugunuKontrolEt() {
        newScenariosScreens.controlWorkingModeIcn();
        reportLog("Calisma Modu Secimi bolumunun var oldugunu kontrol et");
    }

    @Then("^Pisirme suresi \\(Saat : Dakika texti kontrol edilir$")
    public void pisirmeSuresiSaatDakikaTextiKontrolEdilir() {
        newScenariosScreens.controlCookingTimeLbl();
        reportLog("Pisirme suresi \\(Saat : Dakika texti kontrol edilir");
    }

    @Then("^Pause butonu kontrol edilir$")
    public void pauseButonuKontrolEdilir() {
        newScenariosScreens.controlPauseBtn();
        reportLog("Pause butonu kontrol edilir");
    }

    @Then("^El ikonu kontrol edilir$")
    public void elIkonuKontrolEdilir() {
        newScenariosScreens.controlHandIcn();
        reportLog("El ikonu kontrol edilir");
    }

    @Then("^Stop ikonu kontrol edilir$")
    public void stopIkonuKontrolEdilir() {
        newScenariosScreens.controlStopBtn();
        reportLog("Stop ikonu kontrol edilir");
    }

    @Then("^Baslat butonu kontrol edilir$")
    public void baslatButonuKontrolEdilir() {
        newScenariosScreens.controlStartBtn();
        reportLog("Baslat butonu kontrol edilir");
    }

    @And("^El ikonuna basilir$")
    public void elIkonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickHandbtn();
        reportLog("El ikonuna basilir");
    }

    @And("^Program static olarak degistirilir$")
    public void programStaticOlarakDegistirilir() throws InterruptedException {
        newScenariosScreens.changeProgramme();
        reportLog("Program static olarak degistirilir");
    }

    @And("^Sicaklik degeri geri degistirilir$")
    public void sicaklikDegeriGeriDegistirilir() throws InterruptedException {
        newScenariosScreens.changeTempBack();
        reportLog("Sicaklik degeri geri degistirilir");
    }
/* koray
    @And("^Devam butonuna basilir$")
   public void devamButonunaBasilir() {
        newScenariosScreens.clickGoBtn();
        reportLog("Devam butonuna basilir");
    }
*/

    @And("^Stop butonuna basilir$")
    public void stopButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickStop();
        reportLog("Program stop moduna alinir");
    }

    @Then("^Model numarasi kontrol edilir$")
    public void modelNumarasiKontrolEdilir() {
        newScenariosScreens.controlModelNo();
        reportLog("Model numarasi kontrol edilir");
    }

    @Then("^Versiyon numarasi kontrol edilir$")
    public void versiyonNumarasiKontrolEdilir() {
        newScenariosScreens.controlVersionNo();
        reportLog("Versiyon numarasi kontrol edilir");
    }

    @Then("^Digital kimlik no kontrol edilir$")
    public void digitalKimlikNoKontrolEdilir() {
        newScenariosScreens.controlDigitalIdNo();
        reportLog("Digital kimlik no kontrol edilir");
    }

    @When("^Apolo kurutucu detayina gidilir$")
    public void apoloKurutucuDetayinaGidilir() throws InterruptedException {
        newScenariosScreens.clickDryer();
        reportLog("Apolo kurutucu detayina gidilir");
    }

    @And("^Cihaz detayi oturma odasi adi kontrol edilir$")
    public void cihazDetayiOturmaOdasiAdiKontrolEdilir() {
        newScenariosScreens.controlDetailRoomName();
        reportLog("Cihaz detayi oturma odasi adi kontrol edilir");
    }

    @When("^Kurutucu on off butonuna basilir$")
    public void kurutucuOnOffButonunaBasilir() {
        newScenariosScreens.clickDryerOnOffBtn();
        reportLog("Kurutucu on off butonuna basilir");
    }

    @Then("^Kurutucu arkaplana atilir$")
    public void kurutucuArkaplanaAtilir() {
        newScenariosScreens.backgroundApp();
        reportLog("Kurutucu arkaplana atilir");
    }

    @Then("^\"([^\"]*)\" versiyon numarasi kontrol edilir$")
    public void versiyonNumarasiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlVersionNo(arg0);
        reportLog(arg0 + "versiyon numarasi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" Digital kimlik no kontrol edilir$")
    public void digitalKimlikNoKontrolEdilir(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        newScenariosScreens.controlDigitalIdNo(arg0);
        //throw new PendingException();
        reportLog(arg0 + "Digital kimlik no kontrol edilir");
    }

    @Then("^\"([^\"]*)\" Model numarasi kontrol edilir$")
    public void modelNumarasiKontrolEdilir(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        newScenariosScreens.controlModelNo(arg0);
        //throw new PendingException();
        reportLog(arg0 + "Model numarasi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" urun adi kontrol edilir$")
    public void urunAdiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog(arg0 + " urun adi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" program adi kontrol edilir$")
    public void programAdiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlTextOnScreenWithScroll(arg0);
        reportLog(arg0 + "program adi kontrol edilir");
    }

    @And("^Bildirim tercihlerine gidilir$")
    public void bildirimTercihlerineGidilir() throws InterruptedException {
        newScenariosScreens.clickNotificationPref();
        reportLog("Bildirim tercihlerine gidilir");
    }

    @And("^Kapak acik bildirimi aktif edilir$")
    public void kapakAcikBildirimiAktifEdilir() throws InterruptedException {
        newScenariosScreens.clickNotifyButton();
        reportLog("Kapak acik bildirimi aktif edilir");
    }

    @And("^Bildirim kaydet butonuna basilir$")
    public void bildirimKaydetButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickSaveNotyButtom();
        reportLog("Bildirim kaydet butonuna basilir");
    }

    @Then("^Kapak acik bildirimi aktif kontrolu$")
    public void kapakAcikBildirimiAktifKontrolu() throws InterruptedException {
        newScenariosScreens.controlOpenNoty();
        reportLog("Kapak acik bildirimi aktif kontrolu");
    }

    @Then("^Kapak acik bildirimi kapali kontrolu$")
    public void kapakAcikBildirimiKapaliKontrolu() throws InterruptedException {
        newScenariosScreens.controlOffNoty();
        reportLog("Kapak acik bildirimi kapali kontrolu");
    }

    @When("^Firini mutfak odasina tasi$")
    public void firiniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.changeRoomToKitchen();
        reportLog("Firini mutfak odasina tasi");
    }

    @And("^Mutfak odasina gidilir$")
    public void mutfakOdasinaGidilir() throws InterruptedException {
        commonfunc.wait_element("Oturma Odası");
        newScenariosScreens.gotoKitchen();
        reportLog("Mutfak odasina gidilir --- BURAYI DUZENLE");
    }

    @And("^Firini oturma odasina geri tasi$")
    public void firiniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoLivingRoom();
        reportLog("Firini oturma odasina geri tasi");
    }

    @And("^Safir buzdolabi detayina gidilir$")
    public void safirBuzdolabiDetayinaGidilir() throws InterruptedException {
        newScenariosScreens.clickRefrigeratorName();
        reportLog("Safir buzdolabi detayina gidilir");
    }

    @Then("^yardimci fonksiyonlar ekraninda alisveris modu text kontrolu yapilir$")
    public void yardimciFonksiyonlarEkranindaAlisverisModuTextKontroluYapilir() {
        newScenariosScreens.controlShoppingMode();
        reportLog("yardimci fonksiyonlar ekraninda alisveris modu text kontrolu yapilir");
    }

    @Then("^Sogutucu sicakligin dort olarak ayarlandigi kontrol edilir$")
    public void sogutucuSicakliginDortOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefCooller1Deg();
        reportLog("Sogutucu sicakligin dort olarak ayarlandigi kontrol edilir");
    }

    @Then("^Sogutucu sicakligin bir olarak ayarlandigi kontrol edilir$")
    public void sogutucuSicakliginBirOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefCoollerOneDeg();
        reportLog("Sogutucu sicakligin bir olarak ayarlandigi kontrol edilir");
    }

    @And("^Buzdolabi kapak acik bildirimi aktif edilir$")
    public void buzdolabiKapakAcikBildirimiAktifEdilir() throws InterruptedException {
        newScenariosScreens.clickRefDoorOpenNoty();
        reportLog("Buzdolabi kapak acik bildirimi aktif edilir");
    }

    @Then("^Buzdolabi kapak acik bildirimi aktif kontrolu$")
    public void buzdolabiKapakAcikBildirimiAktifKontrolu() throws InterruptedException {
        newScenariosScreens.controlRefDoorOpenNotfy();
        reportLog("Buzdolabi kapak acik bildirimi aktif kontrolu");
    }

    @Then("^Buzdolabi kapak acik bildirimi pasif kontrolu$")
    public void buzdolabiKapakAcikBildirimiPasifKontrolu() throws InterruptedException {
        newScenariosScreens.controlRefDoorOffNotfy();
        reportLog("Buzdolabi kapak acik bildirimi pasif kontrolu");
    }

    @When("^Buzdolabini mutfak odasina tasi$")
    public void buzdolabiniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.changeRefRoom();
        reportLog("Buzdolabini mutfak odasina tasi");
    }

    @And("^Buzdolabini oturma odasina geri tasi$")
    public void buzdolabiniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.changeRefRoomBack();
        reportLog("Buzdolabini oturma odasina geri tasi");
    }

    @And("^Cihaz ayarlari secilir$")
    public void cihazAyarlariSecilir() {
        newScenariosScreens.clickDeviceSetting();
        reportLog("Cihaz ayarlari secilir");
    }

    @And("^Bekleteme suresi bes dakika olarak ayarlanir$")
    public void bekletemeSuresiBesDakikaOlarakAyarlanir() throws InterruptedException {
        newScenariosScreens.clickDoorOpenMin();
        reportLog("Bekleteme suresi bes dakika olarak ayarlanir");
    }

    @Then("^Bekleme suresinin halen bes dakika oldugu kontrol edilir$")
    public void beklemeSuresininHalenBesDakikaOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlWaitTime();
        reportLog("Bekleme suresinin halen bes dakika oldugu kontrol edilir");
    }

    @And("^Bekleteme suresi bir dakika olarak ayarlanir$")
    public void bekletemeSuresiBirDakikaOlarakAyarlanir() throws InterruptedException {
        newScenariosScreens.clickDoorOpenMinOne();
        reportLog("Bekleteme suresi bir dakika olarak ayarlanir");
    }

    @Then("^Bekleme suresinin halen bir dakika oldugu kontrol edilir$")
    public void beklemeSuresininHalenBirDakikaOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlWaitOne();
        reportLog("Bekleme suresinin halen bir dakika oldugu kontrol edilir");
    }

    @And("^Mutfak cihazlari secilir$")
    public void mutfakCihazlariSecilir() {
        newScenariosScreens.clickKitchenDevices();
        reportLog("Mutfak cihazlari secilir");
    }

    @And("^Buzdolabi secilir$")
    public void buzdolabiSecilir() {
        newScenariosScreens.clickRef();
        reportLog("Buzdolabi secilir");
    }

    @And("^SKU girilir$")
    public void skuGirilir() {
        newScenariosScreens.sendSKU();
        reportLog("SKU girilir");
    }

    @Then("^Nasil cihaz ekleyecegim yazisi kontrol edilir$")
    public void nasilCihazEkleyecegimYazisiKontrolEdilir() {
        newScenariosScreens.controlHowToAddDeviceText();
        reportLog("Nasil cihaz ekleyecegim yazisi kontrol edilir");
    }

    @Then("^Iptal tusu kontrol edilir$")
    public void iptalTusuKontrolEdilir() {
        newScenariosScreens.controlCancelButton();
        reportLog("Iptal tusu kontrol edilir");
    }

    @Then("^Tum tarifler basligi texti kontrol edilir$")
    public void tumTariflerBasligiTextiKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlAllRecipesTitle();
        reportLog("Tum tarifler basligi texti kontrol edilir");
    }

    @Then("^Tum tarifler alt basligi kontrol edilir$")
    public void tumTariflerAltBasligiKontrolEdilir() {
        newScenariosScreens.controlHeaderAllRecipes();
        reportLog("Tum tarifler alt basligi kontrol edilir");
    }

    @And("^Buzdolabi sogutucu swipe yapilir$")
    public void buzdolabiSogutucuSwipeYapilir() throws InterruptedException {
        newScenariosScreens.swipeDegree();
        reportLog("Simit tarifine basilir");
    }

    @Then("^Uygulama kill edilip (\\d+) sn sonra acilir$")
    public void uygulamaKillEdilipOtuzSnSonraAcilir(int arg0) throws InterruptedException {
        newScenariosScreens.killAndRunApp(arg0);
        reportLog("Uygulama kill edilip " + arg0 + " sn sonra acilir");
    }

    @Then("^Pamuklu programi secilir$")
    public void pamukluProgramiSecilir() {
        newScenariosScreens.clickCottonProgram();
        reportLog("Pamuklu programi secilir");
    }

    @Then("^Kurutma seviyesi secilir$")
    public void kurutmaSeviyesiSecilir() throws InterruptedException {
        newScenariosScreens.clickDryingLevel();
        reportLog("Kurutma seviyesi secilir");
    }
/*koray
    @Then("^Kurutucu program baslatilir$")
    public void kurutucuProgramBaslatilir() throws InterruptedException{

        int try_count = newScenariosScreens.clickStartprogram();

        if(try_count== 0)
            reportLog("Kurutucu program baslatilir");
        else
            reportLog_warning("Kurutucu program baslatilir Tekrarlandı :" + try_count);

    }
*/

    @Then("^Play ikonu kontrol edilir$")
    public void playIkonuKontrolEdilir() {
        newScenariosScreens.checkPlayIkon();
        reportLog("Play ikonu kontrol edilir");
    }

    @Then("^Karma programi secilir$")
    public void karmaProgramiSecilir() {
        newScenariosScreens.clickMixProgram();
        reportLog("Karma programi secilir");
    }

    @Then("^Hassas kurutma modu on yapilir$")
    public void hassasKurutmaModuOnYapilir() {
        newScenariosScreens.clickDelicateDrySwitchButton();
        reportLog("Hassas kurutma modu on yapilir");
    }

    @Then("^Karma program adi kontrol edilir$")
    public void karmaProgramAdiKontrolEdilir() {
        newScenariosScreens.checkDryerMixProgramName();
        reportLog("Karma program adi kontrol edilir");
    }

    @Then("^Program kurutuyor asamasi kontrol edilir$")
    public void programKurutuyorAsamasiKontrolEdilir() {
        newScenariosScreens.checkProgramDryingState();
        reportLog("Program kurutuyor asamasi kontrol edilir");
    }

    @Then("^Program sonlandirilir$")
    public void programSonlandirilir() throws InterruptedException {
        newScenariosScreens.clickStop();
        reportLog("Program sonlandirilir");
    }

    @Then("^Ayarlar menusune tiklanir$")
    public void ayarlarMenusuneTiklanir() throws InterruptedException {
        newScenariosScreens.clickSettingButton();
        reportLog("Ayarlar menusune tiklanir");
    }

    @Then("^Indirilen program yonetimine tiklanir$")
    public void indirilenProgramYonetimineTiklanir() {
        newScenariosScreens.clickDownloadProgram();
        reportLog("Indirilen program yonetimine tiklanir");
    }

    @Then("^Havlu programi secilir$")
    public void havluProgramiSecilir() {
        newScenariosScreens.clickTowelProgram();
        reportLog("Havlu programi secilir");
    }

    @Then("^Program indir butonuna basilir$")
    public void programIndirButonunaBasilir() {
        newScenariosScreens.clickStartDownloadProgram();
        reportLog("Program indir butonuna basilir");
    }

    @Then("^Yorgan programi secilir$")
    public void yorganProgramiSecilir() {
        newScenariosScreens.clickQuiltProgram();
        reportLog("Yorgan programi secilir");
    }

    @Then("^Sihirbaz secimine tiklanir$")
    public void sihirbazSecimineTiklanir() {
        newScenariosScreens.clickWizard();
        reportLog("Sihirbaz secimine tiklanir");
    }

    @Then("^Sentetik secimi yapilir$")
    public void sentetikSecimiYapilir() {
        newScenariosScreens.clickWizardSyntetic();
        reportLog("Sentetik secimi yapilir");
    }

    @Then("^Yuk secin butonuna basilir$")
    public void yukSecinButonunaBasilir() {
        newScenariosScreens.clickWizartNextBtn1();
        reportLog("Yuk secin butonuna basilir");
    }

    @Then("^Orta secimine basilir$")
    public void ortaSecimineBasilir() {
        newScenariosScreens.clickModerateWizardBtn2();
        reportLog("Orta secimine basilir");
    }

    @Then("^Kurutma seviyesi secin butonuna basilir$")
    public void kurutmaSeviyesiSecinButonunaBasilir() {
        newScenariosScreens.clickDryLevelWizardBtn3();
        reportLog("Kurutma seviyesi secin butonuna basilir");
    }

    @Then("^Utu kurulugu secimi yapilir$")
    public void utuKuruluguSecimiYapilir() {
        newScenariosScreens.clickIronDryWizardBtn4();
        reportLog("Utu kurulugu secimi yapilir");
    }

    @Then("^Size uygun programlar secimi yapilir$")
    public void sizeUygunProgramlarSecimiYapilir() {
        newScenariosScreens.clickRecommendedProgramsWizardBtn5();
        reportLog("Size uygun programlar secimi yapilir");
    }

    @When("^Firin icin OnOff kontrolu yapilir$")
    public void firinIcinOnOffKontroluYapilir() {
        newScenariosScreens.controlOvenOnOffState();
        reportLog("Firin icin OnOff kontrolu yapilir");
    }

    @Then("^Program listesi kontrol edilir$")
    public void programListesiKontrolEdilir() throws InterruptedException {
        newScenariosScreens.checkProgramList();
        reportLog("Program listesi kontrol edilir");
    }

    @Then("^Kirisik onleme secenegine tiklanir$")
    public void KirisikOnlemeSecenegineTiklanir() {
        newScenariosScreens.clickKirisikOnleme();
        reportLog("Kirisik onleme secenegine tiklanir");
    }

    @Then("^Kirisik onleme default degeri set edilir$")
    public void kirisikOnlemeDefaultDegeriSetEdilir() {
        newScenariosScreens.clickSetKirisikOnleme();
        reportLog("Kirisik onleme default degeri set edilir");
    }

    @Then("^Kurutucu fonksiyon degeri kontrol edilir$")
    public void kurutucuFonksiyonDegeriKontrolEdilir() {
        newScenariosScreens.checkDryerFunctionValue();
        reportLog("Kurutucu fonksiyon degeri kontrol edilir");
    }

    @Then("^Zaman erteleme butonu kontrol edilir$")
    public void zamanErtelemeButonuKontrolEdilir() {
        newScenariosScreens.checkDryerTimeDelay();
        reportLog("Zaman erteleme butonu kontrol edilir");
    }

    @Then("^Kurutucu urun ana ekranina donulur$")
    public void kurutucuUrunAnaEkraninaDonulur() {
        newScenariosScreens.clickreturnDryerScreen();
        reportLog("Kurutucu urun ana ekranina donulur");
    }

    @Then("^Urun ana ekranina donulur$")
    public void urunAnaEkraninaDonulur() {
        newScenariosScreens.clickReturnHomeScreen();
        reportLog("Urun ana ekranina donulur");
    }

    @Then("^Kurutucu program iptal edilir$")
    public void kurutucuProgramIptalEdilir() {
        newScenariosScreens.clickDryerCancelButton();
        reportLog("Kurutucu program iptal edilir");
    }

    @Then("^Program indirildikten sonra tamam butonuna basilir$")
    public void programIndirildiktenSonraTamamButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickOkAfterDownloadProgram();
        reportLog("Program indirildikten sonra tamam butonuna basilir");
    }

    @Then("^Cihazlar ekraninda buzdolabi sicakligin dort olarak ayarlandigi kontrol edilir$")
    public void cihazlarEkranindaBuzdolabiSicakliginDortOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefTempDevList();
        reportLog("Cihazlar ekraninda buzdolabi sicakligin dort olarak ayarlandigi kontrol edilir");
    }

    @Then("^Buzdolabi ekraninda sicakligin dort olarak ayarlandigi kontrol edilir$")
    public void buzdolabiEkranindaSicakliginDortOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlTempInRefScreen();
        reportLog("Buzdolabi ekraninda sicakligin dort olarak ayarlandigi kontrol edilir");
    }

    @Then("^Buzdolabi ekraninda sicakligin eksi on sekiz olarak ayarlandigi kontrol edilir$")
    public void buzdolabiEkranindaSicakliginEksiOnSekizOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlFreezerInRefScreen();
        reportLog("Buzdolabi ekraninda sicakligin eksi on sekiz olarak ayarlandigi kontrol edilir");
    }

    @Then("^Cihazlar ekrarninda buzdolabi dondurucu sicakligin eksi on sekiz olarak ayarlandigi kontrol edilir$")
    public void cihazlarEkrarnindaBuzdolabiDondurucuSicakliginEksiOnSekizOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefFreezerTempDevList();
        reportLog("Cihazlar ekrarninda buzdolabi dondurucu sicakligin eksi on sekiz olarak ayarlandigi kontrol edilir");
    }

    @And("^Kapi acik uyarisi off yapilir$")
    public void kapiAcikUyarisiOffYapilir() {
        newScenariosScreens.click_doorNoty();
        reportLog("Kapi acik uyarisi off yapilir");
    }

    @Then("^\"([^\"]*)\" urun kontrolu$")
    public void urunKontrolu(String arg0) throws Throwable {
        newScenariosScreens.urunKontrolu(arg0);
        reportLog(arg0 + " urunu kontrolu");
    }

    @When("^\"([^\"]*)\" detayina gidilir$")
    public void detayinaGidilir(String arg0) throws Throwable {
        newScenariosScreens.clickProduct(arg0);
        reportLog(arg0 + " detayina gidilir");
    }

    @Then("^Sogutucu secenekleri kapatilir$")
    public void sogutucuSecenekleriKapatilir() {
        newScenariosScreens.clickCloseCoolerSet();
    }

    @Then("^Dondurucu secenekleri kapatilir$")
    public void dondurucuSecenekleriKapatilir() {
        newScenariosScreens.clickCloseFreezerSet();
    }


    @Then("^Sogutucu sicakligin bes olarak ayarlandigi kontrol edilir$")
    public void sogutucuSicakliginBesOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefCooller5Deg();
    }

    @Then("^Dondurucu sicakligin eksi on dokuz olarak ayarlandigi kontrol edilir$")
    public void dondurucuSicakliginEksiOnDokuzOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefCoollerMinus19Deg();
    }

    @Then("^Dondurucu sicakligin eksi on sekiz olarak ayarlandigi kontrol edilir$")
    public void dondurucuSicakliginEksiOnSekizOlarakAyarlandigiKontrolEdilir() {
        newScenariosScreens.controlRefCoollerMinus18Deg();
    }

    @Then("^Buzdolabi sogutucuya tiklanir$")
    public void buzdolabiSogutucuyaTiklanir() {
        newScenariosScreens.coolerClick();
    }

    // Hayri Odabaþ

    @When("^Posi klima alanini yanindaki standby tusuna basarak tekrar kapat texti kontrolu$")
    public void posiKlimaAlaniniYanindakiStandbyTusunaBasarakTekrarKapatTextiKontrolu() throws InterruptedException {
        newScenariosScreens.clickStandbyBtnOff();
        reportLog("Posi klima alanini yanindaki standby tusuna basarak tekrar kapat texti kontrolu");
    }

    @Then("^Cihazlarim ekraninda sicakligin (\\d+) derece oldugu kontrol edilir$")
    public void cihazlarimEkranindaSicakliginDereceOlduguKontrolEdilir(int arg0) {
        newScenariosScreens.controlAirConTemp(arg0);
        reportLog("Cihazlarim ekraninda sicakligin 16 derece oldugu kontrol edilir");
    }

    @And("^Kumanda butonuna basilir$")
    public void kumandaButonunaBasilir() {
        newScenariosScreens.clickManualBtn();
        reportLog("Kumanda butonuna basilir");
    }

    @Then("^Cihazlarim ekraninda sicakligin (\\d+) derece olarak degistigi kontrol edilir$")
    public void cihazlarimEkranindaSicakliginDereceOlarakDegistigiKontrolEdilir(int arg0) {
        newScenariosScreens.controlNewSetTemp();
        reportLog("Cihazlarim ekraninda sicakligin 17 derece olarak degistigi kontrol edilir");
    }

    @Then("^Sayfanin altinda bulunan standby tusu ile kapatilir$")
    public void sayfaninAltindaBulunanStandbyTusuIleKapatilir() {
        newScenariosScreens.clickDetailStandByBtn();
        reportLog("Sayfanin altinda bulunan standby tusu ile kapatilir");
    }

    @And("^Calistirma modu kurutma secilir$")
    public void calistirmaModuKurutmaSecilir() throws InterruptedException {
        newScenariosScreens.clickWorkingModeDryer();
        reportLog("Calistirma modu kurutma secilir");
    }

    @And("^Sogutma modu secilir$")
    public void sogutmaModuSecilir() throws InterruptedException {
        newScenariosScreens.setCoolingMod();
        reportLog("Sogutma modu secilir");
    }

    @And("^Sicaklik (\\d+) derece ayarlanir$")
    public void sicaklikDereceAyarlanir(int arg0) throws InterruptedException {
        newScenariosScreens.setCoolingNewDegree();
        newScenariosScreens.setCoolingNewDegree();
        reportLog("Sicaklik (\\d+) derece ayarlanir");
    }

    @Then("^Uyku modu yeni secimi kapali oldugu kontrol edilir$")
    public void uykuModuYeniSecimiKapaliOlduguKontrolEdilir() {
        newScenariosScreens.controlNewSleepingMode();
        reportLog("Uyku modu yeni secimi kapali oldugu kontrol edilir");
    }

    @Then("^Dikey hava akisi yeni secimi kapali oldugu kontrol edilir$")
    public void dikeyHavaAkisiYeniSecimiKapaliOlduguKontrolEdilir() {
        newScenariosScreens.controlNewVerticalAir();
        reportLog("Sogutma modunda oldugu kontrol edilir");
    }

    @Then("^Zamanlayici yeni secimi (\\d+) oldugu kontrol edilir$")
    public void zamanlayiciYeniSecimiOlduguKontrolEdilir(int arg0) {
        newScenariosScreens.controlNewTimer();
        reportLog("Dikey hava akisi yeni secimi kapali oldugu kontrol edilir");
    }

    @Given("^Uygulamaya \"([^\"]*)\" mail hesabiyla ve \"([^\"]*)\" sifresiyle login olunur$")
    public void uygulamayaMailHesabiylaVeSifresiyleLoginOlunur(String arg0, String arg1) throws Throwable {
        commonfunc.loginMail(arg0, arg1);
        reportLog("Uygulamaya mail hesabiyla ve sifresiyle login olunur");
    }

    @Given("^Uygulamaya \"([^\"]*)\" mail hesabi ve \"([^\"]*)\" sifresiyle login denemesi yapılır$")
    public void uygulamayaMailHesabiVeSifresiyleLoginDenemesiYapilir(String arg0, String arg1) throws Throwable {
        commonfunc.loginInput(arg0, arg1);
        reportLog("Uygulamaya mail hesabiyla ve sifresiyle login girişi yapılır");
    }

    @Then("^Favori secimi ikonu kontrol edilir$")
    public void favoriSecimiIkonuKontrolEdilir() {
        newScenariosScreens.controlFavoritesIcon();
        reportLog("Favori secimi ikonu kontrol edilir");
    }

    @Then("^Hijyen texti kontrol edilir$")
    public void hijyenTextiKontrolEdilir() {
        newScenariosScreens.controlHijyenText();
        reportLog("Hijyen texti kontrol edilir");
    }

    @Then("^Yogun su texti kontrol edilir$")
    public void yogunSuTextiKontrolEdilir() {
        newScenariosScreens.controlYogunSuText();
        reportLog("Yogun su texti kontrol edilir");
    }

    @Then("^Hizli texti kontrol edilir$")
    public void hizliTextiKontrolEdilir() {
        newScenariosScreens.controlRapdidText();
        reportLog("Hizli texti kontrol edilir");
    }

    @Then("^Yarim Yuk texti kontrol edilir$")
    public void yarimYukTextiKontrolEdilir() {
        newScenariosScreens.controlHalfLoadText();
        reportLog("Yarim Yuk texti kontrol edilir");
    }

    @Then("^Sure texti kontrol edilir$")
    public void sureTextiKontrolEdilir() {
        newScenariosScreens.controlTime();
        reportLog("Sure texti kontrol edilir");
    }

    @Then("^Program baslat butonu oldugu kontrol edilir$")
    public void programBaslatButonuOlduguKontrolEdilir() {
        newScenariosScreens.controlProgramStartBtn();
        reportLog("Program baslat butonu oldugu kontrol edilir");
    }

    @Then("^Zaman oteleme butonu kontrol edilir$")
    public void zamanOtelemeButonuKontrolEdilir() {
        newScenariosScreens.controlTimeDelayBtn();
        reportLog("Zaman oteleme butonu kontrol edilir");
    }

    @Then("^Superior Dry texti kontrol edilir$")
    public void superiorDryTextiKontrolEdilir() {
        newScenariosScreens.controlSuperiorDryText();
        reportLog("Superior Dry texti kontrol edilir");
    }

    @And("^Program secimi Hizli(\\d+) olarak ayarlanir$")
    public void programSecimiHizliOlarakAyarlanir(int arg0) throws InterruptedException {
        newScenariosScreens.setRapid40();
        reportLog("Program secimi Hizli(\\d+) olarak ayarlanir");
    }

    @And("^Superior Dry on yapilir$")
    public void superiorDryOnYapilir() {
        newScenariosScreens.clickSuperiorDryBtn();
        reportLog("Superior Dry on yapilir");
    }

    @And("^Bulasik makinesi hizli yardici fonksiyonu on yapilir$")
    public void bulasikMakinesiHizliYardiciFonksiyonuOnYapilir() {
        newScenariosScreens.clickBMrapid();
        reportLog("Bulasik makinesi hizli yardici fonksiyonu on yapilir");
    }

    @And("^Mukemmel kurutma yardici fonksiyonu on yapilir$")
    public void mukemmelKurutmaYardiciFonksiyonuOnYapilir() {
        newScenariosScreens.clickMukemmelKurutmaBtn();
        reportLog("Mukemmel kurutma yardici fonksiyonu on yapilir");
    }

/*koray
    @And("^Programi baslat butonuna basilir$")
    public void programiBaslatButonunaBasilir() {
        newScenariosScreens.clickBMIntensivePrg();
        reportLog("Programi baslat butonuna basilir");
    }
*/

    @Then("^Otomatik program kalan sure kontrol edilir$")
    public void otomatikProgramKalanSureKontrolEdilir() {
        newScenariosScreens.controlAutoPrgRemaming();
        reportLog("Otomatik program kalan sure kontrol edilir");
    }

    @And("^Program sonu home tusuna basilir$")
    public void programSonuHomeTusunaBasilir() {
        newScenariosScreens.clickProgramHomeBtn();
        reportLog("Program sonu home tusuna basilir");
    }

    @And("^Program Standby off yapilir$")
    public void programStandbyOffYapilir() {
        newScenariosScreens.programStandbyOffYapilir();
        reportLog("Program Standby off yapilir");
    }

    @Then("^Program baslat butonunun pasif oldugu kontrol edilir$")
    public void programBaslatButonununPasifOlduguKontrolEdilir() {
        newScenariosScreens.controlProgramStartBtnPassive();
        reportLog("Program baslat butonunun pasif oldugu kontrol edilir");
    }

    @And("^Zaman erteleme butonuna basilir$")
    public void zamanErtelemeButonunaBasilir() {
        newScenariosScreens.clickTimeDelayBtn();
        reportLog("Zaman erteleme butonuna basilir");
    }

    @And("^Saat bolumune girilir$")
    public void saatBolumuneGirilir() {
        newScenariosScreens.clickTimeArea();
        reportLog("Saat bolumune girilir");
    }

    @And("^Saati bir adim ilerletilir$")
    public void saatiBirAdimIlerletilir() throws InterruptedException {
        newScenariosScreens.setNewTime();
        reportLog("Saati bir adim ilerletilir");
    }

    @And("^Dakika on bes adim ilerletilir$")
    public void dakikaOnBesAdimIlerletilir() throws InterruptedException {
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        newScenariosScreens.setNewMinute();
        reportLog("Dakika on bes adim ilerletilir");
    }

    @And("^Tamam butonuna basilir$")
    public void tamamButonunaBasilir() {
        newScenariosScreens.clickOkBtn();
        reportLog("Tamam butonuna basilir");
    }

    @And("^Bulasik tipi gunluk secilir$")
    public void bulasikTipiGunlukSecilir() {
        newScenariosScreens.clickDaily();
        reportLog("Bulasik tipi gunluk secilir");
    }

    @And("^Kir seviyesi secin butonuna basilir$")
    public void kirSeviyesiSecinButonunaBasilir() {
        newScenariosScreens.clickKirSeviyesi();
        reportLog("Kir seviyesi secin butonuna basilir");
    }

    @And("^Kir seviyesi Cok secilir$")
    public void kirSeviyesiCokSecilir() {
        newScenariosScreens.clickKirSeviyesiCok();
        reportLog("Kir seviyesi Cok secilir");
    }

    @And("^Kalp ikonuna basilir$")
    public void kalpIkonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickSaveFavorite();
        reportLog("Kalp ikonuna basilir");
    }

    @And("^Favori ekle ekraninda program adi Fav Yikama yazilir$")
    public void favoriEkleEkranindaProgramAdiFavYikamaYazilir() {
        newScenariosScreens.favoritePrgName("Fav Yikama");
        reportLog("Favori ekle ekraninda program adi Fav Yikama yazili");
    }

    @And("^Favori ekle tamam butonuna basilir$")
    public void favoriEkleTamamButonunaBasilir() {
        newScenariosScreens.clickFavoriteOk();
        reportLog("Favorite ekle tamam butonuna basilir");
    }

    @And("^Favoriler butonuna basilir$")
    public void favorilerButonunaBasilir() {
        newScenariosScreens.clickFavorite();
        reportLog("Favoriler butonuna basilir");
    }

    @Then("^Favori ekraninda Fav Yikama yazdigini kontrol et$")
    public void favoriEkranindaFavYikamaYazdiginiKontrolEt() {
        newScenariosScreens.controlFavoritePrgName();
        reportLog("Favori ekraninda Fav Yikama yazdigini kontrol et");
    }

    @And("^Favori ekraninda Play butonuna basilir$")
    public void favoriEkranindaPlayButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickFavoritePlayBtn();
        reportLog("Favori ekraninda Play butonuna basilir");
    }

    @And("^Arti butonuna basilir$")
    public void artiButonunaBasilir() {
        newScenariosScreens.clickPlusBtn();
        reportLog("Arti butonuna basilir");
    }

    @And("^Cop kovasi ikonuna basilir$")
    public void copKovasiIkonunaBasilir() {
        newScenariosScreens.clickCopBtn();
        reportLog("Cop kovasi ikonuna basilir");
    }

    @And("^Favori silme tamam butonuna basilir$")
    public void favoriSilmeTamamButonunaBasilir() {
        newScenariosScreens.clickFavoriteDeleteOk();
        reportLog("Favori silme tamam butonuna basilir");
    }

    @Then("^Programlar Yogun (\\d+) yazdigi kontrol edilir$")
    public void programlarYogunYazdigiKontrolEdilir(int arg0) {
        newScenariosScreens.controlLastProgram();
        reportLog("Programlar Yogun yazdigi kontrol edilir");
    }

    @And("^Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir$")
    public void cihazAyarlariEkranindaOtomatikKapiAcmaKapaliSecilir() {
        newScenariosScreens.setOtomatikKapiAcma();
        reportLog("Cihaz ayarlari ekraninda otomatik kapi acma Kapali secilir");
    }

    @Then("^Otomatik kapi acma kapali oldugu kontrol edilir$")
    public void otomatikKapiAcmaKapaliOlduguKontrolEdilir() {
        newScenariosScreens.controlAutoOpenDoorNot();
        reportLog("Otomatik kapi acma kapali oldugu kontrol edilir");
    }

    @Then("^Cihaz ayarlari ekraninda parlatici seviyesini (\\d+) kademede oldugunu kontrol et$")
    public void cihazAyarlariEkranindaParlaticiSeviyesiniKademedeOldugunuKontrolEt(int arg0) {
        newScenariosScreens.cihazAyarlariEkranindaParlaticiSeviyesiniKademedeOldugunuKontrolEt();
        reportLog("Cihaz ayarlari ekraninda parlatici seviyesini kademede oldugunu kontrol et");
    }

    @And("^Cihaz ayarlari ekraninda parlatici seviyesini ilk kademeye geri alinir$")
    public void cihazAyarlariEkranindaParlaticiSeviyesiniIlkKademeyeGeriAlinir() throws InterruptedException {
        newScenariosScreens.setFirstLvl();
        reportLog("Cihaz ayarlari ekraninda parlatici seviyesini kademeye getirilir");
    }

    @When("^Bulasik makinesini mutfak odasina tasi$")
    public void bulasikMakinesiniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.changeRoomDishWasher();
        reportLog("Bulasik makinesini mutfak odasina tasi");
    }

    @And("^Bulasik makinesini oturma odasina geri tasi$")
    public void bulasikMakinesiniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoLivingRoomDishWasher();
        reportLog("Bulasik makinesini oturma odasina geri tasi");
    }

    @And("^Uyari tercihleri butonuna basilir$")
    public void uyariTercihleriButonunaBasilir() {
        newScenariosScreens.clickUyariTercihleri();
        reportLog("Uyari tercihleri butonuna basilir");
    }

    @And("^Tuz yok uyarisi off yapilir$")
    public void tuzYokUyarisiOffYapilir() throws InterruptedException {
        newScenariosScreens.clickSaltWarningOff();
        reportLog("Tuz yok uyarisi off yapilir");
    }

    @Then("^Tuz yok uyarisi kontrol edilir$")
    public void tuzYokUyarisiKontrolEdilir() {
        newScenariosScreens.conrolNoSaltWarning();
        reportLog("Tuz yok uyarisi kontrol edilir");
    }

    @And("^Urun bekleme moduna alinir$")
    public void urunBeklemeModunaAlinir() {
        newScenariosScreens.clickProductPause();
        reportLog("Urun bekleme moduna alinir");
    }

    @And("^Program bekleme moduna alinir$")
    public void programBeklemeModunaAlinir() throws InterruptedException {
        newScenariosScreens.clickPause();
        reportLog("Program bekleme moduna alinir");
    }

    @Then("^CM Program texti kontrol edilir$")
    public void cmProgramTextiKontrolEdilir() {
        newScenariosScreens.controlWashingMachineProgramName();
        reportLog("CM Program texti kontrol edilir");
    }

    @Then("^CM Sicaklik texti kontrol edilir$")
    public void cmSicaklikTextiKontrolEdilir() {
        newScenariosScreens.controlCMTmpreturText();
        reportLog("CM Sicaklik texti kontrol edilir");
    }

    @Then("^CM Devir texti kontrol edilir$")
    public void cmDevirTextiKontrolEdilir() {
        newScenariosScreens.controlCMSpinText();
        reportLog("CM Devir texti kontrol edilir");
    }

    @Then("^CM Buhar texti kontrol edilir$")
    public void cmBuharTextiKontrolEdilir() {
        newScenariosScreens.controlCMTSteamText();
        reportLog("CM Buhar texti kontrol edilir");
    }

    @Then("^On yikama texti kontrol edilir$")
    public void onYikamaTextiKontrolEdilir() {
        newScenariosScreens.controlCMPreWashText();
        reportLog("On yikama texti kontrol edilir");
    }

    @Then("^Ilave su texti kontrol edilir$")
    public void ilaveSuTextiKontrolEdilir() {
        newScenariosScreens.controlCMExtraWaterText();
        reportLog("Ilave su texti kontrol edilir");
    }

    @Then("^\"([^\"]*)\" texti bulunup kontrol edilir$")
    public void TextiBulunupKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlTextOnScreenWithScroll(arg0);
        reportLog(arg0 + " texti kontrol edilir");
    }

    @When("^Camasir makinesini banyo odasina tasi$")
    public void camasirMakinesiniBanyoOdasinaTasi() throws InterruptedException {
        newScenariosScreens.changeRoomWashingMachine();
        reportLog("Camasir makinesini mutfak odasina tasi");

    }

    @And("^Banyo odasina gidilir$")
    public void banyoOdasinaGidilir() throws InterruptedException {
        newScenariosScreens.gotoBathroom();
        reportLog("Banyo odasina gidilir");
    }

    @And("^Camasir makinesini mutfak odasina geri tasi$")
    public void camasirMakinesiniMutfakOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoKitchenRoomWMWasher();
        reportLog("Camasir makinesini mutfak odasina geri tasi");
    }

    @Then("^Appbar subtitle Mutfak texti kontrol edilir$")
    public void appbarSubtitleMutfakTextiKontrolEdilir() {
        newScenariosScreens.controlAppbarSubTitleWashingMachineText();
        reportLog("Appbar subtitle Mutfak texti kontrol edilir");
    }

    @And("^Cihaz off ise standby tusuna basarak on konumuna getirilir$")
    public void cihazOffIseStandbyTusuIleOnKonumunaGetirilir() throws InterruptedException {
        newScenariosScreens.clickStandbyIfDeviceIsOff();
        reportLog("Cihaz off ise standby tusuna basarak on konumuna getirilir");
    }

    @Then("^Cihaz on ise standby tusuna basarak off konumuna getirilir$")
    public void cihazOnIseStandbyTusuIleOffKonumunaGetirilir() throws InterruptedException {
        newScenariosScreens.clickStandbyIfDeviceIsOn();
        reportLog("Cihaz on ise standby tusuna basarak off konumuna getirilir");
    }

    @Then("^Kalp ikonu kontrol edilir$")
    public void kalpIkonuKontrolEdilir() {
        newScenariosScreens.controlHeartIcon();
        reportLog("Kalp ikonu kontrol edilir");
    }

    @Then("^Favori program bilgi texti kontrol edilir$")
    public void favoriProgramBilgiTextiKontrolEdilir() {
        newScenariosScreens.controlnoFavoriteInst();
        reportLog("Favori program bilgi texti kontrol edilir");
    }


    @Then("^Program secenekleri bolumunun olmadigi kontrol edilir$")
    public void programSecenekleriBolumununOlmadigiKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlProgramOptionFrame();
        reportLog("Program secenekleri bolumunun olmadigi kontrol edilir");
    }

    @Then("^Program kalan sure \"([^\"]*)\" kontrol edilir$")
    public void programKalanSureKontrolEdilir(String arg0) throws Throwable {
        //newScenariosScreens.controlProgramRemainingTime(arg0);
        reportLog("Program kalan sure " + arg0 + " kontrol edilir - DUZENNNNNLEEEEE");
    }

    @And("^Cihazlar ikonuna basilir$")
    public void cihazlarIkonunaBasilir() {
        newScenariosScreens.clickDevicesBtn();
        reportLog("Cihazlar ikonuna basilir");
    }

    @Then("^Appbar \"([^\"]*)\" texti kontrol edilir$")
    public void appbarTextiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog(arg0 + " Appbar texti kontrol edilir");
    }

    @And("^Cikis butonuna basilir$")
    public void cikisButonunaBasilir() {
        newScenariosScreens.clickSignOut();
        reportLog("Cikis butonuna basilir");
    }

    @And("^Kontrol Paneli butonuna basilir$")
    public void kontrolPaneliButonunaBasilir() {
        newScenariosScreens.clickControlPanel();
        reportLog("Kontrol Paneli butonuna basilir");
    }

    @And("^Kullanicilar butonuna basilir$")
    public void kullanicilarButonunaBasilir() {
        newScenariosScreens.clickUsers();
        reportLog("Kullanicilar butonuna basilir");
    }

    @And("^Kullanici adina basilir$")
    public void kullaniciAdinaBasilir() {
        newScenariosScreens.clickUserName();
        reportLog("Kullanici adina basilir");
    }

    @And("^Destek Merkezi butonuna basilir$")
    public void destekMerkeziButonunaBasilir() {
        newScenariosScreens.clickSupport();
        reportLog("Destek Merkezi butonuna basilir");
    }


    @And("^Iletisim Secenekleri butonuna basilir$")
    public void iletisimSecenekleriButonunaBasilir() {
        newScenariosScreens.clickCommunicationOptions();
        reportLog("Iletisim Secenekleri butonuna basilir");
    }

    @And("^\"([^\"]*)\" textine basilir$")
    public void textineBasilir(String arg0) throws Throwable {
        newScenariosScreens.clickText(arg0);
        reportLog(arg0 + " textine basilir");
    }

    @And("^Kullanici sozlesmesine basilir$")
    public void kullaniciSozlesmesineBasilir() {
        newScenariosScreens.clickAgreement();
        reportLog("Kullanici sozlesmesine basilir");
    }

    @Then("^Gizlilik politikasi metni kontrol edilir$")
    public void gizlilikPolitikasiMetniKontrolEdilir() {
        newScenariosScreens.controlAgreementContent();
        reportLog("Gizlilik politikasi metni kontrol edilir");
    }

    @And("^Can ikonuna basilir$")
    public void canIkonunaBasilir() {
        newScenariosScreens.clickBellIcon();
        reportLog("Can ikonuna basilir");
    }

    @And("^Yemek tarifleri ok butonuna basilir$")
    public void yemekTarifleriOkButonunaBasilir() {
        newScenariosScreens.clickRecipesArrow();
        reportLog("Yemek tarifleri ok butonuna basilir");
    }

    @Then("^Buhar yardimci fonsiyonunun kapali oldugu kontrol edilir$")
    public void buharYardimciFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlSteamOff();
        reportLog("Buhar yardimci fonsiyonunun kapali oldugu kontrol edilir");
    }

    @And("^Check isareti secili oldugu kontrol edilir$")
    public void checkIsaretiSeciliOlduguKontrolEdilir() {
        newScenariosScreens.controlAgreementChecked();
        reportLog("Check isareti secili oldugu kontrol edilir");
    }

    @Then("^On yikananin kapali oldugu kontrol edilir$")
    public void onYikananinKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlPreWashOff();
        reportLog("On yikananin kapali oldugu kontrol edilir");
    }

    @Then("^Ilave su yardimci fonsiyonunun kapali oldugu kontrol edilir$")
    public void ilaveSuYardimciFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlExtraWaterOff();
        reportLog("Ilave su yardimci fonsiyonunun kapali oldugu kontrol edilir");
    }

    @Then("^Hizli yikama fonsiyonunun kapali oldugu kontrol edilir$")
    public void hizliYikamaFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlRapidWashOff();
        reportLog("Hizli yikama fonsiyonunun kapali oldugu kontrol edilir");
    }

    @Then("^Yogun yardimci fonsiyonunun acik oldugu kontrol edilir$")
    public void yogunYardimciFonsiyonununAcikOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlIntenceOn();
        reportLog("Yogun yardimci fonsiyonunun acik oldugu kontrol edilir");
    }

    @Then("^Akilli Kirisik Azaltma yardimci fonsiyonunun kapali oldugu kontrol edilir$")
    public void akilliKirisikAzaltmaYardimciFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlSmartCreaseOff();
        reportLog("Akilli Kirisik Azaltma yardimci fonsiyonunun kapali oldugu kontrol edilir");
    }

    @Then("^Kisisellestirilmis Sure Seviyesi kapali oldugu kontrol edilir$")
    public void kisisellestirilmisSureSeviyesiKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlPersonalTimeLevelOff();
        reportLog("Kisisellestirilmis Sure Seviyesi kapali oldugu kontrol edilir");
    }

    @Then("^Gece Modu kapali oldugu kontrol edilir$")
    public void geceModuKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlNightModeOff();
        reportLog("Gece Modu kapali oldugu kontrol edilir");
    }

    @Then("^Kirisik azaltma fonsiyonunun kapali oldugu kontrol edilir$")
    public void kirisikAzaltmaFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlCreaseOff();
        reportLog("Kirisik azaltma fonsiyonunun kapali oldugu kontrol edilir");
    }

    @Then("^Suda bastirma fonsiyonunun kapali oldugu kontrol edilir$")
    public void sudaBastirmaFonsiyonununKapaliOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlSudaBastirmaOff();
        reportLog("Suda bastirma fonsiyonunun kapali oldugu kontrol edilir");
    }

    @Then("^Extra Durulama Sayisi sifir oldugu kontrol edilir$")
    public void extraDurulamaSayisiSifirOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlExtraRinseCount();
        reportLog("Extra Durulama Sayisi sifir oldugu kontrol edilir");
    }

    @And("^Ilave su yardimci fonksiyonu on yapilir$")
    public void ilaveSuYardimciFonksiyonuOnYapilir() throws InterruptedException {
        newScenariosScreens.clickPlusWater();
        reportLog("Ilave su yardimci fonksiyonu on yapilir");
    }

    @And("^Gunluk Hizli (\\d+) secilir$")
    public void gunlukHizliSecilir(int arg0) {
        newScenariosScreens.clickDailyMini();
        reportLog("Gunluk Hizli 14 secilir");
    }

    @Then("^Programi baslat butonunun pasif oldugu kontrol edilir$")
    public void programiBaslatButonununPasifOlduguKontrolEdilir() {
        newScenariosScreens.controlStartButtonDisable();
        reportLog("Programi baslat butonunun pasif oldugu kontrol edilir");
    }

    @And("^Leke Programi secilir$")
    public void lekeProgramiSecilir() {
        newScenariosScreens.clickStain();
        reportLog("Leke Programi secilir");
    }

    @And("^On yikana on yapilir$")
    public void onYikanaOnYapilir() throws InterruptedException {
        newScenariosScreens.clickPreWashOn();
        reportLog("On yikama on yapilir");
    }
    @Then("^On yikama yardimci fonksiyonunun on oldugu kontrol edilir$")
    public void onYikamaYardimciFonksiyonununOnOlduguKontrolEdilir() {
        newScenariosScreens.controlPreWashOn();
        reportLog("On yikama yardimci fonksiyonunun on oldugu kontrol edilir");
    }
    @And("^Saat kismina basilir$")
    public void saatKisminaBasilir() {
        newScenariosScreens.clickTimeSet();
        reportLog("Saat kismina basilir");
    }
    @And("^Renk tipi beyaz secilir$")
    public void renkTipiBeyazSecilir() {
        newScenariosScreens.clickColorTypeWhite();
        reportLog("Renk tipi beyaz secilir");
    }
    @And("^Kir seviyesi orta secilir$")
    public void kirSeviyesiOrtaSecilir() {
        newScenariosScreens.clickDirtLevelMedium();
        reportLog("Kir seviyesi orta secilir");
    }
    @And("^Hijyen plus programi secilir$")
    public void hijyenPlusProgramiSecilir() {
        newScenariosScreens.clickHijyenPlus();
        reportLog("Hijyen plus programi secilir");
    }
    @And("^Tus sesi dusuk secilir$")
    public void tusSesiDusukSecilir() {
        newScenariosScreens.clickLowSound();
        reportLog("Tus sesi dusuk secilir");
    }
    @And("^Tus sesi yuksek secilir$")
    public void tusSesiYuksekSecilir() {
        newScenariosScreens.clickHighSound();
        reportLog("Tus sesi yuksek secilir");
    }

    @And("^CM Kapi acik uyarisi off yapilir$")
    public void cmKapiAcikUyarisiOffYapilir() throws InterruptedException {
        newScenariosScreens.clickCMDoorOpen();
        reportLog("CM Kapi acik uyarisi off yapilir");
    }

    @Then("^CM Kapi acik uyarisinin off oldugu kontrol edilir$")
    public void cmKapiAcikUyarisininOffOlduguKontrolEdilir() {
        newScenariosScreens.controlCMDoorOpenNotf();
        reportLog("CM Kapi acik uyarisinin off oldugu kontrol edilir");
    }

    @And("^CM Kapi acik uyarisi on yapilir$")
    public void cmKapiAcikUyarisiOnYapilir() throws InterruptedException {
        newScenariosScreens.clickCMDoorNotyOn();
        reportLog("CM Kapi acik uyarisi on yapilir");
    }

    @And("^Buzdolabı kapi acik uyarisi off yapilir$")
    public void buzdolabıKapiAcikUyarisiOffYapilir() throws InterruptedException {
        newScenariosScreens.clickBDDoorOpenNotyfOff();
        reportLog("CM Kapi acik uyarisi on yapilir");
    }

    @Then("^Buzdolabi kapak acik bildirimi off kontrolu$")
    public void buzdolabiKapakAcikBildirimiOffKontrolu() {
        newScenariosScreens.controlRefDoorOpenNotfyOff();
        reportLog("Buzdolabi kapak acik bildirimi off kontrolu");
    }

    @Then("^Buzdolabi kapak acik bildirimi on edilir$")
    public void buzdolabiKapakAcikBildirimiOnEdilir() throws InterruptedException {
        newScenariosScreens.clickBDDoorOpenNotyfOn();
        reportLog("Buzdolabi kapak acik bildirimi on edilir");
    }

    @And("^Diger yardimci fonksiyonlar butonuna basilir$")
    public void digerYardimciFonksiyonlarButonunaBasilir() {
        newScenariosScreens.clickOtherFunctions();
        reportLog("Diger yardimci fonksiyonlar butonuna basilir");
    }

    @And("^Diger yardimci fonksiyonlar menusunu kapat$")
    public void digerYardimciFonksiyonlarMenusunuKapat() {
        newScenariosScreens.clickCloseOtherFunctions();
        reportLog("Diger yardimci fonksiyonlar menusunu kapat");
    }

    @And("^Posi kalp ikonuna basilir$")
    public void posiKalpIkonunaBasilir() {
        newScenariosScreens.clickPosiHeartIcon();
        reportLog("Posi kalp ikonuna basilir");
    }

    @And("^Favori ekle ekraninda program adi Klima Fav yazilir$")
    public void favoriEkleEkranindaProgramAdiKlimaFavYazilir() {
        newScenariosScreens.posiFavoritePrgName("Klima Fav");
        reportLog("Favori ekle ekraninda program adi Klima Fav yazilir");
    }

    @And("^Program play butonuna basilir$")
    public void programPlayButonunaBasilir() {
        newScenariosScreens.clickPlayButton();
        reportLog("Program play butonuna basilir");
    }

    @And("^Kapak acik bildirimi off yapilir$")
    public void kapakAcikBildirimiOffYapilir() throws InterruptedException {
        newScenariosScreens.clickKMDoorOpenNotfyOff();
        reportLog("Kapak acik bildirimi off yapilir");
    }

    @And("^Favori ekle ekraninda program adi My Pizza yazilir$")
    public void favoriEkleEkranindaProgramAdiMyPizzaYazilir() {
        newScenariosScreens.favoritePrgName("My Pizza");
        reportLog("Favori ekle ekraninda program adi My Pizza yazilir");
    }

    @And("^Parlaklik degeri full yapilir$")
    public void parlaklikDegeriFullYapilir() throws InterruptedException {
        newScenariosScreens.setParlaklikOne();
        reportLog("Parlaklik degeri bir yapilir");
    }

    @Then("^Parlaklik degerinin bir oldugu kontrol edilir$")
    public void parlaklikDegerininBirOlduguKontrolEdilir() {
        newScenariosScreens.controlBrightnessOne();
        reportLog("Parlaklik degerinin bir oldugu kontrol edilir");
    }

    @Then("^Tus sesinin dusuk oldugu kontrol edilir$")
    public void tusSesininDusukOlduguKontrolEdilir() {
        newScenariosScreens.controlToneLow();
        reportLog("Tus sesinin dusuk oldugu kontrol edilir");
    }

    @And("^Parlaklik degeri sifir yapilir$")
    public void parlaklikDegeriSifirYapilir() throws InterruptedException {
        newScenariosScreens.setParlaklikZero();
        reportLog("Parlaklik degeri bir yapilir");
    }

    @And("^Sessiz programi secilir$")
    public void sessizProgramiSecilir() throws InterruptedException {
        newScenariosScreens.clickSilent();
        reportLog("Sessiz programi secilir");
    }

    @And("^Favori ekle ekraninda program adi Kurutma Pr yazilir$")
    public void favoriEkleEkranindaProgramAdiKurutmaPrYazilir() {
        newScenariosScreens.dryFavoritePrgName("Kurutma Pr");
        reportLog("Favori ekle ekraninda program adi Kurutma Pr yazilir");
    }

    @Then("^\"([^\"]*)\" kullanici adi kontrol edilir$")
    public void kullaniciAdiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlUserName(arg0);
        reportLog(arg0 + " kullanici Adi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" email adresi kontrol edilir$")
    public void emailAdresiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlUserEmail(arg0);
        reportLog(arg0 + " email adresi kontrol edilir");
    }

    @Then("^\"([^\"]*)\" telefon numarasi kontrol edilir$")
    public void telefonNumarasiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlUserPhoneNumber(arg0);
        reportLog(arg0 + " telefon numarasi kontrol edilir");
    }

    @And("^Kullanici adi \"([^\"]*)\" olarak degistirilir$")
    public void kullaniciAdiOlarakDegistirilir(String arg0) throws Throwable {
        newScenariosScreens.changeUserName(arg0);
        reportLog("Kullanici adi Hayrettin olarak degistirilir");
    }

    @And("^Telefon numarasini \"([^\"]*)\" olarak degistir$")
    public void telefonNumarasiniOlarakDegistir(String arg0) throws Throwable {
        newScenariosScreens.changePhoneNumber(arg0);
        reportLog("Telefon numarasini degistir");
    }

    @Then("^Appbar subtitle \"([^\"]*)\" texti kontrol edilir$")
    public void appbarSubtitleTextiKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog("Appbar subtitle" + arg0 + " texti kontrol edilir");
    }

    @Then("^Uzaktan kontrol \"([^\"]*)\" texti kontrolu$")
    public void uzaktanKontrolTextiKontrolu(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog("Uzaktan kontrol" + arg0 + " kontrolü");
    }

    @And("^Cihazlar ekraninda cihaz off ise on yapilir$")
    public void cihazlarEkranindaCihazOffIseOnYapilir() throws InterruptedException {
        int try_count;
        try_count = newScenariosScreens.clickStandbyOnDevicesSecreenIfDeviceIsOff();

        if (try_count == 0) {
            reportLog("Cihaz off ise standby tusuna basarak on konumuna getirilir");
        } else {
            reportLog_warning("Cihaz off ise standby tusuna basarak on konumuna getirilir " + try_count);
        }
    }

    @And("^Cihazlar ekraninda cihaz on ise off yapilir$")
    public void cihazlarEkranindaCihazOnIseOffYapilir() throws InterruptedException {
        int try_count;
        try_count = newScenariosScreens.clickStandbyOffDevicesSecreenIfDeviceIsOn();

        if (try_count == 0) {
            reportLog("Cihaz on ise standby tusuna basarak off konumuna getirilir");
        } else {
            reportLog_warning("Cihaz on ise standby tusuna basarak off konumuna getirilir " + try_count);
        }
    }

    @When("^Yan menu ikonuna basilir$")
    public void yanMenuIkonunaBasilir() {
        newScenariosScreens.clickNavigationDrawer();
        reportLog("Yan menu ikonuna basilir");
    }

    @Then("^Cihazlar ekraninda standby butonuna basilir$")
    public void cihazlarEkranindaStandbyButonunaBasilir() {
        newScenariosScreens.clickStandbyBtnDevices();
        reportLog("Cihazlar ekraninda standby butonuna basilir");
    }

    @And("^Tum fonksiyonlar off yapilir$")
    public void tumFonksiyonlarOffYapilir() throws InterruptedException {
        newScenariosScreens.turnOffAll();
        reportLog("Tum fonksiyonlar off yapilir");
    }

    @And("^Sonraki butonuna basilir$")
    public void sonrakiButonunaBasilir() {
        newScenariosScreens.click_nextBtn();
        reportLog("Sonraki butonuna basilir");
    }

    @And("^Yardimci fonksiyonlara tiklanir$")
    public void yardimciFonksiyonlaraTiklanir() {
        newScenariosScreens.click_functions();
        reportLog("Yardimci fonksiyonlara tiklanir");
    }

    @And("^Hizli sogutma on yapilir$")
    public void hizliSogutmaOnYapilir() throws InterruptedException {
        newScenariosScreens.turnon_quickcool();
        reportLog("Hizli sogutma on yapilir");
    }

    @Then("^Hizli sogutmanin on oldugu kontrol edilir$")
    public void hizliSogutmaninOnOlduguKontrolEdilir() {
        newScenariosScreens.control_quickcoolON();
        reportLog("Hizli sogutmanin on oldugu kontrol edilir");
    }


    @And("^Tatil modu on yapilir$")
    public void tatilModuOnYapilir() throws InterruptedException {
        newScenariosScreens.turnon_vacationmode();
        reportLog("Tatil modu on yapilir");
    }

    @Then("^Hizli sogutmanin off oldugu kontrol edilir$")
    public void hizliSogutmaninOffOlduguKontrolEdilir() {
        newScenariosScreens.control_quickcoolOFF();
        reportLog("Hizli sogutmanin off oldugu kontrol edilir");
    }

    @Then("^Dondurucu sicakligi eksi on dokuz olarak setlenir$")
    public void dondurucuSicakligiEksiOnDokuzOlarakSetlenir() throws InterruptedException {
        newScenariosScreens.setFreezerDegree19();
        reportLog("Dondurucu sicakligi eksi on dokuz olarak setlenir");
    }

    @Then("^Dondurucu sicakligi eksi on sekiz olarak geri setlenir$")
    public void dondurucuSicakligiEksiOnSekizOlarakGeriSetlenir() throws InterruptedException {
        newScenariosScreens.swipeOneDegreeFreezerBack18();
        reportLog("Dondurucu sicakligi eksi on sekiz olarak geri setlenir");
    }

    @Then("^\"([^\"]*)\" zamani kontrol edilir$")
    public void zamaniKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_text(arg0);
        reportLog(arg0 + " texti kontrol edilir");
    }

    @And("^Basarili tamam butonuna basilir$")
    public void basariliTamamButonunaBasilir() {
        newScenariosScreens.clickInfoOkBtn();
        reportLog("Basarili tamam butonuna basilir");
    }

    @And("^Tum tarifler butonuna basilir$")
    public void tumTariflerButonunaBasilir() throws InterruptedException {
        newScenariosScreens.clickAllRecipes();
        reportLog("Tum tarifler butonuna basilir");
    }

    @And("^Program secimi \"([^\"]*)\" olarak ayarlanir$")
    public void programSecimiOlarakAyarlanir(String arg0) throws InterruptedException {
        newScenariosScreens.selectProgramme(arg0);
        reportLog("Program secimi " + arg0 + " olarak ayarlanir");
    }

    @And("^Sicaklik \"([^\"]*)\" olarak ayarlanir$")
    public void sicaklikOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.selectTemp(arg0);
        reportLog("Sicaklik " + arg0 + " olarak ayarlanir");
    }

    @Then("^Program asamasi \"([^\"]*)\" texti kontrol edilir$")
    public void programAsamasiTextiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlProgramProgress(arg0);
        reportLog("Program asamasi " + arg0 + " texti kontrol edilir");
    }

    @Then("^\"([^\"]*)\" markasi kontrol edilir$")
    public void markasiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlBrand(arg0);
        reportLog(arg0 + " markasi kontrol edilir");
    }

    @And("^Devir secimi \"([^\"]*)\" rpm olarak ayarlanir$")
    public void devirSecimiRpmOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.selectRPM(arg0);
        reportLog("Devir secimi " + arg0 + " rpm olarak ayarlanir");
    }

    @And("^Mutfak odasina geri gidilir$")
    public void mutfakOdasinaGeriGidilir() throws InterruptedException {
        newScenariosScreens.backToLivingRoom();
        reportLog("Oturma odasına geri gidilir");
    }

    @Then("^Kullanici mail adresi \"([^\"]*)\" konrol edilir$")
    public void kullaniciMailAdresiKonrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.conrol_userMailAddress(arg0);
        reportLog("Kullanıcı mail adresi konrol edilir");
    }

    @Then("^Uzaktan kontrol Açık kontrolu$")
    public void uzaktanKontrolAçıkKontrolu() {
        newScenariosScreens.control_remoteControlOn();
        reportLog("Uzaktan kontrol Açık kontrolu");
    }

    @Then("^Homewhiz iletisim bilgileri texti kontrol edilir$")
    public void homewhizIletisimBilgileriTextiKontrolEdilir() throws InterruptedException {
        newScenariosScreens.control_homeWhizInfoTitle();
        reportLog("Homewhiz iletisim bilgileri texti kontrol edilir");
    }

    @Then("^Diğer İletişim Bilgileri texti kontrol edilir$")
    public void diğerİletişimBilgileriTextiKontrolEdilir() {
        newScenariosScreens.control_otherInfoTitle();
        reportLog("Diğer İletişim Bilgileri texti kontrol edilir");
    }

    @Then("^Program secimi bolumnun var oldugunu kontrol et$")
    public void programSecimiBolumnunVarOldugunuKontrolEt() {
        newScenariosScreens.control_programSelection();
        reportLog("Diğer İletişim Bilgileri texti kontrol edilir");
    }

    @Then("^Hazir Tarifler bolumun var oldugunu kontrol et$")
    public void hazirTariflerBolumunVarOldugunuKontrolEt() {
        newScenariosScreens.control_savedRecipes();
        reportLog("Hazir Tarifler bolumun var oldugunu kontrol et");
    }

    @And("^Program secimine basilir$")
    public void programSecimineBasilir() throws InterruptedException {
        newScenariosScreens.click_programSelection();
        reportLog("Program secimine basilir");
    }

    @Then("^Program Suresi texti kontrol edilir$")
    public void programSuresiTextiKontrolEdilir() {
        newScenariosScreens.control_remainingTimeTitle();
        reportLog("Program Suresi texti kontrol edilir - PASS");
    }

    @And("^Sure \"([^\"]*)\" olarak setlenir$")
    public void sureOlarakSetlenir(String arg0) throws Throwable {
        newScenariosScreens.setTimeiOS(arg0);
        reportLog("Süre " + arg0 + " olarak setlenir");
    }

    @And("^Programi baslat butonuna basilir$")
    public void programiBaslatButonunaBasilir() throws InterruptedException {
        newScenariosScreens.click_startProgramme();
        reportLog("Programi baslat butonuna basilir");
    }

    @And("^Yardimci fonksiyonlar kapatilir$")
    public void yardimciFonksiyonlarKapatilir() throws InterruptedException {
        newScenariosScreens.click_hideFunc();
        reportLog("Yardimci fonksiyonlar kapatilir");
    }

    @And("^Program devam butonuna basilir$")
    public void programDevamButonunaBasilir() throws InterruptedException {
        newScenariosScreens.click_continue();
        reportLog("Program devam butonuna basilir");
    }

    @And("^Favori ekle ekraninda program adi \"([^\"]*)\" yazilir$")
    public void favoriEkleEkranindaProgramAdiYazilir(String arg0) throws Throwable {
        newScenariosScreens.setFavoriteText(arg0);
        reportLog("Favori program adı" + arg0 + " olarak setlenir");
    }

    @Then("^Sihirbaz bolumnun var oldugunu kontrol et$")
    public void sihirbazBolumnunVarOldugunuKontrolEt() {
        newScenariosScreens.control_wizardButton();
        reportLog("Sihirbaz bölümünün varolduğu kontrol edilir");
    }

    @And("^Kirisik onleme \"([^\"]*)\" olarak ayarlanir$")
    public void kirisikOnlemeOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.selectAntiCreaseTime(arg0);
        reportLog("Kırışık Önleme " + arg0 + " olarak ayarlanir");
    }

    @And("^Kurutma seviyesi \"([^\"]*)\" secilir$")
    public void kurutmaSeviyesiSecilir(String arg0) throws Throwable {
        newScenariosScreens.selectDryingLevel(arg0);
        reportLog("Kurutma seviyesi " + arg0 + " olarak ayarlanir");
    }

    @Then("^Programi devam ettir butonuna basilir$")
    public void programiDevamEttirButonunaBasilir() throws InterruptedException {
        newScenariosScreens.click_continue_program();
        reportLog("Programi devam ettir butonuna basili");
    }

    @Then("^Sihirbaz bolumun var oldugunu kontrol et$")
    public void sihirbazBolumunVarOldugunuKontrolEt() {
        newScenariosScreens.control_wizardSelection();
        reportLog("Sihirbaz bolumun var oldugunu kontrol edilir");
    }

    @Then("^Klima sicakligin \"([^\"]*)\" oldugu kontrol edilir$")
    public void klimaSicakliginOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.control_temp(arg0);
        reportLog("Sıcaklık" + arg0 + " olduğu kontrol edilir");
    }

    @Then("^Zamanlayici secimi \"([^\"]*)\" oldugu kontrol edilir$")
    public void zamanlayiciSecimiOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlTimerThree(arg0);
        reportLog("Zamanlayıcı" + arg0 + " olduğu kontrol edilir");
    }

    @Then("^Uyku modu yeni secimi \"([^\"]*)\" oldugu kontrol edilir$")
    public void uykuModuYeniSecimiOlduguKontrolEdilir(String arg0) throws InterruptedException {
        newScenariosScreens.control_airConSleepingMood(arg0);
        reportLog("Uyku modu " + arg0 + " kontrol edilir");
    }

    @Then("^Dikey hava akisi yeni secimi \"([^\"]*)\" oldugu kontrol edilir$")
    public void dikeyHavaAkisiYeniSecimiOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.control_airConVertical(arg0);
        reportLog("Dikey hava akışı " + arg0 + " kontrol edilir");
    }

    @And("^Sogutma modu geri secilir$")
    public void sogutmaModuGeriSecilir() throws InterruptedException {
        newScenariosScreens.setCoolingBackDegree();
        reportLog("Soğutma modu geri seçilir");
    }

    @And("^Sayfanin altina ilerle$")
    public void sayfaninAltinaIlerle() throws InterruptedException {
        newScenariosScreens.swipeDownOfPage();
        reportLog("Sayfanın alt kısmına gidilir - PASS");
    }

    @And("^Ertelem zamani saat \"([^\"]*)\" olarak setlenir$")
    public void ertelemZamaniSaatOlarakSetlenir(String arg0) throws Throwable {
        newScenariosScreens.setDelayTime(arg0);
        reportLog("Erteleme zamanı " +arg0+ "olarak setlenir");
    }

    @And("^Erteleme zamani dakika \"([^\"]*)\" olarak setlenir$")
    public void ertelemeZamaniDakikaOlarakSetlenir(String arg0) throws Throwable {
        newScenariosScreens.setDelayTimeMin(arg0);
        reportLog("Erteleme zamanı dakika " +arg0+ "olarak setlenir");
    }

    @And("^Programi başlat zaman geciktirme butonuna basilir$")
    public void programiBaşlatZamanGeciktirmeButonunaBasilir() {
        newScenariosScreens.clickProgramStartDelay();
        reportLog("Programi başlat zaman geciktirme butonuna basilir");
    }

    @And("^Sihirbaz ekraninda \"([^\"]*)\" secilir$")
    public void sihirbazEkranindaSecilir(String arg0) throws Throwable {
        newScenariosScreens.selectLaundryType(arg0);
        reportLog("Çamaşır tipi " +arg0+ "olarak seçilir");
    }

    @And("^Tekrar login ol$")
    public void tekrarLoginOl() throws InterruptedException {
        newScenariosScreens.setNewLogin();
        reportLog("Tekrar login ol");
    }

    @And("^Ek kuruluk seviyesi secilir$")
    public void ekKurulukSeviyesiSecilir() {
        newScenariosScreens.setPlusDryingLevel();
        reportLog("Ek kuruluk seviyesi secilir");
    }

    @Then("^Dikey hava akisi secimi \"([^\"]*)\" oldugu kontrol edilir$")
    public void dikeyHavaAkisiSecimiOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlVerticalAirStatus(arg0);
        reportLog("Dikey hava akisi secimi "+arg0+" oldugu kontrol edilir");
    }

    @And("^Sicaklik \"([^\"]*)\" dereceye ayarlanir$")
    public void sicaklikDereceyeAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.setAirConTemp(arg0);
        reportLog("Sicaklik "+arg0+" dereceye ayarlanir");
    }

    @Then("^Zamanlayicinin (\\d+) e set edildigi kontrol edilir$")
    public void zamanlayicininESetEdildigiKontrolEdilir(int arg0) {
        newScenariosScreens.control_airConSleepingMoodStatus();
        reportLog("Zamanlayicinin set edildigi kontrol edilir");
    }

    @And("^Dikey hava modu \"([^\"]*)\" konuma getirilir$")
    public void dikeyHavaModuKonumaGetirilir(String arg0) throws Throwable {
        newScenariosScreens.setVertAirMode(arg0);
        reportLog("Dikey hava modu ayarlanır :" + arg0 );
    }

    @Then("^Uyku modu secimi \"([^\"]*)\" oldugu kontrol edilir$")
    public void uykuModuSecimiOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlSleepingMode(arg0);
        reportLog("Uyku modu secimi "+arg0+" oldugu kontrol edilir");
    }

    @Then("^Fan hizinin \"([^\"]*)\" oldugu kontrol edilir$")
    public void fanHizininOlduguKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlFanSpeedValue(arg0);
        reportLog("Fan hizi Ayarlanır :" +arg0 );
    }

    @Then("^Fan hizi \"([^\"]*)\" olarak ayarlanir$")
    public void fanHiziOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.setFanSpeed(arg0);
        reportLog("Fan hizi Ayarlanır :" +arg0 );
    }

    @And("^Uyku modu \"([^\"]*)\" olarak ayarlanır$")
    public void uykuModuOlarakAyarlanır(String arg0) throws Throwable {
        newScenariosScreens.clickSleepMod(arg0);
        reportLog("Uyku modu Ayarlanır : " + arg0);
    }

    @And("^Zamanlayici \"([^\"]*)\" e set edilir$")
    public void zamanlayiciESetEdilir(String arg0) throws Throwable {
        newScenariosScreens.clickTimer(arg0);
        reportLog("Zamanlayıcı : " + arg0);
    }

    @And("^Tekrar login olunur$")
    public void tekrarLoginOlunur() throws InterruptedException {
        newScenariosScreens.setNewLoginAgain();
        reportLog("Yeniden Login Olunur");
    }

    @And("^Login kontrolu yapilir$")
    public void loginKontroluYapilir() {
        newScenariosScreens.control_login();
        reportLog("Login kontrolu yapilir");
    }

    @Then("^Oda ismi \"([^\"]*)\" girilir$")
    public void odaIsmiGirilir(String arg0) throws Throwable {
        newScenariosScreens.setNewRoomName(arg0);
        reportLog("Oda ismi "+ arg0+" olarak ayarlanır");
    }

    @Then("^Program toplam suresi \"([^\"]*)\" kontrol edilir$")
    public void programToplamSuresiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.control_totalRemainingTime(arg0);
        reportLog("Program süresi "+ arg0+" kontrol edilir");
    }

    @Then("^Favori program \"([^\"]*)\" adi kontrol edilir$")
    public void favoriProgramAdiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.control_favoriteProgName(arg0);
        reportLog("Favori program adı " +arg0+ " kontrol edilir");
    }

    @Then("^PPM degeri kabul edilebilir bir deger mi kontrol edilir$")
    public void ppmDegeriKabulEdilebilirBirDegerMiKontrolEdilir() throws InterruptedException {
        newScenariosScreens.controlPpmValues();
        reportLog("PPM degeri kabul edilebilir bir deger mi kontrol edilir");
    }

    @And("^Ppm degerinin icinde bulundugu halka ikonu sayfada goruntulenme kontrolu$")
    public void ppmDegerininIcindeBulunduguHalkaIkonuSayfadaGoruntulenmeKontrolu() {
        newScenariosScreens.controlCirclePpmHolder();
        reportLog("Ppm degerinin icinde bulundugu halka ikonu sayfada goruntulenme kontrolu");
    }

    @And("^Dondurucu kabin modu \"([^\"]*)\" olarak seçilir$")
    public void dondurucuKabinModuOlarakSeçilir(String arg0) throws Throwable {
        newScenariosScreens.set_frezerMode(arg0);
        reportLog("Freezer Mode:" + arg0 + "olarak ayarlanır" );
    }

    @And("^Hizli dondurma modu on yapilir$")
    public void hizliDondurmaModuOnYapilir() {
        newScenariosScreens.click_rapidFreezeOn();
        reportLog("Hızlı dondurma modu on yapilir");
    }

    @Then("^Hizli dondurma modunun on oldugu kontrol edilir$")
    public void hizliDondurmaModununOnOlduguKontrolEdilir() {
        newScenariosScreens.control_rapidFreezerOn();
        reportLog("Hızlı dondurma modu on komtrolü");
    }

    @And("^Eko Fuzzy modu on yapilir$")
    public void ekoFuzzyModuOnYapilir() {
        newScenariosScreens.click_fuzzyModeOn();
        reportLog("Fuzzy modu on yapilir");
    }

    @Then("^Eko Fuzzy modu on oldugu kontrol edilir$")
    public void ekoFuzzyModuOnOlduguKontrolEdilir() {
        newScenariosScreens.control_fuzzyModeOn();
        reportLog("EcoFuzzy modu on komtrolü");
    }

    @Then("^Eko Fuzzy modunun off oldugu kontrol edilir$")
    public void ekoFuzzyModununOffOlduguKontrolEdilir() {
        newScenariosScreens.click_fuzzyModeOff();
        reportLog("Fuzzy modu off yapilir");
    }

    @Then("^Tatil modu on oldugu kontrol edilir$")
    public void tatilModuOnOlduguKontrolEdilir() {
        newScenariosScreens.click_vacationModeOn();
        reportLog("Tatil modu on kontrolü");
    }

    @Then("^Tatil modunun off oldugu kontrol edilir$")
    public void tatilModununOffOlduguKontrolEdilir() {
        newScenariosScreens.click_vacationModeOff();
        reportLog("Tatil modu off kontrolü");
    }

    @Then("^Hava Temizleme on kontrol edilir$")
    public void havaTemizlemeOnKontrolEdilir() {
        newScenariosScreens.control_airCleanFunc();
        reportLog("Hava Temizleme on kontrol edilir");
    }

    @Then("^Hava Temizleme off kontrol edilir$")
    public void havaTemizlemeOffKontrolEdilir() {
        newScenariosScreens.control_airCleanFuncOff();
        reportLog("Hava Temizleme off kontrolü");
    }

    @Then("^Hava Temizleme butonuna basilir$")
    public void havaTemizlemeButonunaBasilir() {
        newScenariosScreens.click_airCleanBtn();
        reportLog("Hava Temizleme off kontrol edilir");
    }

    @Then("^Hava Temizleme off konumuna getirilir$")
    public void havaTemizlemeOffKonumunaGetirilir() throws InterruptedException {
        newScenariosScreens.click_airCleanOff();
        reportLog("Hava Temizleme off yapilir");
    }

    @And("^Isık butonuna basilir$")
    public void isıkButonunaBasilir() throws InterruptedException {
        newScenariosScreens.click_lightBtn();
        reportLog("Işık butonuna basılır");
    }

    @Then("^Isık butonu on kontrolu$")
    public void isıkButonuOnKontrolu() {
        newScenariosScreens.control_lightBtnOn();
        reportLog("Işık on kontrol edilir");
    }

    @And("^Isık butonu off konumuna getirilir$")
    public void isıkButonuOffKonumunaGetirilir() throws InterruptedException {
        newScenariosScreens.click_lightBtnOff();
        reportLog("Işık butonu Off konumuna getirilir");
    }

    @Then("^Isık butonu off kontrolu$")
    public void isıkButonuOffKontrolu() {
        newScenariosScreens.control_lightBtnOff();
        reportLog("Işık olduğu off kontrol edilir");
    }

    @Then("^Mod Secimi butonuna basilir$")
    public void modSecimiButonunaBasilir() {
        newScenariosScreens.click_modeSelectionBtn();
        reportLog("Mod Secimi butonuna basilir");
    }

    @And("^Hava temizleme on konumuna getirilir$")
    public void havaTemizlemeOnKonumunaGetirilir() throws InterruptedException {
        newScenariosScreens.click_airCleanOn();
        reportLog("Hava Temizleme on yapilir");
    }

    @Then("^Kir Filtresi Seviyesini Sifirla aktif yapılır$")
    public void kirFiltresiSeviyesiniSifirlaAktifYapılır() {
        newScenariosScreens.click_dirtyFilterResetActive();
        reportLog("Kir Filtresi Seviyesini Sıfırla aktif yapılır");
    }

    @Then("^Kir Filtresi Seviyesini Aktif kontrolu$")
    public void kirFiltresiSeviyesiniAktifKontrolu() {
        newScenariosScreens.control_dirtLevelActive();
        reportLog("Kir Filtresi Seviyesini Sıfırla aktif kontrolu");
    }

    @Then("^Kir Filtresi Seviyesini Pasif kontrolu$")
    public void kirFiltresiSeviyesiniPasifKontrolu() {
        newScenariosScreens.control_dirtLevelPasive();
        reportLog("Kir Filtresi Seviyesini Pasif kontrolu");
    }

    @Then("^Filtrenin temizlenmesi gerekiyor on yapilir$")
    public void filtreninTemizlenmesiGerekiyorOnYapilir() throws InterruptedException {
        newScenariosScreens.click_needToCleanFilter();
        reportLog("Filtrenin temizlenmesi gerekiyor on yapilir");
    }

    @Then("^Filtrenin temizlenmesi gerekiyor on kontrolu$")
    public void filtreninTemizlenmesiGerekiyorOnKontrolu() {
        newScenariosScreens.control_needToCleanFilter();
        reportLog("Filtrenin temizlenmesi gerekiyor on kontrolü");
    }

    @Then("^Filtrenin temizlenmesi gerekiyor off yapilir$")
    public void filtreninTemizlenmesiGerekiyorOffYapilir() throws InterruptedException {
        newScenariosScreens.click_needToCleanFilterOff();
        reportLog("Filtrenin temizlenmesi gerekiyor off yapilir");
    }

    @Then("^Filtrenin temizlenmesi gerekiyor off kontrolu$")
    public void filtreninTemizlenmesiGerekiyorOffKontrolu() {
        newScenariosScreens.control_needToCleanFilterOff();
        reportLog("Filtrenin temizlenmesi gerekiyor off kontrolü");
    }

    @Then("^Fan seviyesi \"([^\"]*)\" olarak ayarlanir$")
    public void fanSeviyesiOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.changeFanSpeed(arg0);
        reportLog("Fan seviyesi "+arg0+" olarak ayarlanir");
    }

    @Then("^\"([^\"]*)\" mail hesabiyla ve \"([^\"]*)\" sifresiyle login olunur$")
    public void mailHesabiylaVeSifresiyleLoginOlunur(String arg0, String arg1) throws Throwable {
        commonfunc.loginMailError(arg0, arg1);
        reportLog("Uygulamaya mail hesabi  "+ arg0 + "   ve sifresiyle    "+ arg1 + "   login olunur");
    }

    @When("^Karbondioksit cihazini mutfak odasina tasi$")
    public void karbondioksitCihaziniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.movetoKitchenRoomWMWasher();
        reportLog("Karbondioksit cihazini mutfak odasina tasi");
    }

    @And("^Karbondioksit cihazini oturma odasina geri tasi$")
    public void karbondioksitCihaziniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoLivingRoom();
        reportLog("Karbondioksit cihazini oturma odasina geri tasi");
    }

    @Then("^Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir$")
    public void geceModuAcikMiKapaliMiKontrolEdilirVeAciksaKapatilir() {
        newScenariosScreens.controlNightModeOffIfOn();
        reportLog("Gece modu acik mi kapali mi kontrol edilir ve aciksa kapatilir");
    }

    @And("^Gece modu buttonuna basilir$")
    public void geceModuButtonunaBasilir() {
        newScenariosScreens.click_nightMode();
        reportLog("Gece modu buttonuna basilir");

    }

    @And("^Gece modu acik mi diye kontrol edilir$")
    public void geceModuAcikMiDiyeKontrolEdilir() {
        newScenariosScreens.control_nightModeOn();
        reportLog("Gece modu acik mi diye kontrol edilir");
    }

    @Then("^Gecmis ekranindaki degerin \"([^\"]*)\" icermedigi kontrol edilir$")
    public void gecmisEkranindakiDegerinIcermedigiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.control_emptyValueOfPpm(arg0);
        reportLog("Gecmis ekranindaki degerin "+arg0+" icermedigi kontrol edilir");
    }

    @Then("^Gecmis ekranindaki yazı \"([^\"]*)\" textini iceriyor mu kontrol edilir$")
    public void gecmisEkranindakiYazıTextiniIceriyorMuKontrolEdilir(String arg0) throws Throwable {
        commonfunc.control_containText(arg0);
        reportLog("Gecmis ekranindaki yazı "+arg0+" textini iceriyor mu kontrol edilir");
    }

    @Then("^Hava kalitesinin \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" seceneklerinden biri oldugu kontrol edilir$")
    public void havaKalitesininSeceneklerindenBiriOlduguKontrolEdilir(String arg0, String arg1, String arg2, String arg3, String arg4) throws Throwable {
       newScenariosScreens.control_airQuality(arg0,arg1,arg2,arg3,arg4);
       reportLog("Hava kalitesinin durumu kontrol edilir");
    }

    @And("^Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir$")
    public void nemDegerininKabulEdilebilirBirDegerOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.control_humidityLevel();
        reportLog("Nem degerinin kabul edilebilir bir deger oldugu kontrol edilir");
    }

    @And("^Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir$")
    public void sicaklikDegerininKabulEdilebilirBirDegerOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.control_tempLevel();
        reportLog("Sicaklik degerinin kabul edilebilir bir deger oldugu kontrol edilir");
    }

    @Then("^Karbondioksit seviyesi bilgilendirmesi yapan pop-up acılır$")
    public void karbondioksitSeviyesiBilgilendirmesiYapanPopUpAcılır() {
        newScenariosScreens.click_co2Info();
        reportLog("Karbondioksit seviyesi bilgilendirmesi yapan pop-up acılır");
    }

    @Then("^Carpı isaretine basilip ekran kapatilir$")
    public void carpıIsaretineBasilipEkranKapatilir() {
        newScenariosScreens.click_c2oinfoAlert();
        reportLog("Carpı isaretine basilip ekran kapatilir");
    }

    @And("^Cihaz ayarlari ekraninda parlatici seviyesini ikinci kademeye ayarlanir$")
    public void cihazAyarlariEkranindaParlaticiSeviyesiniIkinciKademeyeAyarlanir() throws InterruptedException {
        newScenariosScreens.setNewLvl();
        reportLog("Cihaz ayarlari ekraninda parlatici seviyesini kademeye ayarlanir");
    }

    @And("^Cihaz Ekraninda Yemek tarifleri ok butonuna basilir$")
    public void cihazEkranindaYemekTarifleriOkButonunaBasilir() {
        newScenariosScreens.click_recipeArrow();
        reportLog("Cihaz Ekranında Yemek tarifleri ok butonuna basilir");
    }

    @And("^Cihaz Ekranında İlk Yemek tarifine basilir$")
    public void cihazEkranındaİlkYemekTarifineBasilir() {
        newScenariosScreens.click_firstRecipe();
        reportLog("Cihaz Ekranında İlk Yemek tarifine basilir");
    }

    @And("^Cihazlar ekraninda priz on ise off yapilir$")
    public void cihazlarEkranindaPrizOnIseOffYapilir() {
        newScenariosScreens.click_plugOff();
        reportLog("Cihazlar ekraninda priz on ise off yapilir");
    }

    @And("^Cihazlar ekraninda priz off oldugu kontrol edilir$")
    public void cihazlarEkranindaPrizOffOlduguKontrolEdilir() {
        newScenariosScreens.control_plugOff();
        reportLog("Cihazlar ekranında priz off oldugu kontrol edilir");
    }

    @And("^Cihazlar ekraninda priz off ise on yapilir$")
    public void cihazlarEkranindaPrizOffIseOnYapilir() {
        newScenariosScreens.click_plugOn();
        reportLog("Cihazlar ekraninda priz off ise on yapilir");
    }

    @And("^Cihazlar ekraninda priz on oldugu kontrol edilir$")
    public void cihazlarEkranindaPrizOnOlduguKontrolEdilir() {
        newScenariosScreens.control_plugOn();
        reportLog("Cihazlar ekranında priz on oldugu kontrol edilir");
    }

    @Then("^Plug cihaz ekranında kapalı oldugunu kontrol et$")
    public void plugCihazEkranındaKapalıOldugunuKontrolEt() {
        newScenariosScreens.control_plugOffDetail();
        reportLog("Plug cihaz ekranında kapalı oldugunu kontrol et");
    }

    @Then("^Guc butonuna basılır$")
    public void gucButonunaBasılır() {
        newScenariosScreens.click_power();
        reportLog("Guc butonuna basılı");
    }

    @Then("^Plug cihaz ekraninda acik oldugunu kontrol et$")
    public void plugCihazEkranindaAcikOldugunuKontrolEt() {
        newScenariosScreens.control_deviceOnDetail();
        reportLog("Plug cihaz ekraninda acik oldugunu kontrol et");
    }

    @And("^Cihaz ve tuketim ekranlarindaki tuketim ayni oldugu kontrol edilir$")
    public void cihazVeTuketimEkranlarindakiTuketimAyniOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.control_energyConsumptionCompare();
        reportLog("Cihaz ve tuketim ekranlarindaki tuketim ayni oldugu kontrol edilir");
    }

    @And("^Akilli erisimden priz sayfasi acilir$")
    public void akilliErisimdenPrizSayfasiAcilir() {
        newScenariosScreens.click_accessEnergy();
        reportLog("Akilli erisimden priz sayfasi acilir");
    }

    @Then("^Akilli erisim priz sayfasinda kapali oldugu kontrol edilir$")
    public void akilliErisimPrizSayfasindaKapaliOlduguKontrolEdilir() {
        newScenariosScreens.control_accessEnergyOff();
        reportLog("Akilli erişim priz sayfasinda kapali oldugu kontrol edilir");
    }

    @Then("^Akilli erisim priz sayfasindan priz acma butonuna basilir$")
    public void akilliErisimPrizSayfasindanPrizAcmaButonunaBasilir() {
        newScenariosScreens.click_smartAccessOn();
        reportLog("Akilli erisim priz sayfasindan priz acma kapama butonuna basilir");
    }

    @Then("^Akilli erisim priz sayfasinda acik oldugu kontrol edilir$")
    public void akilliErisimPrizSayfasindaAcikOlduguKontrolEdilir() {
        newScenariosScreens.control_accessEnergyOn();
        reportLog("Akilli erişim priz sayfasinda açık oldugu kontrol edilir");
    }

    @Then("^Akilli erisim priz sayfasindan priz kapama butonuna basilir$")
    public void akilliErisimPrizSayfasindanPrizKapamaButonunaBasilir() {
        newScenariosScreens.click_smartAccessOff();
        reportLog("Akilli erisim priz sayfasindan priz kapama butonuna basilir");
    }

    @When("^SmartPlug cihazini mutfak odasina tasi$")
    public void smartplugCihaziniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.movetoKitchenRoomWMWasher();
        reportLog("SmartPlug cihazini mutfak odasina tasi");
    }

    @And("^SmartPlug cihazini oturma odasina geri tasi$")
    public void smartplugCihaziniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoLivingRoom();
        reportLog("SmartPlug cihazini mutfak odasina tasi");
    }

    @And("^Plug başlangıç tarih günü \"([^\"]*)\" olarak degistirilir$")
    public void plugBaşlangıçTarihGünüOlarakDegistirilir(String arg0) throws Throwable {
        newScenariosScreens.setPlugStartingTime(arg0);
        reportLog("Plug başlangıç tarih günü "+arg0+ "olarak degistirilir");
    }

    @Given("^\"([^\"]*)\" Oda duzenle butonuna basilir$")
    public void odaDuzenleButonunaBasilir(String arg0) throws Throwable {
        newScenariosScreens.click_changeRoom(arg0);
        reportLog(arg0 + " oda duzenle butonuna basilir");
    }

    @And("^Yeni Oda Ekle butonuna basılır$")
    public void yeniOdaEkleButonunaBasılır() {
        newScenariosScreens.click_addNewRoomIcon();
        reportLog("Yeni Oda Ekle butonuna basılır");
    }

    @Then("^Ilk resim secilir$")
    public void ilkResimSecilir() {
        newScenariosScreens.select_firstPic();
        reportLog("Ilk resim secilir");
    }

    @Then("^Yeni eklenen odaya gidilir$")
    public void yeniEklenenOdayaGidilir() throws InterruptedException {
        newScenariosScreens.goToNewRoom();
        reportLog("Yeni eklenen odaya gidilir");
    }

    @And("^Uyari gelirse kontrol edilir$")
    public void uyariGelirseKontrolEdilir() {
        //newScenariosScreens.control_timeDateAlert();
        reportLog("Uyari gelirse kontrol edilir");
    }

    @And("^Bildirim uyarisi kontrolu$")
    public void bildirimUyarisiKontrolu() {
        //newScenariosScreens.control_popUpAlert();
        reportLog("Bildirim uyarisi kontrolu");
    }

    @Then("^Cihazlarim ekraninda lamba off oldugu kontrol edilir$")
    public void cihazlarimEkranindaLambaOffOlduguKontrolEdilir() {
        newScenariosScreens.control_lampOffDevices();
        reportLog("Cihazlarim ekraninda lamba Off oldugu kontrol edilir");
    }


    @Then("^Lamba cihazlarim ekraninda on yapilir$")
    public void lambaCihazlarimEkranindaOnYapilir() {
        newScenariosScreens.onLampIfOffDevices();
        reportLog("Lamba cihazlarim ekraninda on yapilir");
    }

    @Then("^Lamba cihazlarim ekraninda off yapilir$")
    public void lambaCihazlarimEkranindaOffYapilir() {
        newScenariosScreens.offLampIfOnDevices();
        reportLog("Lamba cihazlarim ekraninda off yapilir");
    }

    @And("^Cihazlarim ekraninda lamba on oldugu kontrol edilir$")
    public void cihazlarimEkranindaLambaOnOlduguKontrolEdilir() throws InterruptedException {
        newScenariosScreens.control_lampOnDevices();
        reportLog("Cihazlarim ekraninda lamba On oldugu kontrol edilir");
    }

    @Then("^Lamba power butonu ile acilir$")
    public void lambaPowerButonuIleAcilir() {
        newScenariosScreens.click_lampPowerOn();
        reportLog("Lamba power butonu ile acilir");
    }

    @Then("^Lamba power butonu ile kapatilir$")
    public void lambaPowerButonuIleKapatilir() {
        newScenariosScreens.click_lampPowerOff();
        reportLog("Lamba power butonu ile kapatilir");
    }

    @Then("^Cihazlarim ekraninda lamba on ise off konumuna getirilir$")
    public void cihazlarimEkranindaLambaOnIseOffKonumunaGetirilir() {
        newScenariosScreens.click_lampPowerOffIfOn();
        reportLog("Cihazlarim ekraninda lamba on ise of konumuna getirilir");
    }

    @Then("^Bilgileri Güncelleye basilir$")
    public void bilgileriGüncelleyeBasilir() throws InterruptedException {
        newScenariosScreens.click_updateInfo();
        reportLog("Bilgi güncellemeye basilir");
    }

    @Then("^\"([^\"]*)\" kullanici soyadi kontrol edilir$")
    public void kullaniciSoyadiKontrolEdilir(String arg0) throws Throwable {
        newScenariosScreens.controlUserSurName(arg0);
        reportLog(arg0+ " kullanici soyadi kontrol edilir");
    }

    @And("^Firin kapak acik bildirimi aktif edilir$")
    public void firinKapakAcikBildirimiAktifEdilir() {
        newScenariosScreens.click_ovenDoorOpenOn();
        reportLog("Firin kapak acik bildirimi aktif edilir");
    }

    @Then("^Firin kapak acik bildirimi aktif kontrolu$")
    public void firinKapakAcikBildirimiAktifKontrolu() {
        newScenariosScreens.control_ovenDoorOpenOn();
        reportLog("Firin kapak acik bildirimi aktif kontrolu");
    }

    @And("^Firin kapak acik bildirimi off yapilir$")
    public void firinKapakAcikBildirimiOffYapilir() {
        newScenariosScreens.click_ovenDoorOpenOff();
        reportLog("Firin kapak acik bildirimi off yapilir");
    }

    @Then("^Firin kapak acik bildirimi kapali kontrolu$")
    public void firinKapakAcikBildirimiKapaliKontrolu() {
        newScenariosScreens.control_ovenDoorOpenOff();
        reportLog("Firin kapak acik bildirimi kapali kontrolu");
    }

    @Then("^Soguk renk secilir$")
    public void sogukRenkSecilir() {
        newScenariosScreens.click_coldColor();
        reportLog("Soğuk renk seçilir");
    }

    @Then("^Parlaklik \"([^\"]*)\" secilir$")
    public void parlaklikSecilir(double arg0) throws Throwable {
        newScenariosScreens.setBrightness(arg0);
        reportLog("Parlaklık değeri %50 yapılır");
    }

    @Then("^Kirmizi renk secilir$")
    public void kirmiziRenkSecilir() {
        newScenariosScreens.click_redColor();
        reportLog("Kırmızı renk seçilir");
    }

    @Then("^Mor renk secilir$")
    public void morRenkSecilir() {
        newScenariosScreens.click_purpleColor();
        reportLog("Mor renk seçilir");
    }

    @Then("^Sicak renk secilir$")
    public void sicakRenkSecilir() {
        newScenariosScreens.click_warmColor();
        reportLog("Sıcak renk seçilir");
    }

    @Then("^Cember uzerinden renk degistirilir$")
    public void cemberUzerindenRenkDegistirilir() throws InterruptedException {
        newScenariosScreens.click_colorCircle();
        reportLog("Cember uzerinden renk degistirilir");
    }

    @Then("^Lamba cihazini mutfak odasina tasi$")
    public void lambaCihaziniMutfakOdasinaTasi() throws InterruptedException {
        newScenariosScreens.movetoKitchenRoomWMWasher();
        reportLog("Lamba cihazini mutfak odasina tasi");
    }

    @Then("^Lamba cihazini oturma odasina geri tasi$")
    public void lambaCihaziniOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoLivingRoom();
        reportLog("Lamba cihazini oturma odasina geri tasi");
    }

    @Then("^Cihaz menusune tiklanir$")
    public void cihazMenusuneTiklanir() {
        newScenariosScreens.click_menu();
        reportLog("Cihaz menusune tiklanir");
    }

    @And("^Lamba baslangic tarih gunu \"([^\"]*)\" olarak degistirilir$")
    public void lambaBaslangicTarihGunuOlarakDegistirilir(String arg0) throws Throwable {
        newScenariosScreens.setNewDay(arg0);
        reportLog("Lamba baslangic tarih gunu "+arg0+ "olarak degistirilir");
    }

    @Then("^Akilli erisim lamba sayfasinda kapali oldugu kontrol edilir$")
    public void akilliErisimLambaSayfasindaKapaliOlduguKontrolEdilir() {
        newScenariosScreens.control_smartAccessLampOff();
        reportLog("Akıllı erişim lamba sayfasında kapalı olduğu kontrol edilir");
    }

    @Then("^Akilli erisim lamba sayfasindan lamba on yapilir$")
    public void akilliErisimLambaSayfasindanLambaOnYapilir() {
        newScenariosScreens.click_smartAccessLampOn();
        reportLog("Akilli erisim lamba sayfasindan lamba on yapilir");
    }

    @Then("^Akilli erisim lamba sayfasinda acik oldugu kontrol edilir$")
    public void akilliErisimLambaSayfasindaAcikOlduguKontrolEdilir() {
        newScenariosScreens.control_smartAccessLampOn();
        reportLog("Akıllı erişim lamba sayfasında açık olduğu kontrol edilir");
    }

    @Then("^Akilli erisim lamba sayfasindan lamba off yapilir$")
    public void akilliErisimLambaSayfasindanLambaOffYapilir() {
        newScenariosScreens.click_smartAccessLampOff();
        reportLog("Akilli erisim lamba sayfasindan lamba off yapilir");
    }

    @And("^Raf onerisi \"([^\"]*)\" olarak ayarlanir$")
    public void rafOnerisiOlarakAyarlanir(String arg0) throws Throwable {
        newScenariosScreens.setShelfProposal(arg0);
        reportLog("Raf onerisi " + arg0 + " olarak ayarlanir");
    }

    @Then("^On isitma adimi varsa atlanir$")
    public void onIsitmaAdimiVarsaAtlanir() {
        newScenariosScreens.control_preHeatingStep();
        reportLog("On isitma adimi varsa atlanir");
    }

    @And("^Vega firin stop butonuna basilir$")
    public void vegaFirinStopButonunaBasilir() throws InterruptedException {
        newScenariosScreens.click_vegaFirinStop();
        reportLog("Vega firin stop butonuna basilir");
    }

    @And("^Urunu banyo odasina tasi$")
    public void urunuBanyoOdasinaTasi() throws InterruptedException {
        newScenariosScreens.changeRoomToBathroom();
        reportLog("Ürünü mutfak odasina tasi");
    }

    @And("^Urunu oturma odasina geri tasi$")
    public void urunuOturmaOdasinaGeriTasi() throws InterruptedException {
        newScenariosScreens.movetoBathroom();
        reportLog("Ürünü oturma odasina geri tasi");
    }

    @Then("^\"([^\"]*)\" bildirimi \"([^\"]*)\" yapilir$")
    public void bildirimiYapilir(String arg0, String arg1) throws Throwable {
        newScenariosScreens.click_warning(arg0, arg1);
        reportLog(arg0+ " bildirimi "+arg1+ " yapıldı");
    }

    @Then("^Bekleme Modu \"([^\"]*)\" olarak seçilir$")
    public void beklemeModuOlarakSeçilir(String arg0) throws Throwable {
        newScenariosScreens.select_waitingMode(arg0);
        reportLog("Bekleme Modu "+arg0+ " olarak seçilir");
    }

    @Then("^Bekleme suresi (\\d+) dakika yapilir$")
    public void beklemeSuresiDakikaYapilir(int arg0) {
        newScenariosScreens.changeWaitingTime();
        reportLog("Bekleme suresi 120 dakika yapilir");
    }

    @Then("^Bekleme suresinin (\\d+) dakika oldugu kontrol edilir$")
    public void beklemeSuresininDakikaOlduguKontrolEdilir(int arg0) {
        newScenariosScreens.control_waitingTime();
        reportLog("Bekleme suresinin 120 dakika oldugu kontrol edilir");
    }

    @Then("^Bekleme suresi sifirlanir$")
    public void beklemeSuresiSifirlanir() {
        newScenariosScreens.changeWaitingTimeReset();
        reportLog("Bekleme süresi sıfırlanır");
    }

    @Then("^Bekleme suresinin sifirlandigi kontrol edilir$")
    public void beklemeSuresininSifirlandigiKontrolEdilir() {
        newScenariosScreens.control_waitingTimeReset();
        reportLog("Bekleme suresinin sifirlandigi kontrol edilir");
    }

    @And("^Kamera izini kabul edilir$")
    public void kameraIziniKabulEdilir() {
        newScenariosScreens.click_cameraAccessOk();
        reportLog("Kamera izini kabul edilir");
    }

    @And("^Pisirme suresi \"([^\"]*)\" olarak ayarlanir$")
    public void pisirmeSuresiOlarakAyarlanir(String arg0) throws InterruptedException {

    }

    @And("^Pisirme suresi \"([^\"]*)\":\"([^\"]*)\" olarak ayarlanir$")
    public void pisirmeSuresiOlarakAyarlanir(String arg0, String arg1) throws Throwable {
        newScenariosScreens.setCookingTime(arg0, arg1);
        reportLog("Pisirme suresi "+arg0+" : "+arg1+ " olarak ayarlanir");
    }

    @Then("^Eklenen bes adim silinir$")
    public void eklenenBesAdimSilinir() throws InterruptedException {
        newScenariosScreens.click_deleteCookingSteps();
        reportLog("Eklenen bes adim silinir");
    }

    @And("^Adimli pisirme edit play tusuna basilir$")
    public void adimliPisirmeEditPlayTusunaBasilir() {
        newScenariosScreens.click_stepCookingEditRun();
        reportLog("Adımlı pişirme edit play tuşuna basılır");
    }

    @Then("^Hazir tarifler basilir$")
    public void hazirTariflerBasilir() throws InterruptedException {
        newScenariosScreens.click_recipes();
        reportLog("Hazir tarifler basilir");
    }

    @Then("^Firina gonder butonuna basilir$")
    public void firinaGonderButonunaBasilir() {
        newScenariosScreens.click_sendToOwen();
        reportLog("Firina gonder butonuna basilir");
    }

    @Then("^Son calistirilan program play tusuna basilir$")
    public void sonCalistirilanProgramPlayTusunaBasilir() {
        newScenariosScreens.click_lastProgramPlay();
        reportLog("Son calistirilan program play tusuna basilir");
    }

    @Then("^\"([^\"]*)\" play tusuna basilir$")
    public void playTusunaBasilir(String arg0) throws Throwable {
        newScenariosScreens.click_deviceHistoryPlay(arg0);
        reportLog(arg0 + " play tuşuna basilir");
    }

    @Then("^Firina gonder butonunun olmadigi kontrol edilir$")
    public void firinaGonderButonununOlmadigiKontrolEdilir() {
        newScenariosScreens.control_sendToOwenBtn();
        reportLog("Firina gonder butonunun olmadigi kontrol edilir");
    }
}
