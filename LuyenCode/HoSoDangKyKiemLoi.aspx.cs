using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class HoSoDangKyKiemLoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!this.IsPostBack) 
            {
                
                for (int Ngay = 1; Ngay <= 31; Ngay++)
                {
                    ddl_Ngay.Items.Add(new ListItem(Ngay.ToString(), Ngay.ToString()));
                }

                for (int Thang = 1; Thang <= 12; Thang++)
                {
                    ddl_Thang.Items.Add(new ListItem(Thang.ToString(), Thang.ToString()));
                }
                for (int Nam = 2000; Nam <= 2010; Nam++)
                {
                    ddl_Nam.Items.Add(new ListItem(Nam.ToString(), Nam.ToString()));
                }
            }

        }
        protected void btn_DangKy_Click(object sender, EventArgs e)
        {
            string TenDn = txt_TenDn.Text.ToString();
            string MatKhau = txt_MatKhau.Text.ToString();
            string Hovaten = txt_HoTen.Text.ToString();
            string NgaySinh = ddl_Ngay.Text.ToString() +"/"+ ddl_Thang.Text.ToString() + "/" + ddl_Nam.Text.ToString();
            string Email = txt_Email.Text.ToString();
            string ThuNhap = txt_ThuNhap.Text.ToString()+"Đ";
            string Gioitinh = rdt_Nam.Checked ? "Nam" : "Nữ";
            string Diachi = txt_DiaChi.Text.ToString();
            string Sdt = txt_DienThoai.Text.ToString();

            string Thongtin = $"Tên đăng nhập: <i>{TenDn}</i></br>" +
                              $"Mật khẩu: <i>{MatKhau}</i></br>" +
                              $"Họ và tên: <i>{Hovaten}</i></br>" +
                              $"Ngày sinh: <i>{NgaySinh}</i></br>" +
                              $"Địa chỉ Email: <i>{Email}</i></br>" +
                              $"Thu nhập: <i>{ThuNhap}</i></br>" +
                              $"Giới tính: <i>{Gioitinh}</i></br>" +
                              $"Địa chỉ: <i>{Diachi}</i></br>" +
                              $"Số điện thoại: <i>{Sdt}</i>";
            lbl_ThongTin.Text = Thongtin;
        }
    }
}