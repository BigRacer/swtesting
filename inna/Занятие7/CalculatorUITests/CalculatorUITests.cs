﻿using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Support.UI;

namespace CalculatorUITests
{
  [TestFixture]
  public class CalculatorUITests
  {
    private IWebDriver driver;
    private StringBuilder verificationErrors;
    private string baseURL;
    private bool acceptNextAlert = true;

    [SetUp]
    public void SetupTest()
    {
      driver = new FirefoxDriver();
      baseURL = "http://www.calculator888.ru/";
      verificationErrors = new StringBuilder();
    }

    [TearDown]
    public void TeardownTest()
    {
      try
      {
        driver.Quit();
      }
      catch (Exception)
      {
        // Ignore errors if unable to close the browser
      }
      Assert.AreEqual("", verificationErrors.ToString());
    }

    [Test]
    public void multiplicationTest()
    {
      string _expected = "14";
      driver.Navigate().GoToUrl(baseURL + "/");
      //driver.FindElement(By.CssSelector("#nmr_7 > table > tbody > tr > td")).Click();
      driver.FindElement(By.CssSelector("html > body > div#content_osn > div.sered_baza > div.sered_sered > div.content > div#calculator_online > table.korpus > tbody > tr > td > div > table > tbody > tr > td > div > div#nmr_7.kn_cif > table > tbody > tr > td")).Click();
      driver.FindElement(By.CssSelector("html > body > div#content_osn > div.sered_baza > div.sered_sered > div.content > div#calculator_online > table.korpus > tbody > tr > td > div > table > tbody > tr > td > div > div#nmr_16.kn_des > table > tbody > tr > td")).Click();
      driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td div table tbody tr td div div#nmr_20.kn_cif table tbody tr td")).Click();
      driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td div table tbody tr td div div#nmr_23.kn_rav table tbody tr td")).Click();

      //assert
      string _actual = driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td.display div#display")).Text;
      Assert.AreEqual(_expected, _actual, "7x2 isn't 14, but should be");
    }

    [Test]
    public void multiplicationTest_error()
    {
      string _expected = "0";
      driver.Navigate().GoToUrl(baseURL + "");
      
      driver.FindElement(By.CssSelector("html > body > div#content_osn > div.sered_baza > div.sered_sered > div.content > div#calculator_online > table.korpus > tbody > tr > td > div > table > tbody > tr > td > div > div#nmr_7.kn_cif > table > tbody > tr > td")).Click();
      driver.FindElement(By.CssSelector("html > body > div#content_osn > div.sered_baza > div.sered_sered > div.content > div#calculator_online > table.korpus > tbody > tr > td > div > table > tbody > tr > td > div > div#nmr_16.kn_des > table > tbody > tr > td")).Click();
      driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td div table tbody tr td div div#nmr_20.kn_cif table tbody tr td")).Click();
      driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td div table tbody tr td div div#nmr_23.kn_rav table tbody tr td")).Click();

      //assert
      string _actual = driver.FindElement(By.CssSelector("html body div#content_osn div.sered_baza div.sered_sered div.content div#calculator_online table.korpus tbody tr td.display div#display")).Text;
      Assert.AreEqual(_expected, _actual, "7x2 isn't 0, but should be by test design");
    }

    private bool IsElementPresent(By by)
    {
      try
      {
        driver.FindElement(by);
        return true;
      }
      catch (NoSuchElementException)
      {
        return false;
      }
    }

    private bool IsAlertPresent()
    {
      try
      {
        driver.SwitchTo().Alert();
        return true;
      }
      catch (NoAlertPresentException)
      {
        return false;
      }
    }

    private string CloseAlertAndGetItsText()
    {
      try
      {
        IAlert alert = driver.SwitchTo().Alert();
        string alertText = alert.Text;
        if (acceptNextAlert)
        {
          alert.Accept();
        }
        else
        {
          alert.Dismiss();
        }
        return alertText;
      }
      finally
      {
        acceptNextAlert = true;
      }
    }
  }
}
