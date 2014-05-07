<%@ Page Title="Si Solutions | Components" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="components.aspx.cs" Inherits="components" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
    <form id="form1" runat="server">
    <h1>Components</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ComponentsID" DataSourceID="tblComponents" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ComponentsName" HeaderText="Name" SortExpression="ComponentsName" />
            <asp:BoundField DataField="ComponentsType" HeaderText="Type" SortExpression="ComponentsType" />
            <asp:BoundField DataField="ComponentsDetails" HeaderText="Details" SortExpression="ComponentsDetails" />
            <asp:BoundField DataField="ComponentsStock" HeaderText="Stock" SortExpression="ComponentsStock" />
            <asp:BoundField DataField="ComponentsPrice" HeaderText="Price" SortExpression="ComponentsPrice" DataFormatString="{0:C}"/>
          
        </Columns>
    </asp:GridView>
  <asp:Image ID="imageControl" runat="server" />
        <asp:SqlDataSource ID="tblComponents" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblComponents] WHERE [ComponentsID] = @ComponentsID" InsertCommand="INSERT INTO [tblComponents] ([ComponentsID], [ComponentsName], [ComponentsType], [ComponentsDetails], [ComponentsStock], [ComponentsPrice]) VALUES (@ComponentsID, @ComponentsName, @ComponentsType, @ComponentsDetails, @ComponentsStock, @ComponentsPrice)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblComponents]" UpdateCommand="UPDATE [tblComponents] SET [ComponentsName] = @ComponentsName, [ComponentsType] = @ComponentsType, [ComponentsDetails] = @ComponentsDetails, [ComponentsStock] = @ComponentsStock, [ComponentsPrice] = @ComponentsPrice WHERE [ComponentsID] = @ComponentsID">
            <DeleteParameters>
                <asp:Parameter Name="ComponentsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ComponentsID" Type="Int32" />
                <asp:Parameter Name="ComponentsName" Type="String" />
                <asp:Parameter Name="ComponentsType" Type="String" />
                <asp:Parameter Name="ComponentsDetails" Type="String" />
                <asp:Parameter Name="ComponentsStock" Type="Int32" />
                <asp:Parameter Name="ComponentsPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ComponentsName" Type="String" />
                <asp:Parameter Name="ComponentsType" Type="String" />
                <asp:Parameter Name="ComponentsDetails" Type="String" />
                <asp:Parameter Name="ComponentsStock" Type="Int32" />
                <asp:Parameter Name="ComponentsPrice" Type="Decimal" />
                <asp:Parameter Name="ComponentsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

</form>

</asp:Content>

