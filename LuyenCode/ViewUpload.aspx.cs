using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class ViewUpload : System.Web.UI.Page
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
        }
        protected void btn_Upfile_Click(object sender, EventArgs e)
        {
            clear();
            if (fileUpload.HasFile)
            {
                try
                {
                    string filePath = Server.MapPath("~/Upload/") + fileUpload.FileName;
                    fileUpload.SaveAs(filePath);
                    lbl_ThongBao.Text = "Tải file lên thành công!";               
                    LoadUploadedFiles();
                }
                catch (Exception ex)
                {
                    lbl_error.Text = "Có lỗi xảy ra: " + ex.Message;
                }
            }
            else
            {
                lbl_error.Text = "Vui lòng chọn tập tin để upload.";
            }

        }
        private void LoadUploadedFiles()
        {
            string uploadFolder = Server.MapPath("~/Upload/");
            string[] files = Directory.GetFiles(uploadFolder);
            blFileList.Items.Clear();
            foreach (string file in files)
            {
                blFileList.Items.Add(Path.GetFileName(file));
            }
        }

        public void clear()
        {
            lbl_ThongBao.Text = "";
            lbl_error.Text = "";
        }
    }
}