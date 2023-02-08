package Runner;

import io.cucumber.testng.PickleWrapper;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;
import Tests.BaseTest;
import Tests.BaseTest;
import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.FeatureWrapper;
import io.cucumber.testng.TestNGCucumberRunner;

@CucumberOptions(
//        strict = true,
        monochrome = true,
        plugin = {"rerun:target/failedrerun.txt"},
//        tags = "@TumSenaryolar",
//        tags = "@E8L_BulasikMakinesi",
//        tags = "@CamasirMakinesi",
//        tags = "@PosiKlima",
//        tags = "@RappleFirin",
//        tags = "@VegaFirin",
//        tags = "@ApolloKurutucu",
//        tags = "@SafirBuzdolabi",
        tags = "@IcHavaKalitesiOlcum",
//       tags = "@SilverDavlumbaz",
//        tags = "@SmartPlug",
//        tags = "@SmartLamp",
//        tags = {"@Kurallar"},
//        tags = {"@UrunBagimsizSenaryolar"},
//        tags = "@Deneme",
//        tags = "@SilverDavlumbaz or " +
//                "@Kurallar or " +
//                "@E8L_BulasikMakinesi or " +
//                "@VegaFirin or " +
//                "@PosiKlima or " +
//                "@RappleFirin or " +
//                "@UrunBagimsizSenaryolar or " +
//                "@CamasirMakinesi or " +
//                "@ApolloKurutucu or " +
//                "@IcHavaKalitesiOlcum or " +
//                "@SmartPlug or " +
//                "@SmartLamp",
        glue = {"Steps", "com.arceliktv.lotr.hooks"},
        features = "src/test/java/Features"
)
public class CucumberRun extends BaseTest {
    private TestNGCucumberRunner testNGCucumberRunner;

    @BeforeClass
    public void setUpClass() {
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
    }

    @Test(groups = "cucumber", description = "Runs LoginCandiate Feature", dataProvider = "features")
    public void scenario(PickleWrapper pickleWrapper, FeatureWrapper featureWrapper) throws Throwable {
        testNGCucumberRunner.runScenario(pickleWrapper.getPickle());
    }

    @DataProvider
    public Object[][] features() {
        return testNGCucumberRunner.provideScenarios();
    }

    @AfterClass(alwaysRun = true)
    public void tearDownClass() throws Exception {
        testNGCucumberRunner.finish();
    }

}