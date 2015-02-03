using System;
using NUnit.Framework;
using BankAccountNS;

namespace Bank
{
    [TestFixture]
    public class BankAPItests
    {
      private BankAccount _account;
      private string _customerName;
      private double _debitAmount;
      private double _expected;
      private double _beginningBalance;
      private double _actual;

      [SetUp]
      public void Init()
      {
        _beginningBalance = 11.99;
        _customerName = "Mr. Bryan Walton";
        _account = new BankAccount(_customerName, _beginningBalance);
      }

      [Test]
      public void Debit_WithValidAmount_UpdatesBalance()
      {
        _expected = 7.44;

        // act
        _debitAmount = 4.55;
        _account.Debit(_debitAmount);
        _actual = _account.Balance;

        //assert
        Assert.AreEqual(_expected, _actual, 0.001, "Account not debited correctly");
      }

      [Test]
      public void Debit_WithValidAmount_UpdatesBalance_error()
      {
        _expected = 8.44;

        // act
        _debitAmount = 4.55;
        _account.Debit(_debitAmount);
        _actual = _account.Balance;

        //assert
        Assert.AreEqual(_expected, _actual, 0.001, "Account not debited correctly");
      }
    }
}
