package uk.co.library.pages;
/* 
 Created by Kalpesh Patel
 */

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Reporter;
import uk.co.library.utility.Utility;

public class ResultPage extends Utility {
    private static final Logger log = LogManager.getLogger(ResultPage.class.getName());

    public ResultPage() {
        PageFactory.initElements(driver, this);
    }

    @CacheLookup
    @FindBy(xpath = "//h1[@class='search-header__title']")
    WebElement resultText;

    public Boolean verifyTheResults(String expected) {
        Reporter.log("Verifying Results : " + expected + " from " + resultText.toString());
        Boolean result = false;
        String s = getTextFromElement(resultText);
        if (s.contains(expected)) {
            result = true;
        }
        return result;
    }
}
