using System;
using System.Web.Routing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace LuyenCode
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
            void RegisterRoutes(RouteCollection routes)
            {
                routes.MapPageRoute("TrangChinh", "Trang-Chu", "~/MainPage.aspx");
                routes.MapPageRoute("SoThich", "So-Thich", "~/ChonTheoSoThich.aspx");
                routes.MapPageRoute("DangKyThanhVien", "Dang-Ky-Thanh-Vien", "~/DangKyThanhVien.aspx");
                routes.MapPageRoute("DiaDanhDuLich", "Dia-Danh-Du-Lich", "~/DiaDanhDuLich.aspx");
                routes.MapPageRoute("DocBao", "Doc-Bao", "~/DocBao.aspx");
                routes.MapPageRoute("HoSoDangKy", "Ho-So-Dang-Ky", "~/HoSoDangKy.aspx");
                routes.MapPageRoute("HoSoDangKyKiemLoi", "Ho-So-Dang-Ky-Kiem-Loi", "~/HoSoDangKyKiemLoi.aspx");
                routes.MapPageRoute("Lich", "Lich", "~/Lich.aspx");
                routes.MapPageRoute("MayTinh", "May-Tinh", "~/MayTinh.aspx");
                routes.MapPageRoute("MultiView", "Multi-View", "~/MultiView.aspx");
                routes.MapPageRoute("QuangCao", "Quang-Cao", "~/QuangCao.aspx");
                routes.MapPageRoute("SanPham", "San-Pham", "~/SanPham.aspx");
                routes.MapPageRoute("ThongTinCaNhan", "Thong-Tin-Ca-Nhan", "~/ThongTinCaNhan.aspx");
                routes.MapPageRoute("UploadFile", "Upload-File", "~/UploadFile.aspx");
                routes.MapPageRoute("ViewUpload", "View-Upload", "~/ViewUpload.aspx");
            }
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}