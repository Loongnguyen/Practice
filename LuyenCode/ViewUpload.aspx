<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUpload.aspx.cs" Inherits="LuyenCode.ViewUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box-content {
            max-width: 60%;
            padding: 10px;
            box-shadow: 6px 6px 12px #aaa;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 10px;
        }

        .main-container {
            max-width: 450px;
            margin: 20px auto;
            padding: 10px;
            box-shadow: 6px 6px 10px #aaa;
            border-radius: 10px;
            background-color: aliceblue;
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
            width: 30%;
            padding-right: 10px;
        }

        .auto-style1 {
            height: 34px;
        }

        .custom-file-upload {
            box-shadow: 6px 6px 12px #aaa;
            padding: 10px;
            border-radius: 10px;
            background-color: #fff;
        }

        .text-left {
            text-align: left;
            font-size: 20px;
        }

        .btn-page {
            border: none;
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            text-decoration: none;
            background-color: aliceblue;
            color: black;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            cursor: pointer;
            box-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6)
        }

            .btn-page:hover {
                background-color: lightblue;
            }

            .btn-page.selected {
                background-color: lightblue;
            }

            .btn-page:last-child {
                margin-right: 0;
            }

            .btn-page:active {
                background-color: lightblue;
                box-shadow: 3px 4px #999;
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
                <div style="max-width: 1000px; background-color: aliceblue; margin: 0 auto; display: block; box-shadow: 6px 6px 12px #aaa; border-radius: 10px; text-align: center; align-items: center; padding: 30px">
                    <div class="box-content">
                        <asp:LinkButton ID="btnPage1" runat="server" CssClass="btn-page" OnClick="btnPage_Click" CommandArgument="0">Trang Tải File</asp:LinkButton>
                        <asp:LinkButton ID="btnPage2" runat="server" CssClass="btn-page" OnClick="btnPage_Click" CommandArgument="1">File Đã Tải</asp:LinkButton>
                    </div>

                    <div class="box-content">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div class="main-container">
                                    <div class="header-title">Tải tập tin</div>
                                    <table class="table-container">
                                        <tr>
                                            <td class="form-label">Chọn tập tin:</td>
                                            <td>
                                                <asp:FileUpload ID="fileUpload" runat="server" CssClass="custom-file-upload" />
                                            </td>
                                        </tr>
                                        <tr>

                                            <td colspan="2" style="text-align: center;">
                                                <asp:Button ID="btn_Upfile" runat="server" CssClass="btn-page" Text="Tải lên" OnClick="btn_Upfile_Click" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center;">
                                                <asp:Label ID="lbl_ThongBao" runat="server" Style="color: #00b1ff; font-size: 18px; font-weight: 600;"></asp:Label>
                                                <asp:Label ID="lbl_error" runat="server" Style="color: red; font-size: 18px; font-weight: 600;"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:Label ID="lbl_TapTin" runat="server" CssClass="header-title" Text="Các tập tin đã tải lên" /><br />
                                <asp:Panel ID="panelTapTin" runat="server" Style="max-width: 300px; max-height: 150px; overflow-y: auto; padding: 5px;">
                                    <asp:BulletedList ID="blFileList" runat="server" BulletStyle="Numbered" CssClass="text-left"></asp:BulletedList>
                                </asp:Panel>
                            </asp:View>

                        </asp:MultiView>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
