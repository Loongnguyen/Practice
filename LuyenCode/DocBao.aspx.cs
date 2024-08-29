using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class DocBao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hpl_TuoiTre.NavigateUrl = "https://tuoitre.vn/";
            hpl_TuoiTre.Target = "_blank";
            hpl_Tinnhanh.NavigateUrl = "https://vnexpress.net/";
            hpl_Tinnhanh.Target = "_blank";
            hpl_Thanhnien.NavigateUrl = "https://thanhnien.vn/";
            hpl_Thanhnien.Target = "_blank";
            hpl_Laodong.NavigateUrl = "https://nld.com.vn/";
            hpl_Laodong.Target = "_blank";
        }
    }
}