<%@ Page Title="Si Solutions | Software" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="software.aspx.cs" Inherits="software" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
    <form id="form1" runat="server">
        <h1>Software</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SoftwareID" DataSourceID="tblSoftware" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="SoftwareName" HeaderText="Name" SortExpression="SoftwareName" />
            <asp:BoundField DataField="SoftwareType" HeaderText="Type" SortExpression="SoftwareType" />
            <asp:BoundField DataField="SoftwareDetails" HeaderText="Details" SortExpression="SoftwareDetails" />
            <asp:BoundField DataField="SoftwareStock" HeaderText="Stock" SortExpression="SoftwareStock" />
            <asp:BoundField DataField="SoftwarePrice" HeaderText="Price" SortExpression="SoftwarePrice" DataFormatString="{0:C}" />
        </Columns>

    </asp:GridView>
        <asp:SqlDataSource ID="tblSoftware" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblSoftware] WHERE [SoftwareID] = @SoftwareID" InsertCommand="INSERT INTO [tblSoftware] ([SoftwareName], [SoftwareType], [SoftwareDetails], [SoftwareStock], [SoftwarePrice]) VALUES (@SoftwareName, @SoftwareType, @SoftwareDetails, @SoftwareStock, @SoftwarePrice)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblSoftware]" UpdateCommand="UPDATE [tblSoftware] SET [SoftwareName] = @SoftwareName, [SoftwareType] = @SoftwareType, [SoftwareDetails] = @SoftwareDetails, [SoftwareStock] = @SoftwareStock, [SoftwarePrice] = @SoftwarePrice WHERE [SoftwareID] = @SoftwareID">
            <DeleteParameters>
                <asp:Parameter Name="SoftwareID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SoftwareName" Type="String" />
                <asp:Parameter Name="SoftwareType" Type="String" />
                <asp:Parameter Name="SoftwareDetails" Type="String" />
                <asp:Parameter Name="SoftwareStock" Type="Int32" />
                <asp:Parameter Name="SoftwarePrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SoftwareName" Type="String" />
                <asp:Parameter Name="SoftwareType" Type="String" />
                <asp:Parameter Name="SoftwareDetails" Type="String" />
                <asp:Parameter Name="SoftwareStock" Type="Int32" />
                <asp:Parameter Name="SoftwarePrice" Type="Decimal" />
                <asp:Parameter Name="SoftwareID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

