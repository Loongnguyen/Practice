<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoSoDangKy.aspx.cs" Inherits="LuyenCode.HoSoDangKy" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hồ sơ đăng ký</title>
    <style>
        .main-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 15px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }

        .table-container {
            width: 100%;
            border-collapse: collapse;
        }

            .table-container th, .table-container td {
                padding: 10px;
                text-align: left;
            }

        .header-title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            color: brown;
            margin-bottom: 10px;
        }

        .form-label {
            width: 20%;
            padding-right: 10px;
        }

        .col-half {
            width: 50%;
        }

        .input-field {
            width: 90%;
            border: 2px solid grey;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="main-container">
                    <div class="header-title">Hồ sơ đăng ký</div>

                    <table class="table-container">
                        <tr>
                            <th colspan="2" style="text-align: center; font-size: 20px; color: #296c9d; background-color: #f7d1f4;">Thông tin cá nhân</th>
                            <th class="col-half" style="text-align: center; font-size: 20px; color: #296c9d; background-color: #f7d1f4">Hồ sơ khách hàng</th>
                        </tr>
                        <tr>
                            <td class="form-label">Họ tên khách hàng:</td>
                            <td>
                                <asp:TextBox ID="txt_HoTen" runat="server" CssClass="input-field"></asp:TextBox>
                            </td>
                            <td rowspan="5" style="padding: 0 20px; background-color: #f0f0f0; box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.4); border-radius: 10px;">

                                <asp:Label ID="lbl_ThongTin" runat="server"></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Email:</td>
                            <td>
                                <asp:TextBox ID="txt_Email" runat="server" CssClass="input-field"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Giới tính:</td>
                            <td>
                                <asp:RadioButton ID="rdt_Nam" runat="server" GroupName="GioiTinh" Text="Nam" />
                                <asp:RadioButton ID="rdt_Nu" runat="server" GroupName="GioiTinh" Text="Nữ" />
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Địa chỉ:</td>
                            <td>
                                <asp:TextBox ID="txt_DiaChi" runat="server" TextMode="MultiLine" Rows="3" CssClass="input-field"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Điện thoại:</td>
                            <td>
                                <asp:TextBox ID="txt_DienThoai" runat="server" CssClass="input-field"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btn_DangKy" runat="server" Text="Đăng ký" OnClick="btn_DangKy_Click" Style="margin-left: 42%;" />
                            </td>
                            <td style="text-align: center;">
                                <asp:Button ID="btn_Xoa" runat="server" Text="Xóa" OnClick="btn_Xoa_Click" /></td>
                        </tr>
                    </table>

                    <div id="myModal" class="modal">
                        <div class="modal-content">
                            <asp:Label ID="lbl_error" runat="server" Style="color: red;"></asp:Label>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
