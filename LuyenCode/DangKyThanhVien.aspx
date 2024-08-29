<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="LuyenCode.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .table-container {
            margin: 0 auto;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.6);
            background-color: whitesmoke;
            border-radius: 15px;
            width: fit-content;
            padding: 5px;
        }

        table {
            border: none;
        }

        tr, th, td {
            border: none;
            font-size: 18px;
            padding: 5px;
        }

        .style-button {
            display: inline-block;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #808080;
            border: none;
            border-radius: 15px;
            box-shadow: 4px 5px #999;
        }

            .style-button:hover {
                background-color: #666;
            }

            .style-button:active {
                background-color: #808080;
                box-shadow: 3px 4px #666;
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
                <div class="table-container ">
                    <table border="1" cellpadding="5" cellspacing="0" style="width: 500px; text-align: left;">
                        <tr>
                            <td colspan="2" style="font-weight: bold; font-size: 26px; text-shadow: 3px 2px 2px #999; text-align: center;">Đăng ký thành viên</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-weight: bold; font-size: large;">Thông tin đăng nhập</td>
                        </tr>
                        <tr>
                            <td style="width: 30%;">Tên đăng nhập:</td>
                            <td>
                                <asp:TextBox ID="txt_Tendn" runat="server"></asp:TextBox></td>
                            <asp:RequiredFieldValidator
                                ID="rfv_Name"
                                runat="server"
                                ControlToValidate="txt_Tendn"
                                ErrorMessage="Vui lòng nhập tên đăng nhập."
                                Display="None" />

                        </tr>
                        <tr>
                            <td style="width: 30%;">Mật khẩu:</td>
                            <td>
                                <asp:TextBox ID="txt_MatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
                            <asp:RequiredFieldValidator
                                ID="rfv_MatKhau"
                                runat="server"
                                ControlToValidate="txt_MatKhau"
                                ErrorMessage="Vui lòng nhập mật khẩu."
                                Display="None" />
                        </tr>
                        <tr>
                            <td style="width: 30%;">Nhập lại mật khẩu:</td>
                            <td>
                                <asp:TextBox ID="txt_NhapLai" runat="server" TextMode="Password"></asp:TextBox></td>

                            <asp:CompareValidator
                                ID="cvPassword"
                                runat="server"
                                ControlToValidate="txt_NhapLai"
                                ControlToCompare="txt_MatKhau"
                                Operator="Equal"
                                Type="String"
                                ErrorMessage="Mật khẩu không khớp."
                                Display="none" />
                        </tr>
                        <tr>
                            <td colspan="2" style="font-weight: bold; font-size: large;">Thông tin cá nhân</td>
                        </tr>
                        <tr>
                            <td style="width: 30%;">Họ và tên:</td>
                            <td>
                                <asp:TextBox ID="txt_HoTen" runat="server"></asp:TextBox></td>
                            <asp:RequiredFieldValidator
                                ID="rfv_HoTen"
                                runat="server"
                                ControlToValidate="txt_HoTen"
                                ErrorMessage="Vui lòng nhập họ tên của bạn."
                                Display="None" />

                        </tr>
                        <tr>
                            <td style="width: 30%;">Ngày sinh:</td>
                            <td>
                                <asp:TextBox ID="txt_NgaySinh" runat="server"></asp:TextBox></td>
                            <asp:RequiredFieldValidator
                                ID="rfv_NgaySinh"
                                runat="server"
                                ControlToValidate="txt_NgaySinh"
                                ErrorMessage="Ngày sinh không được để trống."
                                Display="None" />
                            <asp:CompareValidator
                                ID="CompareValidator1"
                                runat="server"
                                ControlToValidate="txt_NgaySinh"
                                Operator="DataTypeCheck"
                                Type="Date"
                                ErrorMessage="Sai định dạng ngày tháng."
                                Display="none" />

                        </tr>
                        <tr>
                            <td>Giới Tính</td>
                            <td>
                                <asp:RadioButton ID="rdt_Nam" runat="server" Text="Nam" GroupName="Gioitinh" />
                                <asp:RadioButton ID="rdt_Nu" runat="server" Text="Nữ" GroupName="Gioitinh" />
                            </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td>
                                <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_Email"
                                    runat="server"
                                    ControlToValidate="txt_Email"
                                    ErrorMessage="Địa chỉ Email Không hợp lệ."
                                    Display="None" />
                                <asp:RegularExpressionValidator
                                    ID="rev_Email"
                                    runat="server"
                                    ControlToValidate="txt_Email"
                                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                    ErrorMessage="Sai địa chỉ Email."
                                    Display="none" />

                            </td>
                        </tr>
                        <tr>
                            <td>Thu Nhập:</td>
                            <td>
                                <asp:TextBox ID="txt_ThuNhap" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_ThuNhap"
                                    runat="server"
                                    ControlToValidate="txt_ThuNhap"
                                    ErrorMessage="Vui lòng điền thu nhập."
                                    Display="None" />
                                <asp:RangeValidator
                                    ID="rvd_ThuNhap"
                                    runat="server"
                                    ControlToValidate="txt_ThuNhap"
                                    MaximumValue="100000000"
                                    MinimumValue="1000000"
                                    Type="Integer"
                                    ErrorMessage="Thu nhập kiểu số trong khoảng 1 triệu - 100 triệu"
                                    Display="none" />

                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" style="text-align: center;">
                                <asp:Button CssClass="style-button" ID="btn_DangKy" runat="server" Text="Đăng ký" OnClick="btn_Dangky_Click" />

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_ThongBao" runat="server" Style="color: #0094ff;"></asp:Label>
                                <asp:Label ID="lbl_error" runat="server" Style="color: red;"></asp:Label>
                                <asp:ValidationSummary ID="vsSummary" runat="server"
                                    HeaderText="Thông báo lỗi:"
                                    ForeColor="Red"
                                    DisplayMode="BulletList" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
