<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="LuyenCode.SanPham" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chọn sản phẩm kẹo yêu thích</title>
    <style>
        .general-style {
            width: 800px;
            margin: 0 auto;
            background-color: #c5fffe;
            padding: 15px;
            text-align: center;
            box-shadow: 6px 8px #999;
            border-radius: 20px
        }

        .table-style {
            width: 100%;
            border-collapse: collapse;
        }

            .table-style th, .table-style td {
                border: 1px dashed #FFA500;
                padding: 10px;
                text-align: center;
            }

        .header-style {
            background-color: #00b7be;
            border-radius: 6px;
            color: #fff;
            font-weight: bold;
            text-align: center;
            padding: 10px;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .button-style {
            margin-top: 10px;
            text-align: center;
            background-color: #00b7be;
            padding: 10px;
            border-radius: 6px;
        }

        .quantity-style {
            color: red;
            font-weight: bold;
        }

        .button {
            background-color: #c5fffe;
            border: none;
            font-size: 16px;
            color: #000;
            padding: 10px 18px;
            border-radius: 8px;
            text-align: center;
        }

            .button:hover {
                background-color: #00b7be;
                color: #fff;
            }

        .text-left {
            text-align: left !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="general-style">
                    <div class="header-style">
                        Chọn các sản phẩm bạn thích
                    </div>
                    <table class="table-style">
                        <tr>
                            <th>Danh sách sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Sản phẩm được chọn</th>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:CheckBox ID="chkCandy1" runat="server" Text="Kẹo trái cây thập cẩm" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="chkCandy2" runat="server" Text="Kẹo nho" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="chkCandy3" runat="server" Text="Kẹo táo" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="chkCandy4" runat="server" Text="Socola táo" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Kẹo socola đậu phộng" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Kẹo coffee sữa" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Socola thập cẩm có nhân" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                            </td>
                            <td>
                                <asp:Label ID="lblTotalSelected" runat="server" CssClass="quantity-style" Text="0 sản phẩm"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSelectedCandies" runat="server" ReadOnly="true" Width="200px" TextMode="MultiLine" Rows="10"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <div class="button-style">
                        <asp:Button ID="btnReset" runat="server" CssClass="button" Text="Bắt đầu chọn lại" OnClick="btnReset_Click" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
