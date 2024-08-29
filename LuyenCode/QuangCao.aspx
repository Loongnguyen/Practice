<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuangCao.aspx.cs" Inherits="LuyenCode.QuangCao" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quảng cáo</title>
    <style>
        .quangcao-panel {
            border-radius: 30px;
            margin: 0 auto;
            padding: 15px 40px;
            width: 320px;
            background-color: #FFFFFF;
            box-shadow: 8px 9px #555;
        }

        .quangcao-title {
            background-color: #777;
            color: #FFFFFF;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            display: block;
            padding: 5px 0;
            margin-bottom: 10px;
        }
    </style>
    <style>
        .modal {
            display: block;
            position: absolute;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.3);
        }

        .modal-content {
            margin: 15% auto;
        }

        .close {
            color: #fff;
            float: right;
            font-size: 28px;
            font-weight: bold;
            margin-right: 10px;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a style="text-decoration: none; padding: 10px 15px; color: #666; box-shadow: 4px 4px 8px #666; margin-top: 5px; border-radius: 5px;" href="/Trang-Chu">Trở về trang chủ</a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="myModal" class="modal">
                    <div class="modal-content">
                        <asp:Panel ID="pnlQuangCao" runat="server" CssClass="quangcao-panel">
                            <span class="close">&times;</span>
                            <asp:Label ID="lblTitle" runat="server" Text="QUẢNG CÁO" CssClass="quangcao-title"></asp:Label>
                            <asp:AdRotator ID="AdQuangCao" runat="server" AdvertisementFile="~/App_Data/QuangCao.xml" Width="100%" Height="200px" />
                        </asp:Panel>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <script>
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        span.onclick = function () {
            modal.style.display = "none";
        }
    </script>
</body>
</html>
