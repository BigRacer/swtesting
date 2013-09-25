import com.thoughtworks.selenium.*;
import org.junit.Test;
import org.junit.Assert;
import org.junit.Before;

public class TestCase extends SeleneseTestBase
{
      @Before
      public void setUp() throws Exception {
        setUp("http://localhost:7878/", "*firefox");
             // We instantiate and start the browser
      }

      @Test
      public void testNew() throws Exception {
           selenium.open("/");
           selenium.click("patients_link");
           selenium.waitForPageToLoad("30000");
           assertEquals(true, selenium.isTextPresent("Patients1"));
     }

}