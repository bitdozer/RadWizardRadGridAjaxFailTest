using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadWizardTest
{
    public partial class WebFormBroken : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            rz1.WizardSteps.Remove(RadStepBasics);
        }

        protected void WebUserControl1_OnLoad(object sender, EventArgs e)
        {
        }
    }
}