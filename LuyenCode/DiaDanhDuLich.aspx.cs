using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class DiaDanhDuLich : System.Web.UI.Page
    {
        string selectedItems = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Chon_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lst_Diadanh.Items)
            {
                if (item.Selected)
                {
                    selectedItems += item.Text+"</br>";
                }
            }
            lbl_DiadanhSelected.Text = selectedItems;
        }
    }
}