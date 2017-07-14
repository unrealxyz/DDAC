<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="DDAC.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Information</title>
    <style type="text/css">

    .auto-style1 {
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        font-style: italic;
        font-weight: bold;
        font-size: x-large;
        text-decoration: underline;
    }
    </style>
</head>
<body style="background-color: gold">
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">This page shows the information that is currently available for shipment</span><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                    <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" ToolTip="Return to Home Page" Text="Return" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
        <hr />
        <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Maersk Line</p>
            </footer>
    </form>
</body>
</html>
