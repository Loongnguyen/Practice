using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class Testtts : System.Web.UI.Page
    {
        private string previousCategory = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            DataTable dt = GetFakeData();

            DataView dv = new DataView(dt);
            dv.Sort = "CategoryName ASC";

            rptProducts.DataSource = dv;
            rptProducts.DataBind();
        }

        protected string IsNewCategory(object categoryName)
        {
            string currentCategory = categoryName.ToString();
            if (previousCategory != currentCategory)
            {
                previousCategory = currentCategory;
                return $"<div class='category-header'>{currentCategory}</div>";
            }
            return string.Empty;
        }

        private DataTable GetFakeData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ImageUrl", typeof(string));
            dt.Columns.Add("NameProduct", typeof(string));
            dt.Columns.Add("Description", typeof(string));
            dt.Columns.Add("Price", typeof(decimal));
            dt.Columns.Add("Category", typeof(int));
            dt.Columns.Add("CategoryName", typeof(string));

            dt.Rows.Add("images/img1.jpg", "Product 1", "Description for Product 1", 100, 1, "Best Selling");
            dt.Rows.Add("images/img2.jpg", "Product 2", "Description for Product 2", 200, 1, "Best Selling");
            dt.Rows.Add("images/img3.jpg", "Product 3", "Description for Product 3", 150, 2, "New Arrivals");
            dt.Rows.Add("images/img4.jpg", "Product 4", "Description for Product 4", 250, 2, "New Arrivals");
            dt.Rows.Add("images/img5.jpg", "Product 5", "Description for Product 5", 300, 3, "Health Products");
            dt.Rows.Add("images/img6.jpg", "Product 6", "Description for Product 6", 350, 3, "Health Products");

            return dt;
        }
    }
}