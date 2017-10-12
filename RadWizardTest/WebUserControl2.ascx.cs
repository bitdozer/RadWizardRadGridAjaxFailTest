using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadWizardTest
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            phType1.Visible = rb1.SelectedValue == "Type1";
            phType2.Visible = rb1.SelectedValue == "Type2";

        }
    }
}