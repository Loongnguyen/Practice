<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiaDanhDuLich.aspx.cs" Inherits="LuyenCode.DiaDanhDuLich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Địa Danh Du Lịch</title>
    <style>
        .main-form {
            display: block;
            max-width: 1200px;
            min-height: 800px;
            margin: 0 10px;
            align-items: center;
            margin: 0 auto;
        }

        .table-container {
            margin: 0 auto;
            width: fit-content;
            padding: 5px;
        }

        fieldset {
            border-radius: 10px;
            background-color: aliceblue;
            border: none;
            box-shadow: 6px 12px 12px rgba(0, 0, 0, 0.6);
        }

            fieldset span {
                font-style: italic;
                color: #333;
                text-shadow: 4px 4px 2px rgba(0, 0, 0, 0.6);
                font-weight: bold;
                font-size: 24px;
            }

        tr, td, th {
            padding: 10px;
            font-size: 18px;
        }

        .btn-select {
            display: inline-block;
            padding: 6px 9px;
            margin-right: 10px;
            background-color: aliceblue;
            color: black;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 4px 5px #999;
            border: none;
            font-size: 16px;
            font-weight: bold;
        }

            .btn-select.selected {
                background-color: lightblue;
            }

            .btn-select:active {
                background-color: lightblue;
                box-shadow: 2px 3px #999;
                transform: translateY(3px);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="main-form">
                    <asp:Panel runat="server" CssClass="table-container">
                        <fieldset>
                            <legend><span>ĐỊA DANH DU LỊCH</span></legend>
                            <table border="1" cellpadding="5" cellspacing="0" style="width: 600px; margin: 10px; background-color: ghostwhite; text-align: center;">
                                <tr>
                                    <td style="width: 50%;">Địa danh du lịch:</td>
                                    <td>
                                        <asp:ListBox ID="lst_Diadanh" runat="server" Width="250px" Rows="4" SelectionMode="Multiple">
                                            <asp:ListItem Text="Hà Nội" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Hồ Chí Minh" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Nghệ An" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Thanh Hóa" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="Hải Phòng" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="Quảng Ninh" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="Hải Dương" Value="7"></asp:ListItem>
                                        </asp:ListBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tổng số địa danh:</td>
                                    <td>
                                        <asp:Label ID="lbl_SoDD" Style="color: red;" runat="server" Text="6"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btn_Chon" CssClass="btn-select" runat="server" Text="Chọn" OnClick="btn_Chon_Click" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lbl_DiadanhSelected" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </asp:Panel>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
