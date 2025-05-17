<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMovieAssign.aspx.cs" Inherits="AdminMovieAssign" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Movies</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Assign Movie to Screen</h2>
        
        <asp:Label runat="server" Text="Movie: " />
        <asp:DropDownList ID="DropDownList1" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="Screen: " />
        <asp:DropDownList ID="DropDownList2" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="Showtime: " />
        <asp:DropDownList ID="DropDownList3" runat="server" />
        <br /><br />
        
        <asp:Label runat="server" Text="From Date: " />
        <asp:TextBox ID="TextBox1" runat="server" />
        <asp:Button ID="Button2" runat="server" Text="Pick Date" OnClick="Button2_Click" />
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" />
        <br /><br />
        
        <asp:Label runat="server" Text="To Date: " />
        <asp:TextBox ID="TextBox2" runat="server" />
        <asp:Button ID="Button3" runat="server" Text="Pick Date" OnClick="Button3_Click" />
        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" />
        <br /><br />
        
        <asp:Button ID="Button1" runat="server" Text="Assign" OnClick="Button1_Click" />
    </form>
</body>
</html>
