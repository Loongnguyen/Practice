<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocBao.aspx.cs" Inherits="LuyenCode.DocBao" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đọc Báo</title>
    <style>
        .main-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 10px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.6);
            border-radius: 5px;
        }

        .box-bottompage {
            display: flex;
            margin-top: 10px;
            align-items: center;
        }

        .box-toppage {
            padding: 5px 0 0 5px;
        }

        .container {
            border: 2px solid red;
            font-family: Arial, sans-serif;
        }

        .title {
            font-size: 20px;
            font-weight: bold;
            color: yellow;
        }

        .content {
            display: flex;
        }

            .content ul {
                list-style: none;
                width: 200px;
                color: #ffe100;
                font-size: 16px;
            }

            .content li {
                margin-bottom: 5px;
                position: relative;
                padding-left: 20px;
            }

                .content li::before {
                    content: "\2022";
                    color: #ffe100;
                    font-weight: 500;
                    position: absolute;
                    left: 0;
                }

        .img-box {
            width: 50%;
        }

        .links {
            width: 100%;
        }

            .links div {
                background-color: red;
                padding: 10px;
                margin-top: 5px;
                cursor: pointer;
            }

                .links div:hover {
                    background-color: yellow;
                    font-weight: 600;
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
                    <div class="container">
                        <div class="box-toppage">
                            <div class="title">Lợi ích của đọc báo:</div>
                            <div class="content">
                                <ul>
                                    <li>Mở rộng kiến thức</li>
                                    <li>Cập nhật thông tin</li>
                                    <li>Rèn luyện trí nhớ</li>
                                    <li>Giải trí ít tốn kém</li>
                                    <li>...</li>
                                </ul>
                                <img src="Images/anhbaochi.jpg" width="200" height="200" style="border-radius: 3px;" />
                            </div>
                        </div>
                        <div class="box-bottompage">
                            <div class="img-box">
                                <img src="Images/anhbaochi2.jpg" width="220" height="220" style="border-radius: 3px;" />
                            </div>
                            <div class="links">
                                <div>
                                    <asp:HyperLink ID="hpl_TuoiTre" runat="server" Style="text-decoration: none;">Tuổi Trẻ</asp:HyperLink>
                                </div>
                                <div>
                                    <asp:HyperLink ID="hpl_Tinnhanh" runat="server" Style="text-decoration: none;">Tin Nhanh</asp:HyperLink>
                                </div>
                                <div>
                                    <asp:HyperLink ID="hpl_Thanhnien" runat="server" Style="text-decoration: none;">Thanh Niên</asp:HyperLink>
                                </div>
                                <div>
                                    <asp:HyperLink ID="hpl_Laodong" runat="server" Style="text-decoration: none;">Người Lao Động</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>

