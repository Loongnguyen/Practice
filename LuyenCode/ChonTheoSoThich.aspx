<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChonTheoSoThich.aspx.cs" Inherits="LuyenCode.ChonTheoSoThich" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 10px;
            box-shadow: 6px 6px 12px #666;
            border-radius: 40px;
        }

        .table-container {
            width: 100%;
            border-collapse: collapse;
        }

            .table-container th, .table-container td {
                padding: 5px;
                text-align: left;
            }

        .header-title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            color: brown;
            margin: 10px 0;
        }

        .form-label {
            width: 50%;
            padding-right: 10px;
        }

        .auto-style1 {
            height: 34px;
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
                    <div class="header-title">Sở thích & nghề nghiệp</div>
                    <asp:Panel ID="panelPage" runat="server">
                        <table class="table-container">
                            <tr>
                                <td class="form-label">
                                    <asp:Panel ID="panelSothich" runat="server">
                                        <asp:Label ID="lblSothich" runat="server" Text="Sở Thích:" /><br />
                                        <asp:CheckBoxList ID="cblSothich" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chkList_SelectedIndexChanged">
                                            <asp:ListItem Value="1">Bóng đá</asp:ListItem>
                                            <asp:ListItem Value="2">Xem phim</asp:ListItem>
                                            <asp:ListItem Value="3">Kinh doanh</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Panel ID="panelNghenghiep" runat="server" Style="max-height: 110px; overflow-y: auto; box-shadow: 4px 4px 10px #999; padding: 5px; border-radius: 10px;">
                                        <asp:Label ID="lblDanhSach" runat="server" Text="Danh sách" /><br />
                                        <asp:BulletedList ID="cblNghenghiep" runat="server" BulletStyle="Numbered"></asp:BulletedList>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center;">
                                    <asp:CheckBox ID="chkSothich" runat="server" Text="Sở Thích" AutoPostBack="True" OnCheckedChanged="chkSothich_CheckedChanged" />
                                    <asp:CheckBox ID="chkNghenghiep" runat="server" Text="Lĩnh Vực" AutoPostBack="True" OnCheckedChanged="chkNghenghiep_CheckedChanged" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
