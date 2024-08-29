using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            ClearButtonSelection();
            btnPage1.CssClass += " selected";
        }
            protected void btnPage_Click(object sender, EventArgs e)
            {
                LinkButton btnClicked = (LinkButton)sender;

                int viewIndex = int.Parse(btnClicked.CommandArgument);
                MultiView1.ActiveViewIndex = viewIndex;
                ClearButtonSelection();
                btnClicked.CssClass += " selected";
            }

            private void ClearButtonSelection()
            {
                btnPage1.CssClass = btnPage1.CssClass.Replace(" selected", "");
                btnPage2.CssClass = btnPage2.CssClass.Replace(" selected", "");
                btnPage3.CssClass = btnPage3.CssClass.Replace(" selected", "");
            }

    }
}