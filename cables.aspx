<%@ Page Title="Si Solutions | Cables" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cables.aspx.cs" Inherits="cables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
    <form id="form1" runat="server">
<h1>Cables</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CablesID" DataSourceID="tblCables" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="CablesName" HeaderText="Name" SortExpression="CablesName" />
                <asp:BoundField DataField="CablesType" HeaderText="Type" SortExpression="CablesType" />
                <asp:BoundField DataField="CablesDetails" HeaderText="Details" SortExpression="CablesDetails" />
                <asp:BoundField DataField="CablesStock" HeaderText="Stock" SortExpression="CablesStock" />
                <asp:BoundField DataField="CablesPrice" HeaderText="Price" SortExpression="CablesPrice" DataFormatString="{0:C}" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="tblCables" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblCables] WHERE [CablesID] = @CablesID" InsertCommand="INSERT INTO [tblCables] ([CablesName], [CablesType], [CablesDetails], [CablesStock], [CablesPrice]) VALUES (@CablesName, @CablesType, @CablesDetails, @CablesStock, @CablesPrice)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCables]" UpdateCommand="UPDATE [tblCables] SET [CablesName] = @CablesName, [CablesType] = @CablesType, [CablesDetails] = @CablesDetails, [CablesStock] = @CablesStock, [CablesPrice] = @CablesPrice WHERE [CablesID] = @CablesID">
            <DeleteParameters>
                <asp:Parameter Name="CablesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CablesName" Type="String" />
                <asp:Parameter Name="CablesType" Type="String" />
                <asp:Parameter Name="CablesDetails" Type="String" />
                <asp:Parameter Name="CablesStock" Type="Int32" />
                <asp:Parameter Name="CablesPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CablesName" Type="String" />
                <asp:Parameter Name="CablesType" Type="String" />
                <asp:Parameter Name="CablesDetails" Type="String" />
                <asp:Parameter Name="CablesStock" Type="Int32" />
                <asp:Parameter Name="CablesPrice" Type="Decimal" />
                <asp:Parameter Name="CablesID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

