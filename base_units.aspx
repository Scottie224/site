<%@ Page Title="Si Solutions | Base Units" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="base_units.aspx.cs" Inherits="base_units" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
    <form id="form1" runat="server">
        <h1>Base Units</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BUnitsID" DataSourceID="tblBUnits" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="BUnitsName" HeaderText="Name" SortExpression="BUnitsName" />
            <asp:BoundField DataField="BUnitsType" HeaderText="Type" SortExpression="BUnitsType" />
            <asp:BoundField DataField="BUnitsDetails" HeaderText="Details" SortExpression="BUnitsDetails" />
            <asp:BoundField DataField="BUnitsStock" HeaderText="Stock" SortExpression="BUnitsStock" />
            <asp:BoundField DataField="BUnitsPrice" HeaderText="Price" SortExpression="BUnitsPrice" DataFormatString="{0:C}"/>
        </Columns>

    </asp:GridView>
        <asp:SqlDataSource ID="tblBUnits" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblBUnits] WHERE [BUnitsID] = @BUnitsID" InsertCommand="INSERT INTO [tblBUnits] ([BUnitsName], [BUnitsType], [BUnitsDetails], [BUnitsStock], [BUnitsPrice]) VALUES (@BUnitsName, @BUnitsType, @BUnitsDetails, @BUnitsStock, @BUnitsPrice)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblBUnits]" UpdateCommand="UPDATE [tblBUnits] SET [BUnitsName] = @BUnitsName, [BUnitsType] = @BUnitsType, [BUnitsDetails] = @BUnitsDetails, [BUnitsStock] = @BUnitsStock, [BUnitsPrice] = @BUnitsPrice WHERE [BUnitsID] = @BUnitsID">
            <DeleteParameters>
                <asp:Parameter Name="BUnitsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BUnitsName" Type="String" />
                <asp:Parameter Name="BUnitsType" Type="String" />
                <asp:Parameter Name="BUnitsDetails" Type="String" />
                <asp:Parameter Name="BUnitsStock" Type="Int32" />
                <asp:Parameter Name="BUnitsPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BUnitsName" Type="String" />
                <asp:Parameter Name="BUnitsType" Type="String" />
                <asp:Parameter Name="BUnitsDetails" Type="String" />
                <asp:Parameter Name="BUnitsStock" Type="Int32" />
                <asp:Parameter Name="BUnitsPrice" Type="Decimal" />
                <asp:Parameter Name="BUnitsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

