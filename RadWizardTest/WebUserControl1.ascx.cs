using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace RadWizardTest
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void rg1_OnNeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            rg1.DataSource = new[] { new { Id = 1 } };
        }
    }
}