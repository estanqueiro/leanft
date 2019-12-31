using Microsoft.VisualStudio.TestTools.UnitTesting;
using HP.LFT.SDK.Web;
using System.Configuration;
using LeanFT_Exam_Paulo_Estanqueiro.Functions;

namespace LeanFT_Exam_Paulo_Estanqueiro
{
    [TestClass]
    public class LeanFtTest : UnitTestClassBase<LeanFtTest>
    {
        private IBrowser browser;
        private ActionsMahara am;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            GlobalSetup(context);
        }

        [TestInitialize]
        public void TestInitialize()
        {
            browser = BrowserFactory.Launch(BrowserType.Chrome);
            browser.Navigate(ConfigurationManager.AppSettings[Constants.EXERCISE_LINK]);
            browser.Sync();
            am = new ActionsMahara(browser);
        }

        [TestMethod]
        public void CreateNewUser()
        {
            Reporter.StartReportingContext("Creating New User");
            am.Login(Constants.ADMIN_USER, Constants.ADMIN_PASS, Constants.ADMIN_NAME);
            am.AddNewUser(Constants.NEW_USER_FIRST_NAME, Constants.NEW_USER_LAST_NAME,
                          Constants.NEW_USER_EMAIL, Constants.NEW_USER_USERNAME, Constants.NEW_USER_PASSWORD);
            am.Logout();
            Reporter.EndReportingContext();
        }

        [TestMethod]
        public void ChangeAccountSettings()
        {
            Reporter.StartReportingContext("Changing Account Settings");
            am.Login(Constants.NEW_USER_USERNAME, Constants.NEW_USER_PASSWORD, Constants.NEW_USER_NAME);
            am.ChangeAccountSettings();
            am.Logout();
            Reporter.EndReportingContext();
        }

        [TestMethod]
        public void EngagePeople()
        {
            Reporter.StartReportingContext("Engaging People");
            am.Login(Constants.STUDENT_USER, Constants.STUDENT_PASS, Constants.STUDENT_NAME);
            am.EngagePeople();
            am.Logout();
            Reporter.EndReportingContext();
        }

        [TestCleanup]
        public void TestCleanup()
        {
            //browser.ClearCache();
            //browser.DeleteCookies();
            browser.Close();
            Reporter.EndTest();
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            GlobalTearDown();
        }
    }
}
