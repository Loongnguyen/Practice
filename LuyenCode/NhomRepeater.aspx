<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NhomRepeater.aspx.cs" Inherits="LuyenCode.Testtts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Danh Mục || Sản Phẩm</title>
    <style>
        .category-header {
            font-size: 24px;
            font-weight: bold;
            margin-top: 20px;
        }

        .product-item {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

            .product-item img {
                width: 100px;
                height: 100px;
                margin-right: 15px;
            }

        .product-details {
            display: flex;
            flex-direction: column;
        }

            .product-details p {
                margin: 5px 0;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="rptProducts" runat="server">
            <HeaderTemplate>
                <div>
            </HeaderTemplate>
            <ItemTemplate>
                <%-- Category Header --%>
                <%# IsNewCategory(Eval("CategoryName")) %>

                <%-- Product Item --%>
                <div class="product-item">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("NameProduct") %>' />
                    <div class="product-details">
                        <p><strong>Name:</strong> <%# Eval("NameProduct") %></p>
                        <p><strong>Description:</strong> <%# Eval("Description") %></p>
                        <p><strong>Price:</strong> $<%# Eval("Price") %></p>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>

    </form>
</body>
</html>
