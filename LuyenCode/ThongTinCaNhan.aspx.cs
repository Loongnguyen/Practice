using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DangKy_Click(object sender, EventArgs e)
        {
            string Hovaten = txt_Ten.Text.ToString();
            if (string.IsNullOrWhiteSpace(txt_Ten.Text))
            {
                lbl_error.Text = "Vui lòng nhập Họ và Tên.";
                lbl_Tieude.Text = "";   
                return;
            }
            string Gioitinh = rdt_Nam.Checked ? "Nam" : "Nữ";
            if (!rdt_Nam.Checked && !rdt_Nữ.Checked)
            {
                lbl_error.Text = "Vui lòng chọn Giới Tính.";
                lbl_Tieude.Text = "";
                return;
            }
            string Ngoaingu = "";
            if (ckb_AnhVan.Checked) Ngoaingu += "Tiếng Anh";
            if (ckb_PhapVan.Checked) Ngoaingu += "Tiếng pháp";

            if (!ckb_AnhVan.Checked && !ckb_PhapVan.Checked)
            {
                lbl_error.Text = "Vui lòng chọn ít nhất một Ngoại Ngữ.";
                lbl_Tieude.Text = "";
                return;
            }
            string Thunhap = "";
            if (rdt_Thunhap1.Checked) Thunhap += "Dưới 3 triệu";
            if (rdt_Thunhap2.Checked) Thunhap += "3-12 triệu";
            if (rdt_Thunhap3.Checked) Thunhap += "Trên 12 triệu";
            if (!rdt_Thunhap1.Checked && !rdt_Thunhap2.Checked && !rdt_Thunhap3.Checked)
            {
                lbl_error.Text = "Vui lòng chọn Thu Nhập.";
                lbl_Tieude.Text = "";
                return;
            }
            string Trinhdo = "";
            if (rdt_CaoDang.Checked) Trinhdo += "Cao Đẳng";
            if (rdt_DH.Checked) Trinhdo += "Đại Học";
            if (rdt_SauDH.Checked) Trinhdo += "Sau Đại Học";
            if (!rdt_CaoDang.Checked && !rdt_DH.Checked && !rdt_SauDH.Checked)
            {
                lbl_error.Text = "Vui lòng chọn trình độ.";
                lbl_Tieude.Text = "";
                return;
            }
            string Thongtin = $"Họ và tên: {Hovaten} </br> Giới tính: {Gioitinh}</br>Ngoại ngữ: {Ngoaingu}</br>" +
                              $"Mức thu Nhập: {Thunhap}</br> Trình độ: {Trinhdo}";

            lbl_Tieude.Text = "Thông Tin Về Bạn</br>";
            lbl_Thongtin.Text = Thongtin;
            lbl_error.Text = "";
        }
    }
}