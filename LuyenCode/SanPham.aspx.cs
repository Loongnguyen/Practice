using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["TotalSelected"] = 0;
                ViewState["SelectedCandies"] = new List<string>();
            }
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkbox = (CheckBox)sender;
            List<string> selectedCandies = (List<string>)ViewState["SelectedCandies"];
            int totalSelected = (int)ViewState["TotalSelected"];

            if (checkbox.Checked)
            {
                selectedCandies.Add(checkbox.Text);
                totalSelected++;
            }
            else
            {
                selectedCandies.Remove(checkbox.Text);
                totalSelected--;
            }

            ViewState["TotalSelected"] = totalSelected;
            ViewState["SelectedCandies"] = selectedCandies;

            lblTotalSelected.Text = totalSelected + " sản phẩm";
            txtSelectedCandies.Text = string.Join("\n", selectedCandies);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ViewState["TotalSelected"] = 0;
            ViewState["SelectedCandies"] = new List<string>();

            lblTotalSelected.Text = "0 sản phẩm";
            txtSelectedCandies.Text = string.Empty;

            foreach (Control control in this.form1.Controls)
            {
                if (control is CheckBox)
                {
                    ((CheckBox)control).Checked = false;
                }
            }
        }
    }
}