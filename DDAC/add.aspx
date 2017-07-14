<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="DDAC.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add information</title>
    
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
    <body style="background-color:lightskyblue">
    <form id="form1" runat="server">
        
        <div>
            <span class="auto-style1">Please insert information below </span>
            <br />
            <br />
            Customer/Company Name</div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Item<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Description<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Source<br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Destination<br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Arrival Date<br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <div style="margin-left: 120px">
        </div>
        <asp:Button ID="Button2" runat="server" ToolTip="Return to Home Page" Text="Return" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Customer], [Item], [Description], [Source], [Destination], [Arrival]) VALUES (@Customer, @Item, @Description, @Source, @Destination, @Arrival)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Customer] = @Customer, [Item] = @Item, [Description] = @Description, [Source] = @Source, [Destination] = @Destination, [Arrival] = @Arrival WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Customer" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Item" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="Description" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="Source" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="Destination" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="Arrival" PropertyName="Text" Type="String" />
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

            
            <hr />
        <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Maersk Line</p>
            </footer>
    </form>
    </body>
    
</html>
