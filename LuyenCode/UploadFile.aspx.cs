using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Upfile_Click(object sender, EventArgs e)
        {
            clear();

            if (fileUpload.HasFile)
            {
                try
                {
                    // Đường dẫn thư mục Upload
                    string uploadFolderPath = Server.MapPath("~/Upload/");
                    // Lấy tên tập tin
                    string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);

                    // Đường dẫn đầy đủ để lưu tập tin
                    string filePath = uploadFolderPath + fileName;

                    // Lưu tập tin vào thư mục Upload
                    fileUpload.SaveAs(filePath);

                    // Thông báo thành công
                    lbl_ThongBao.Text = "Tập tin đã được upload thành công!";
                }
                catch (Exception ex)
                {
                    // Thông báo lỗi
                    lbl_error.Text = "Có lỗi xảy ra: " + ex.Message;
                }
            }
            else
            {
                // Thông báo khi người dùng chưa chọn tập tin
                lbl_error.Text = "Chưa Có tập tin được chọn.";
            }

        }
        public void clear()
        {
            lbl_ThongBao.Text = "";
            lbl_error.Text = "";
        }
    }
}