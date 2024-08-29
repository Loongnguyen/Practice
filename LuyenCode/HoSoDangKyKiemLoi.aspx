<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoSoDangKyKiemLoi.aspx.cs" Inherits="LuyenCode.HoSoDangKyKiemLoi" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hồ sơ đăng ký</title>
    <style>
        .main-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            box-shadow: 6px 6px 12px #aaa;
            border-radius: 10px;
            background-color: ghostwhite;
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
            width: 20%;
            padding-right: 10px;
        }

        .col-half {
            width: 40%;
        }

        .input-field {
            width: 90%;
            border: 2px solid grey;
            border-radius: 4px;
        }

        .btn-group {
            font-weight: bold;
            border-radius: 8px;
            background-color: #f7d1f4;
            border: none;
            color: #296c9d;
            text-align: center;
            font-size: 16px;
            padding: 10px 14px;
            cursor: pointer;
            margin: 5px;
        }

            .btn-group:hover {
                background-color: #cea0be;
                color: #fff;
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
                            <th colspan="2" style="text-align: center; font-size: 20px; color: #296c9d; border-radius: 10px; background-color: #f7d1f4">Thông tin đăng nhập</th>
                            <th class="col-half" style="text-align: center; font-size: 20px; color: #296c9d; border-radius: 10px; background-color: #f7d1f4">Hồ sơ khách hàng</th>
                        </tr>
                        <tr>
                            <td class="form-label">Tên đăng nhập:</td>
                            <td>
                                <asp:TextBox ID="txt_TenDn" runat="server" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_Name"
                                    runat="server"
                                    ControlToValidate="txt_Tendn"
                                    ErrorMessage="Vui lòng nhập tên đăng nhập."
                                    Display="None" />
                                <asp:RegularExpressionValidator
                                    ID="revTenDangNhap"
                                    runat="server"
                                    ControlToValidate="txt_TenDn"
                                    ErrorMessage="Tên đăng nhập phải từ 8 đến 16 ký tự và chỉ chứa các ký tự chữ cái, số"
                                    ValidationExpression="^[a-zA-Z0-9]{8,16}$"
                                    Display="None" />
                            </td>

                            <td id="" rowspan="12" style="box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.3); border-radius: 10px; padding: 0 20px; background-color: #f0f0f0;">

                                <asp:Label ID="lbl_ThongTin" runat="server"></asp:Label>
                                <asp:ValidationSummary ID="vsSummary" runat="server"
                                    HeaderText="Thông báo lỗi:"
                                    ForeColor="Red"
                                    DisplayMode="BulletList" />

                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Mật khẩu:</td>
                            <td>
                                <asp:TextBox ID="txt_MatKhau" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_MatKhau"
                                    runat="server"
                                    ControlToValidate="txt_MatKhau"
                                    ErrorMessage="Vui lòng nhập mật khẩu."
                                    Display="None" />

                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Nhập lại mật khẩu:</td>
                            <td>
                                <asp:TextBox ID="txt_NhapLai" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_Nhaplai"
                                    runat="server"
                                    ControlToValidate="txt_NhapLai"
                                    ControlToCompare=""
                                    ErrorMessage="Vui lòng điền lại mật khẩu."
                                    Display="none" />
                                <asp:CompareValidator
                                    ID="cvPassword"
                                    runat="server"
                                    ControlToValidate="txt_NhapLai"
                                    ControlToCompare="txt_MatKhau"
                                    Operator="Equal"
                                    Type="String"
                                    ErrorMessage="Mật khẩu không khớp."
                                    Display="none" />
                            </td>
                        </tr>

                        <tr>
                            <td class="form-label"></td>
                            <td>
                                <input type="checkbox" id="chk_ShowPassword" onclick="togglePassword()" />
                                Hiện mật khẩu</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center; font-weight: bold; font-size: 20px; color: #296c9d; background-color: #f7d1f4; border-radius: 10px;">Thông tin cá nhân</td>

                        </tr>
                        <tr>
                            <td class="form-label">Họ tên khách hàng:</td>
                            <td>
                                <asp:TextBox ID="txt_HoTen" runat="server" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_HoTen"
                                    runat="server"
                                    ControlToValidate="txt_HoTen"
                                    ErrorMessage="Vui lòng nhập họ tên của bạn."
                                    Display="None" />
                            </td>
                        </tr>
                        <tr>

                            <td class="form-label">Ngày sinh:</td>
                            <td>
                                <asp:DropDownList ID="ddl_Ngay" runat="server"></asp:DropDownList>
                                <asp:DropDownList ID="ddl_Thang" runat="server"></asp:DropDownList>
                                <asp:DropDownList ID="ddl_Nam" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Email:</td>
                            <td>
                                <asp:TextBox ID="txt_Email" runat="server" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="rfv_Email"
                                    runat="server"
                                    ControlToValidate="txt_Email"
                                    ErrorMessage="Vui lòng điền địa chỉ."
                                    Display="None" />
                                <asp:RegularExpressionValidator
                                    ID="rev_Email"
                                    runat="server"
                                    ControlToValidate="txt_Email"
                                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                    ErrorMessage="Địa chỉ Email không đúng."
                                    Display="none" />
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Thu nhập:</td>
                            <td>
                                <asp:TextBox ID="txt_ThuNhap" runat="server" CssClass="input-field"></asp:TextBox>
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
                                    MinimumValue="3000000"
                                    Type="Integer"
                                    ErrorMessage="Thu nhập kiểu số trong khoảng 3 triệu - 100 triệu"
                                    Display="none" />

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
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1"
                                    runat="server"
                                    ControlToValidate="txt_DiaChi"
                                    ErrorMessage="Vui lòng điền địa chỉ."
                                    Display="None" />
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">Điện thoại:</td>
                            <td>
                                <asp:TextBox ID="txt_DienThoai" runat="server" CssClass="input-field"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2"
                                    runat="server"
                                    ControlToValidate="txt_DienThoai"
                                    ErrorMessage="Vui lòng điền số điện thoại."
                                    Display="None" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="btn_DangKy" CssClass="btn-group" runat="server" Text="Đăng ký" OnClick="btn_DangKy_Click" Style="margin-left: 45%;" />
                            </td>

                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <script>
            function togglePassword() {
                var passwordField = document.getElementById("txt_NhapLai");
                var passwordCheckbox = document.getElementById("chk_ShowPassword");

                if (passwordCheckbox.checked) {
                    passwordField.type = "text";
                } else {
                    passwordField.type = "password";
                }
                var passwordField = document.getElementById("txt_MatKhau");
                var passwordCheckbox = document.getElementById("chk_ShowPassword");

                if (passwordCheckbox.checked) {
                    passwordField.type = "text";
                } else {
                    passwordField.type = "password";
                }
            }
</script>
    </form>
</body>
</html>
