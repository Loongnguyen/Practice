<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="LuyenCode.ThongTinCaNhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thong Tin Cá Nhân</title>
    <style>
        .table-container {
            margin: 0 auto;
            width: fit-content;
            padding: 5px;
        }

        fieldset {
            box-shadow: 6px 10px 12px rgba(0, 0, 0, 0.4);
            border: none;
            border-radius: 20px;
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
                            <legend><span style="text-shadow: 3px 2px 2px #999; font-weight: bold; font-size: 26px; color: #000;">Thông Tin cá Nhân</span></legend>
                            <table cellpadding="5" cellspacing="0" style="width: 500px; text-align: left;">

                                <tr>
                                    <td style="width: 30%;">Họ và Tên:</td>
                                    <td>
                                        <asp:TextBox ID="txt_Ten" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Giới Tính</td>
                                    <td>
                                        <asp:RadioButton ID="rdt_Nam" runat="server" Text="Nam" GroupName="Gioitinh" />
                                        <asp:RadioButton ID="rdt_Nữ" runat="server" Text="Nữ" GroupName="Gioitinh" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ngoại Ngữ:</td>
                                    <td>
                                        <asp:CheckBox ID="ckb_AnhVan" runat="server" Text="Anh Văn" />
                                        <asp:CheckBox ID="ckb_PhapVan" runat="server" Text="Pháp Văn" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Thu Nhập:</td>
                                    <td>
                                        <asp:RadioButton ID="rdt_Thunhap1" runat="server" Text="Dưới 3 triệu" GroupName="Thunhap" />
                                        <asp:RadioButton ID="rdt_Thunhap2" runat="server" Text="3-12 triệu" GroupName="Thunhap" />
                                        <asp:RadioButton ID="rdt_Thunhap3" runat="server" Text="Trên 12 triệu" GroupName="Thunhap" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Trình Độ:</td>
                                    <td>
                                        <asp:RadioButton ID="rdt_CaoDang" runat="server" Text="Cao Đẳng" GroupName="Trinhdo" />
                                        <asp:RadioButton ID="rdt_DH" runat="server" Text="Đại Học" GroupName="Trinhdo" />
                                        <asp:RadioButton ID="rdt_SauDH" runat="server" Text="Sau đại học" GroupName="Trinhdo" />

                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2" style="text-align: center;">
                                        <asp:Button ID="btn_DangKy" runat="server" Text="Đăng ký" OnClick="btn_DangKy_Click" />

                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </asp:Panel>
                    <div class="table-container" style="max-width: 500px; text-align: left; padding: 10px 40px; margin-top: 20px;">
                        <asp:Label ID="lbl_error" runat="server" Style="font-size: 24px; font-weight: 400; color: #ff0000; line-height: 25px;"></asp:Label>
                        <asp:Label ID="lbl_Tieude" runat="server" Style="font-size: 26px; font-weight: 600; color: #452323; line-height: 35px;"></asp:Label>
                        <asp:Label ID="lbl_Thongtin" runat="server" Style="font-size: 24px; font-weight: 400; color: #283704; line-height: 25px;"></asp:Label>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <script>

</script>
</body>
</html>
