using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class HoSoDangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_DangKy_Click(object sender, EventArgs e)
        {

            string Hovaten = txt_HoTen.Text.ToString();
           
            string Email = txt_Email.Text.ToString();
            
            string Diachi = txt_DiaChi.Text.ToString();
           
            string Sdt = txt_DienThoai.Text.ToString();
            
            string Gioitinh = rdt_Nam.Checked ? "Nam" : "Nữ";
            
            string Thongtin = $"Họ tên khách hàng: <i>{Hovaten}</i></br>" +
                              $"Địa chỉ Email: <i>{Email}</i></br>" +
                              $"Giới tính: <i>{Gioitinh}</i></br>" +
                              $"Địa chỉ: <i>{Diachi}</i></br>" +
                              $"Số điện thoại: <i>{Sdt}</i>";
            lbl_ThongTin.Text = Thongtin;
            if (string.IsNullOrEmpty(txt_HoTen.Text) || string.IsNullOrEmpty(txt_Email.Text) || string.IsNullOrEmpty(txt_DiaChi.Text) || string.IsNullOrEmpty(txt_DienThoai.Text))
            {
                Clear();
                lbl_error.Text = "Vui lòng nhập đủ thông tin!";
            }
            else if (!rdt_Nam.Checked && !rdt_Nu.Checked)
            {
                lbl_error.Text = "Vui lòng chọn giới tính.";
                Clear();
                return;
            }
            else
            {
                lbl_error.Text = "";
            }        
        }

        protected void btn_Xoa_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            lbl_ThongTin.Text = "";
        }
    }
}