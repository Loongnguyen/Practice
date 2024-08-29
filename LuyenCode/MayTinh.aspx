<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MayTinh.aspx.cs" Inherits="LuyenCode.baitap1" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tính Đơn Giản</title>


    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            max-width: 400px;
            height: 800px;
            margin: 0 auto;
            display: block;
            text-align: center;
            align-items: center;
            padding: 50px;
        }

        .box-calculator {
            border: 2px solid #e0e0e0;
            border-radius: 50px;
            width: 100%;
            height: 65%;
            padding-bottom: 50px;
            display: block;
            background-color: #e0e0e0;
            box-shadow: 9px 10px #999;
        }

        .general-style {
            width: 80%;
            height: 50px;
            margin: 10px auto;
            display: inline-block;
        }

        .style-button {
            display: inline-block;
            padding: 15px 25px;
            font-size: 24px;
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
                <div class="container">
                    <div class="box-calculator">
                        <div style="font-size: 28px; font-weight: 700; color: #777; margin: 30px; text-shadow: 3px 3px 2px #000;">calculator</div>
                        <div style="width: 60%; height: 50px; border: 2px solid #808080; border-radius: 15px; margin: 0 auto; padding: 10px 0; background-color: #808080; box-shadow: 5px 7px #999">
                            <asp:TextBox ID="txtDisplay" runat="server" ReadOnly="True" Width="205px" Height="45px" Font-Size="24px"></asp:TextBox>
                        </div>
                        <div class="general-style" style="margin-top: 80px">
                            <asp:Button CssClass="style-button" ID="btn1" runat="server" Text="1" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn2" runat="server" Text="2" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn3" runat="server" Text="3" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btnPlus" runat="server" Text="+" OnClick="OperationButton_Click" />
                        </div>
                        <div class="general-style">
                            <asp:Button CssClass="style-button" ID="btn4" runat="server" Text="4" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn5" runat="server" Text="5" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn6" runat="server" Text="6" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btnMinus" runat="server" Text="-" OnClick="OperationButton_Click" />
                        </div>
                        <div class="general-style">
                            <asp:Button CssClass="style-button" ID="btn7" runat="server" Text="7" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn8" runat="server" Text="8" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btn9" runat="server" Text="9" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btnMultiply" runat="server" Text="x" OnClick="OperationButton_Click" />
                        </div>
                        <div class="general-style">
                            <asp:Button CssClass="style-button" ID="btn0" runat="server" Text="0" OnClick="NumberButton_Click" />
                            <asp:Button CssClass="style-button" ID="btnClear" runat="server" Text="C" OnClick="btnClear_Click" />
                            <asp:Button CssClass="style-button" ID="btnEquals" runat="server" Text="=" OnClick="btnEquals_Click" />
                            <asp:Button CssClass="style-button" ID="btnDivide" runat="server" Text="/" OnClick="OperationButton_Click" />
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>


</body>
</html>
