<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="LuyenCode.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box-content {
            max-width: 80%;
            padding: 10px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 6px 6px 12px rgba(0, 0, 0, 0.6);
        }

        .btn-page {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            background-color: aliceblue;
            color: black;
            border-radius: 5px;
            text-decoration: none;
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
                box-shadow: none;
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
                <div style="max-width: 1100px; background-color: aliceblue; margin: 0 auto; display: block; box-shadow: 6px 6px 12px rgba(0, 0, 0, 0.6); border-radius: 10px; text-align: center; align-items: center; padding: 30px">
                    <div class="box-content">
                        <asp:LinkButton ID="btnPage1" runat="server" CssClass="btn-page" OnClick="btnPage_Click" CommandArgument="0">Chuyện tâm lý</asp:LinkButton>
                        <asp:LinkButton ID="btnPage2" runat="server" CssClass="btn-page" OnClick="btnPage_Click" CommandArgument="1">Chuyện định hướng</asp:LinkButton>
                        <asp:LinkButton ID="btnPage3" runat="server" CssClass="btn-page" OnClick="btnPage_Click" CommandArgument="2">Chuyện tâm can</asp:LinkButton>
                    </div>
                    <div class="box-content">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <h2>Chuyện Ngắn tâm lý</h2>
                                <p style="text-align: left;">
                                    Có người mua một hộp lê, vì sợ trời nắng nóng có thể khiến lê bị hỏng nên ngày nào người đó cũng chọn ra những quả tệ nhất để ăn trước, cuối cùng lại chỉ ăn hết một hộp toàn lê thối.<br />
                                    Bài học:<br />
                                    Cuộc sống cũng giống như việc ta ăn lê vậy. Nếu ngày nào cũng chú tâm đến những chuyện không vui, cả đời ta sẽ sống trong bực tức và lo âu.<br />
                                    Hãy buông mọi muộn phiền và ném chúng đi thật xa, mỗi ngày đều hướng đến điều tích cực, thì cuộc sống của bạn sẽ trở nên thật tuyệt diệu!<br />
                                    Hãy trân trọng từng khoảnh khắc của đời người, sống thật tích cực và vui vẻ!<br />
                                    Hãy luôn chú ý và điều chỉnh, đừng để bản thân rơi vào những cảm xúc tồi tệ!
                                </p>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <h2>Chuyện Ngắn ý định hướng</h2>
                                <p style="text-align: left;">
                                    Ngày nọ, vẹt và quạ gặp nhau, vẹt ở trong lồng có cuộc sống an nhàn, thoái mái, nhưng chú lại rất hâm mộ quạ được tự do trong tự nhiên.<br />
                                    Vẹt ngưỡng mộ sự tự do của quạ, quạ lại hâm mộ cuộc sống an nhàn của vẹt, vì vậy hai con chim đã thương lượng cả hai sẽ đổi chỗ cho nhau.<br />
                                    Quạ nhận được cuộc sống an nhàn mình mong muốn, nhưng chú lại không nhận được sự yêu mến của chủ nhân, và cuối cùng chết vì hậm hực;<br />
                                    Vẹt có được tự do, nhưng vì đã sống trong sung sướng quá lâu nên không còn khả năng sinh tồn độc lập, cuối cùng chú ta cũng chết vì đói.<br />
                                    Bài học:<br />
                                    Đừng hâm mộ với hạnh phúc của người khác một cách mù quáng, vì có thể hạnh phúc ấy lại trở thành bất hạnh với bạn.<br />
                                    Ở trên đời, đừng so đo thiệt hơn, sống tốt cuộc sống của chính mình, tận hưởng từng điều mà cuộc sống ban cho chúng ta chính là chân lý!
                                </p>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <h2>Chuyện Ngắn tâm can</h2>
                                <p style="text-align: left;">
                                    Khi một giọt mực rơi vào cốc nước trong, cốc nước sẽ lập tức đổi màu và không uống được nữa;<br />
                                    Khi một giọt mực tan vào trong biển, biển vẫn xanh thẳm như trước;<br />
                                    Vì sao lại thế?<br />
                                    Vì sự bao dung của hai vật thể ấy khác nhau.<br />
                                    Bông lúa non thẳng thân đón gió, bông lúa càng chín càng cúi thấp đầu;<br />
                                    Vì sao vậy? Bởi vì có sự khác biệt giữa trọng lượng của hai bên.<br />
                                    Bài học:<br />
                                    Khoan dung với người khác chính là độ lượng; khiêm tốn cúi mình chính là tự biết phân lượng; kết hợp hai điều ấy với nhau sẽ hình thành nên phẩm giá của một người.
                                </p>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
