<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LuyenCode.mainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List || practice</title>
    <style>
        fieldset a {
            text-decoration: none;
        }

        .pushable {
            position: relative;
            background: transparent;
            border: none;
            padding: 0;
            cursor: pointer;
            margin-right: 15px;
        }

        .shadow {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 12px;
            background: hsl(0deg 0% 0% / 0.25);
            transform: translateY(4px);
        }

        .edge {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 12px;
            background: hsl(340deg 100% 32%);
        }

        .front {
            display: block;
            position: relative;
            padding: 10px 18px;
            border-radius: 12px;
            font-size: 1rem;
            color: white;
            background: hsl(345deg 100% 47%);
            transform: translateY(-8px);
            text-decoration: none;
        }

        .pushable:active .front {
            transform: translateY(-4px);
        }

        .pushable:active .shadow {
            transform: translateY(2px);
        }

        .pushable:focus:not(:focus-visible) {
            outline: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <fieldset style="margin: 0 auto; border: none; box-shadow: 4px 6px 12px #999; border-radius: 5px; max-width: 1200px; background-color: ghostwhite;">
            <legend style="margin: 30px; font-size: 30px; color: #ff5b5b; font-style: italic; font-weight: bold; text-transform: uppercase; text-shadow: 2px 4px 2px #999;"><span>một số form chức năng đơn giản</span></legend>
            <div style="margin-top: 30px; display: flex;">
                <a href="/May-Tinh" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Máy tính</span>
                </a>

                <a href="/So-Thich" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">chọn theo sở thích</span>
                </a>

                <a href="/Dang-Ky-Thanh-Vien" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Đăng ký thành viên</span>
                </a>
                <a href="/Dia-Danh-Du-Lich" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Địa danh du lịch</span>
                </a>
                <a href="/Ho-So-Dang-Ky" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Hồ sơ đăng ký</span>
                </a>
                <a href="/Ho-So-Dang-Ky-Kiem-Loi" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Hồ sơ đăng ký kiểm lỗi</span>
                </a>
            </div>
            <div style="margin-top: 30px; display: flex;">
                <a href="/Doc-Bao" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Đọc báo</span>
                </a>
                <a href="/Lich" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Lịch</span>
                </a>
                <a href="/Multi-View" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">MutiView</span>
                </a>
                <a href="/Quang-Cao" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Quảng Cáo</span>
                </a>
                <a href="/San-Pham" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">Sản Phẩm</span>
                </a>

                <a href="/Thong-Tin-Ca-Nhan" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">ProFile</span>
                </a>
                <a href="/Upload-File" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">UploadFile</span>
                </a>
                <a href="/View-Upload" class="pushable">
                    <span class="shadow"></span>
                    <span class="edge"></span>
                    <span class="front">ViewUpload</span>
                </a>
            </div>
        </fieldset>
    </form>

</body>
</html>
