<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defualt.aspx.cs" Inherits="barnhodw_InClass20240409.defualt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.ListBoxCssClass
{
color:GhostWhite;
background-color:DarkOliveGreen;
font-family:Courier New;
font-size:large;
font-style:italic;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <asp:ListBox OnSeletedcIndexChanged="lbFruits_SelectedIndexChanged"    ID="lbFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" DataSourceID="SqlDataSourceInClass20240411" DataTextField="LastName" DataValueField="NameID" Height="310px" >
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
                <asp:ListItem>Avocado</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSourceInClass20240411" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInClass20240409 %>" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
            </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a fruit"></asp:Label>

    </form>
</body>
</html>
