using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace LuyenCode
{
    public partial class ChonTheoSoThich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = GetFakeData();
                cblNghenghiep.DataSource = dt;
                cblNghenghiep.DataTextField = "nameJob";
                cblNghenghiep.DataBind();
                panelSothich.Visible = false;
                panelNghenghiep.Visible = false;
            }
        }

        protected void chkSothich_CheckedChanged(object sender, EventArgs e)
        {
            panelSothich.Visible = chkSothich.Checked;
        }

        protected void chkNghenghiep_CheckedChanged(object sender, EventArgs e)
        {
            panelNghenghiep.Visible = chkNghenghiep.Checked;
        }
        protected void chkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = GetFakeData();

            List<string> selectedValues = new List<string>();
            foreach (ListItem item in cblSothich.Items)
            {
                if (item.Selected)
                {
                    selectedValues.Add(item.Value);
                }
            }
            DataView dv = new DataView(dt);
            if (selectedValues.Count > 0)
            {
                string filterExpression = "idJob IN ('" + string.Join("','", selectedValues) + "')";
                dv.RowFilter = filterExpression;
            }
            else
            {
                dv.RowFilter = "";
            }

            cblNghenghiep.DataSource = dv;
            cblNghenghiep.DataBind();
        }
        private DataTable GetFakeData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("nameJob");
            dt.Columns.Add("idJob");

            dt.Rows.Add("Cầu thủ", "1");
            dt.Rows.Add("Huấn luyện viên ", "1");
            dt.Rows.Add("Trợ lý huấn luyện viên ", "1");
            dt.Rows.Add("Huấn luyện viên thể lực", "1");
            dt.Rows.Add("Chuyên gia phân tích chiến thuật", "1");
            dt.Rows.Add("Bác sĩ đội bóng", "1");
            dt.Rows.Add("Chuyên gia vật lý trị liệu", "1");
            dt.Rows.Add("Chuyên gia dinh dưỡng ", "1");
            dt.Rows.Add("Trọng tài ", "1");
            dt.Rows.Add("Trọng tài biên", "1");
            dt.Rows.Add("Trọng tài var", "1");
            dt.Rows.Add("Bình luận viên bóng đá", "1");
            dt.Rows.Add("Phóng viên thể thao", "1");
            dt.Rows.Add("Phim Hành động", "2");
            dt.Rows.Add("Phim Phiêu lưu", "2");
            dt.Rows.Add("Phim  Khoa học viễn tưởng", "2");
            dt.Rows.Add("Phim Kinh dị", "2");
            dt.Rows.Add("Phim Tâm lý", "2");
            dt.Rows.Add("Phim  Hài hước ", "2");
            dt.Rows.Add("Phim Lãng mạn", "2");
            dt.Rows.Add("Phim Kinh điển ", "2");
            dt.Rows.Add("Phim  Hoạt hình ", "2");
            dt.Rows.Add("Phim Giả tưởng ", "2");
            dt.Rows.Add("Phim Thần thoại", "2");
            dt.Rows.Add("Phim Tội phạm", "2");
            dt.Rows.Add("Phim Lịch sử ", "2");
            dt.Rows.Add("Phim Chiến tranh", "2");
            dt.Rows.Add("Phim Tài liệu", "2");
            dt.Rows.Add("Phim Gia đình", "2");
            dt.Rows.Add("Phim Trinh thám", "2");
            dt.Rows.Add("Phim Chính kịch", "2");
            dt.Rows.Add("Lĩnh vực Sản xuất ", "3");
            dt.Rows.Add("Lĩnh vực Thương mại", "3");
            dt.Rows.Add("Lĩnh vực Bất động sản", "3");
            dt.Rows.Add("Lĩnh vực Công nghệ thông tin", "3");
            dt.Rows.Add("Lĩnh vực Truyền thông và giải trí", "3");
            dt.Rows.Add("Lĩnh vực Du lịch và khách sạn", "3");
            dt.Rows.Add("Lĩnh vực chăm sóc sức khỏe", "3");
            dt.Rows.Add("Lĩnh vực Năng lượng", "3");
            dt.Rows.Add("Lĩnh vực Bán lẻ ", "3");
            dt.Rows.Add("Lĩnh vực Giao thông vận tải ", "3");
            dt.Rows.Add("Lĩnh vực Khai khoáng", "3");
            dt.Rows.Add("Lĩnh vực Thời trang", "3");
            dt.Rows.Add("Lĩnh vực  Viễn thông", "3");
            return dt;
        }
    }
}