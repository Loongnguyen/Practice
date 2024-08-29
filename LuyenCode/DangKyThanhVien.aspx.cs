using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btn_Dangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lbl_ThongBao.Text = "Đăng ký thành công!";
            }
            if (!rdt_Nam.Checked && !rdt_Nu.Checked)
            {
                lbl_error.Text = "Vui lòng chọn giới tính.";
                return;
            }
        }
        protected void Clear()
        {
            lbl_ThongBao.Text = "";
            txt_Email.Text = "";
            txt_HoTen.Text = "";
            txt_NgaySinh.Text = "";
            txt_Tendn.Text = "";
            txt_ThuNhap.Text = "";
            txt_MatKhau.Text = "";
            txt_NhapLai.Text = "";
        }
    }
}