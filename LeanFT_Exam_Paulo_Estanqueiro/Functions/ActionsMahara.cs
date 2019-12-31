using HP.LFT.Report;
using HP.LFT.SDK.Web;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace LeanFT_Exam_Paulo_Estanqueiro.Functions
{
    class ActionsMahara
    {
        private readonly IBrowser _browser;
        private readonly Login ap;

        public ActionsMahara(IBrowser browser)
        {
            this._browser = browser;
            ap = new Login(_browser);
        }

        public void Login(string user, string pass, string name)
        {
            string functionName = "Login"; 
            Reporter.StartReportingContext(functionName);
            // Login In
            Utils.WaitUntilExistsAndAction(ap.pageHomeMahara.inpUsername, "validate");
            ap.pageHomeMahara.inpUsername.SetValue(user);
            ap.pageHomeMahara.inpPassword.SetSecure(pass);
            ap.pageHomeMahara.btnLogin.Click();
            Reporter.EndReportingContext();
            
            // Verifying if the correct user is logged in
            Reporter.StartReportingContext("Verify User Logged In Is " + user);
            Utils.WaitUntilExistsAndAction(ap.pageLoggedUser.strUser, "validate");
            Validate(functionName, ap.pageLoggedUser.strUser.InnerText, name);
            Reporter.EndReportingContext();
        }

        public void AddNewUser(string first_name, string last_name, string email, string username, string password)
        {
            string functionName = "Add New User";
            Reporter.StartReportingContext(functionName);
            // Accessing Adding New User
            Utils.WaitUntilExistsAndAction(ap.pageLoggedUser.lnkAdminMenu, "click");
            Utils.WaitUntilExistsAndAction(ap.pageLoggedUser.lnkPeople, "click");
            Utils.WaitUntilExistsAndAction(ap.pageLoggedUser.lnkAddUser,"click");

            // Filling New User Form
            FillingNewUserForm(first_name, last_name, email, username, password);

            // Validate if the new user is created successfuly
            Utils.WaitUntilExistsAndAction(ap.pageNewAccount.strAddSuccessful, "validate");
            Validate(functionName, ap.pageNewAccount.strAddSuccessful.InnerText, Constants.SUCCESS_MESSAGE);
            Reporter.EndReportingContext();
        }

        public void ChangeAccountSettings()
        {
            string functionName = "Change Account Settings";
            Reporter.StartReportingContext(functionName);
            // Navigating to Legal Page
            Utils.WaitUntilExistsAndAction(ap.pageLegal.strLegal, "validate");
           
            AcceptingLegalTerms();
            ValidateLegalTerms();
            ChangingNewUserPassword();

            // Returning to Dashboard
            Utils.WaitUntilExistsAndAction(ap.pageCommons.btnMainMenu, "click");
            Utils.WaitUntilExistsAndAction(ap.pageCommons.lnkDashboard, "click");
            Utils.WaitUntilExistsAndAction(ap.pageDashboard.strDashboard, "validate");
            Reporter.EndReportingContext();
        }

        public void EngagePeople()
        {
            string functionName = "Engage People";
            Reporter.StartReportingContext(functionName);
            // Accessing People Page
            Utils.WaitUntilExistsAndAction(ap.pageCommons.btnMainMenu, "click");
            Utils.WaitUntilExistsAndAction(ap.pageDashboard.lnkEngage, "click");
            Utils.WaitUntilExistsAndAction(ap.pageDashboard.lnkPeople, "click");
            Utils.WaitUntilExistsAndAction(ap.pagePeople.strPeople, "validate");

            // Verifying Friends
            IWebElement gridData = ap.pagePeople.arrResultNames;
            IWebElement table = ap.pagePeople.tblResultsAll;
            IWebElement[] names = table.FindChildren<IWebElement>(gridData.GetDescription());

            foreach (var name in names)
            {
                Console.WriteLine(name.InnerText);
            }

            // Returning to Dashboard
            Utils.WaitUntilExistsAndAction(ap.pageCommons.btnMainMenu, "click");
            Utils.WaitUntilExistsAndAction(ap.pageCommons.lnkDashboard, "click");
            Reporter.EndReportingContext();
        }

        public void Logout()
        {
            string functionName = "Logout";
            Reporter.StartReportingContext(functionName);
            // Logout
            Utils.WaitUntilExistsAndAction(ap.pageNewAccount.btnUserMenu,"click");
            Utils.WaitUntilExistsAndAction(ap.pageCommons.lnkLogout, "click");

            // Verifying if current user is logged out
            Utils.WaitUntilExistsAndAction(ap.pageHomeMahara.msgLoggedOut, "validate");
            Validate(functionName, ap.pageHomeMahara.msgLoggedOut.InnerText, Constants.SUCCESS_LOGOUT);
            Reporter.EndReportingContext();
        }




        private void FillingNewUserForm(string first_name, string last_name, string email, string username, string password)
        {
            Utils.WaitUntilExistsAndAction(ap.pageAddUser.inpFirstName, "validate");
            ap.pageAddUser.inpFirstName.SetValue(first_name);
            ap.pageAddUser.inpLastName.SetValue(last_name);
            ap.pageAddUser.inpEmail.SetValue(email);
            ap.pageAddUser.inpUsername.SetValue(username);
            ap.pageAddUser.inpPassword.SetSecure(password);
            ap.pageAddUser.btnAdd.Click();
        }



        private void AcceptingLegalTerms()
        {
            Reporter.StartReportingContext("Accepting Legal Terms");
            if (ap.pageLegal.statePrivacy.ClassName.ToString() == "state-label off")
            {
                ap.pageLegal.statePrivacy.Click();
                Utils.WaitUntilStatusChange(ap.pageLegal.statePrivacy);
            }

            if (ap.pageLegal.stateTerms.ClassName.ToString() == "state-label off")
            {
                ap.pageLegal.stateTerms.Click();
                Utils.WaitUntilStatusChange(ap.pageLegal.stateTerms);
            }
            ap.pageLegal.btnSaveChanges.Click();
            Reporter.EndReportingContext();
        }

        private void ValidateLegalTerms()
        {
            string functionName = "Validate Legal Terms";
            Reporter.StartReportingContext(functionName);
            Utils.WaitUntilExistsAndAction(ap.pageAgreements.strPrivacyAgreementSaved, "validate");
            Validate(functionName, ap.pageAgreements.strPrivacyAgreementSaved.InnerText, Constants.AGREEMENTS_MESSAGE);
            Utils.WaitUntilExistsAndAction(ap.pageAgreements.strTermsAgreementSaved, "validate");
            Validate(functionName, ap.pageAgreements.strPrivacyAgreementSaved.InnerText, Constants.AGREEMENTS_MESSAGE);
            Reporter.EndReportingContext();
        }

        private void ChangingNewUserPassword()
        {
            string functionName = "Changing New User Password";
            Reporter.StartReportingContext(functionName);
            // Changing New User Password
            ap.pageAgreements.inpPassword1.SetSecure(Constants.USER_NEW_PASS);
            ap.pageAgreements.inpPassword2.SetSecure(Constants.USER_NEW_PASS);
            ap.pageAgreements.btnSubmit.Click();

            //Validating New User Password Is Changed
            Utils.WaitUntilExistsAndAction(ap.pageDashboard.strNewPasswordSaved, "validate");
            Validate(functionName, ap.pageDashboard.strNewPasswordSaved.InnerText, Constants.SUCCESS_PASS_CHANGE);
            Reporter.EndReportingContext();
        }

        private void Validate(string functionName, string actualValue, string expectedValue)
        {
            if (string.Compare(actualValue, expectedValue, true) == 0)
            {
                Reporter.ReportEvent(functionName, "Success!!", Status.Passed);
            }
            else
            {
                Reporter.ReportEvent(functionName, "NOT success!!", Status.Failed, _browser.GetSnapshot());
                Assert.Fail();
            }
        }
    }
}
