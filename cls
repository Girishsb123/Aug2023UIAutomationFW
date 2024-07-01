^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  1) package com.qa.opencart.pages;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  2) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  3) import org.openqa.selenium.By;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  4) import org.openqa.selenium.WebDriver;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  5) import org.openqa.selenium.WebElement;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  6) import org.openqa.selenium.support.FindBy;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  7) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  8) import com.qa.opencart.constants.AppConstants;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530  9) import com.qa.opencart.utils.ElementUtil;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 10) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 11) import io.qameta.allure.Step;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 12) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 13) public class LoginPage{
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 14) 		
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 15) 	private WebDriver driver;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 16) 	private ElementUtil eleUtil;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 17) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 18) 	// By locators: OR
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 19) 	private By userName = By.id("input-email");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 20) 	private By password = By.id("input-password");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 21) 	private By loginBtn = By.xpath("//input[@value='Login']");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 22) 	private By forgotPwdLink = By.linkText("Forgotten Password");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 23) 	private By logo = By.cssSelector("img[title='naveenopencart']");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 24) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 25) 	private By registerLink = By.linkText("Register");
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 26) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 27) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 28) 	// page const...
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 29) 	public LoginPage(WebDriver driver) {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 30) 		this.driver = driver;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 31) 		eleUtil = new ElementUtil(this.driver);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 32) 		
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 33) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 34) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 35) 	// page actions/methods:
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 36) 	@Step("getting login page title")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 37) 	public String getLoginPageTitle() {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 38) 		String title = eleUtil.waitForTitleIs(AppConstants.LOGIN_PAGE_TITLE, AppConstants.SHORT_DEFAUTT_WAIT);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 39) 		System.out.println("login page title:" + title);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 40) 		return title;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 41) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 42) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 43) 	@Step("getting login page url")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 44) 	public String getLoginPageURL() {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 45) 		String url = eleUtil.waitForURLContains(AppConstants.LOGIN_PAGE_URL_FRACTION, AppConstants.SHORT_DEFAUTT_WAIT);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 46) 		System.out.println("login page url:" + url);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 47) 		return url;
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 48) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 49) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 50) 	@Step("checking forgot pwd link exist")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 51) 	public boolean isForgotPwdLinkExist() {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 52) 		return eleUtil.waitForVisibilityOfElement(forgotPwdLink, AppConstants.SHORT_DEFAUTT_WAIT).isDisplayed();
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 53) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 54) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 55) 	@Step("checking logo exist")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 56) 	public boolean isLogoExist() {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 57) 		return eleUtil.waitForVisibilityOfElement(logo, AppConstants.SHORT_DEFAUTT_WAIT).isDisplayed();
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 58) 		
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 59) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 60) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 61) 	@Step("username is : {0} and password {1} ")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 62) 	public AccountsPage doLogin(String username, String pwd) {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 63) 		System.out.println("creds are: " + username + " : " + pwd);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 64) 		eleUtil.waitForVisibilityOfElement(userName, AppConstants.MEDIUM_DEFAUTT_WAIT).sendKeys(username);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 65) 		eleUtil.doSendKeys(password, pwd);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 66) 		eleUtil.doClick(loginBtn);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 67) 		
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 68) 		return new AccountsPage(driver);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 69) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 70) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 71) 	@Step("navigating to register page")
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 72) 	public RegisterPage navigateToRegisterPage() {
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 73) 		eleUtil.waitForVisibilityOfElement(registerLink, AppConstants.MEDIUM_DEFAUTT_WAIT).click();
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 74) 		return new RegisterPage(driver);
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 75) 	}
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 76) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 77) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 78) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 79) 	
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 80) 
^fdcdf49 (Girish 2024-07-01 11:37:36 +0530 81) }
