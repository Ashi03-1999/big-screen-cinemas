<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMovieDetails.aspx.cs" Inherits="AdminMovieDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Movie Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Add New Movie</h2>
        
        <asp:Label runat="server" Text="Movie Name: " />
        <asp:TextBox ID="TextBox1" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="Language: " />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Hindi</asp:ListItem>
            <asp:ListItem>German</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        
        <asp:Label runat="server" Text="Actors: " />
        <asp:TextBox ID="TextBox2" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="Description: " />
        <asp:TextBox ID="TextBox3" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="Poster Image: " />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br /><br />
        
        <asp:Button ID="Button1" runat="server" Text="Add Movie" OnClick="Button1_Click" />
    </form>
</body>
</html>
