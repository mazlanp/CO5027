<%@ Page Title="" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="AdminEdit.aspx.cs" Inherits="Tupperware.Admin.AdminEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-wrap-edit">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="productView">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="productView" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525607_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblProductList]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProductList] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description" InsertCommand="INSERT INTO [tblProductList] ([Name], [Price], [Description]) VALUES (@Name, @Price, @Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblProductList] SET [Name] = @Name, [Price] = @Price, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="Double" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="Double" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
