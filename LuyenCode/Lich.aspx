<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lich.aspx.cs" Inherits="LuyenCode.Lich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lịch</title>
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
        }

        .box-viewtime {
            width: 300px;
            margin: 0 auto;
            height: 20%;
            padding: 10px 15px;
            background-color: #f0f0f0;
            border-radius: 5px;
            text-align: center;
            box-shadow: 6px 6px 12px rgba(0, 0, 0, 0.6);
        }

        .box-container {
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
        }

        .box-timing {
            padding: 30px;
            width: 50%;
            height: 80px;
            box-shadow: 6px 6px 12px rgba(0, 0, 0, 0.6);
            margin: 50px auto;
            text-align: center;
        }

        .btn-timing {
            padding: 10px 20px;
            background-color: aliceblue;
            color: black;
            border-radius: 5px;
            border: none;
            transition: background-color 0.3s ease;
            cursor: pointer;
            box-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6)
        }

            .btn-timing:hover {
                background-color: lightblue;
            }

            .btn-timing:active {
                background-color: lightblue;
                box-shadow: 3px 4px #999;
                transform: translateY(3px);
            }

        .display-result {
            width: 80%;
            height: 20px;
            margin: 15px auto;
            text-align: center;
            box-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    <div class="box-viewtime">
                        <asp:Label ID="lbl_HomNay" runat="server"></asp:Label>
                    </div>
                    <asp:Calendar ID="cld_LichVn" runat="server" OnSelectionChanged="ChonNgay_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    <div class="box-viewtime">
                        <asp:Label ID="lbl_ChonNgay" runat="server" Text="Bạn chưa chọn ngày! "></asp:Label>
                    </div>
                </div>
                <div class="box-container">
                    <div class="box-timing">
                        <asp:Button ID="btn_timming" runat="server" Text="Tính Năm Tháng" CssClass="btn-timing" OnClick="btn_timming_Click" /><br />
                        <div class="display-result">
                            <asp:Label ID="lbl_KetQua" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
