<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="LuyenCode.UploadFile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 10px;
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
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            color: brown;
            margin: 10px 0;
            font-style: inherit;
            text-shadow: 2px 2px 2px #999;
        }

        .form-label {
            width: 30%;
            padding-right: 10px;
        }

        .custom-file-upload {
            box-shadow: 4px 4px 10px #aaa;
            padding: 10px;
            border-radius: 5px;
        }

        .btn-update {
            border: none;
            background-color: #b25858;
            color: #FFF;
            padding: 10px 14px;
            border-radius: 10px
        }

            .btn-update:hover {
                background-color: #d75c5c;
                color: #fff;
            }

        fieldset {
            border: none;
            box-shadow: 6px 6px 12px #aaa;
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <div class="main-container">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend class="header-title">Tải file lên</legend>
                        <table class="table-container">
                            <tr>
                                <th colspan="2" style="text-align: center; font-size: 20px; border-radius: 10px; background-color: #b25858; color: #fff; height: 40px;">Thông tin cá nhân</th>
                            </tr>
                            <tr>
                                <td class="form-label">Chọn tập tin:</td>
                                <td>
                                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="custom-file-upload" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center;">
                                    <asp:Button ID="btn_Upfile" runat="server" CssClass="btn-update" Text="Tải lên" OnClick="btn_Upfile_Click" /></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center;">
                                    <asp:Label ID="lbl_ThongBao" runat="server" Style="color: #00b1ff; font-size: 16px; font-weight: 500;"></asp:Label>
                                    <asp:Label ID="lbl_error" runat="server" Style="color: red; font-size: 16px; font-weight: 500;"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
