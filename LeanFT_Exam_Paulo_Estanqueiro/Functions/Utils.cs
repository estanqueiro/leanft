using HP.LFT.Report;
using HP.LFT.SDK;
using HP.LFT.SDK.Web;
using System;

namespace LeanFT_Exam_Paulo_Estanqueiro.Functions
{
    class Utils
    {
        public static void WaitUntilExistsAndAction(IWebElement element, string action)
        {
            try
            {
                element.WaitUntil(result => element.Exists() && element.IsVisible);
                if(action=="click")
                {
                    element.Click();
                }
            }
            catch (Exception e)
            {
                Reporter.ReportEvent("Wait Until And Validate Page Exists", e.Message, Status.Failed);
            }
        }

        public static void WaitUntilStatusChange(IWebElement element)
        {
            try
            {
                element.WaitUntil(result => element.ClassName.Contains("state-label on"));
            }
            catch (Exception e)
            {
                Reporter.ReportEvent("Wait Until Status Change", e.Message, Status.Failed);
            }
        }
    }
}
