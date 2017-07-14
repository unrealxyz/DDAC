<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="EuropeDDAC.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete</title>
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
<body style="background-color: crimson">
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Delete Information to cancel Shipment</span><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Customer], [Item], [Description], [Source], [Destination], [Arrival]) VALUES (@Customer, @Item, @Description, @Source, @Destination, @Arrival)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Customer] = @Customer, [Item] = @Item, [Description] = @Description, [Source] = @Source, [Destination] = @Destination, [Arrival] = @Arrival WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Customer" Type="String" />
                    <asp:Parameter Name="Item" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Customer" Type="String" />
                    <asp:Parameter Name="Item" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
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

