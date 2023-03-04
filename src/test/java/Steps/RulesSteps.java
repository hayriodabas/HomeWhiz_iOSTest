package Steps;

import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class RulesSteps extends BaseSteps {

    @Before
    public void setup() {
        setupCucumber();
    }

    @Then("^\"([^\"]*)\" texti listeden seçilir$")
    public void textiListedenSeçilir(String arg0)  {
        rulesScreens.Rules_clickOnList(arg0);
    }

    @Then("^Kural adi \"([^\"]*)\" girilir$")
    public void kuralAdiGirilir(String arg0)  {
        rulesScreens.Rules_setRuleName(arg0);
    }

    @Then("^Kural adi \"([^\"]*)\" olarak değiştirilir$")
    public void kuralAdiDegistirilir(String arg0) throws InterruptedException {
        rulesScreens.Rules_renameRuleName(arg0);
    }

    @Then("^Kurali simdi etkinlestirin tusuna basilir$")
    public void kuraliEtkinlestirTusunaBasilir() throws Throwable {
        rulesScreens.Rules_clickRuleActivationButton();
    }

    @Then("^Kural başlangıç saati (\\d+) saat ileri set edilir$")
    public void kuralBaşlangıçSaatiSaatIleriSetEdilir(int arg0)  throws InterruptedException{
        rulesScreens.Rules_setHour(arg0);
    }

    @Then("^Kural başlangıç saati (\\d+) dakika ileri set edilir$")
    public void kuralBaşlangıçSaatiDakikaIlerSetEdilir(int arg0) throws InterruptedException {
        rulesScreens.Rules_setMinute(arg0);
    }

    @Then("^Kural gününü \"([^\"]*)\" olarak ayarlanır$")
    public void kuralGününüOlarakAyarlanır(String arg0) throws Throwable {
        rulesScreens.Rules_setDay(arg0);
    }

    @Then("^Lokasyon izin bilgilendirme metni var ise onayla$")
    public void lokasyonIzinBilgilendirmeMetniVarIseOnayla() {
        rulesScreens.Rules_ApproveLocationPopUp();
    }

    @And("{string} set edilir")
    public void setEdilir(String arg0) {
        rulesScreens.rules_setValue(arg0);
    }

    @And("Kurallar {string} butonuna basilir")
    public void kurallarButonunaBasilir(String arg0) {
        rulesScreens.rules_clickComboItem(arg0);
    }

    @And("Kural asagi ok tusuna basilir")
    public void kuralAsagiOkTusunaBasilir() {
        rulesScreens.Rules_clickMoreArrowRuleButton();
    }

    @And("Uyari popupi sil butonuna basilir")
    public void uyariPopupiSilButonunaBasilir() {
        rulesScreens.rules_clickAlertDelete();
    }
}
