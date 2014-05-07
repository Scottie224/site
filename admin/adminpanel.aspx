<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="admin_adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
    <form id="form1" runat="server">
        
        
        <a href="Upload.aspx" runat="server">Upload images</a>

        <h1>Components</h1>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ComponentsID" DataSourceID="tblComponents" PagerSettings-Mode="NextPrevious" RenderOuterTable="False">
            <EditItemTemplate>
                ComponentsID:
                <div>
                    <asp:Label ID="ComponentsIDLabel1" runat="server" Text='<%# Eval("ComponentsID") %>' />
                </div>

                ComponentsName:
                <div>
                    <asp:TextBox ID="ComponentsNameTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsName") %>' />
                </div>

                ComponentsType:
                <div>
                    <asp:TextBox ID="ComponentsTypeTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsType") %>' />
                </div>

                ComponentsDetails:
                <div>
                    <asp:TextBox ID="ComponentsDetailsTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsDetails") %>' />
                </div>

                ComponentsStock:
                <div>
                    <asp:TextBox ID="ComponentsStockTextBox" runat="server" Text='<%# Bind("ComponentsStock") %>' />
                </div>

                ComponentsPrice:
                <div>
                    <asp:TextBox ID="ComponentsPriceTextBox" runat="server" Text='<%# Bind("ComponentsPrice") %>' />
                </div>

                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ComponentsName:
                <div>
                    <asp:TextBox ID="ComponentsNameTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsName") %>' />
                </div>


                ComponentsType:
                <div>
                    <asp:TextBox ID="ComponentsTypeTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsType") %>' />
                </div>


                ComponentsDetails:
                <div>
                    <asp:TextBox ID="ComponentsDetailsTextBox" TextMode="MultiLine" runat="server" Text='<%# Bind("ComponentsDetails") %>' />
                </div>


                ComponentsStock:
                <div>
                    <asp:TextBox ID="ComponentsStockTextBox" runat="server" Text='<%# Bind("ComponentsStock") %>' />
                </div>


                ComponentsPrice:
                <div>
                    <asp:TextBox ID="ComponentsPriceTextBox" runat="server" Text='<%# Bind("ComponentsPrice") %>' />
                </div>

                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ComponentsID:
                <div>
                <asp:TextBox ID="ComponentsIDTextBox" runat="server" Enabled="False" Width="260px" Text='<%# Eval("ComponentsID") %>' />
                </div>

                ComponentsName:
                <div>
                <asp:TextBox ID="NameTextBox" runat="server" Enabled="False" TextMode="MultiLine" Text='<%# Bind("ComponentsName") %>' />
                </div>

                ComponentsType:
                <div>
                <asp:TextBox ID="TypeTextBox" runat="server" Enabled="False" TextMode="MultiLine" Text='<%# Bind("ComponentsType") %>' />
               </div>

                ComponentsDetails:
                <div>
                <asp:TextBox ID="DetailsTextBox" runat="server" Enabled="False" TextMode="MultiLine" Wrap="False" Text='<%# Bind("ComponentsDetails") %>' />
               </div>

                ComponentsStock:
                <div>
                <asp:TextBox ID="StockTextBox" runat="server" Enabled="False" Width="260px" Text='<%# Bind("ComponentsStock") %>' />
              </div>

                ComponentsPrice:
                <div>
                <asp:TextBox ID="PriceTextBox" runat="server" Enabled="False" Width="260px" Text='<%# Bind("ComponentsPrice") %>' />
              </div>

                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
             <PagerTemplate>
                <div>
                    <asp:Button ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="Previous" runat="server" />
                    <asp:Button ID="NextButton" CommandName="Page" CommandArgument="Next" Text="Next" runat="server" />
                </div>
            </PagerTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="tblComponents" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblComponents] WHERE [ComponentsID] = @ComponentsID" InsertCommand="INSERT INTO [tblComponents] ([ComponentsName], [ComponentsType], [ComponentsDetails], [ComponentsStock], [ComponentsPrice]) VALUES (@ComponentsName, @ComponentsType, @ComponentsDetails, @ComponentsStock, @ComponentsPrice)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblComponents]" UpdateCommand="UPDATE [tblComponents] SET [ComponentsName] = @ComponentsName, [ComponentsType] = @ComponentsType, [ComponentsDetails] = @ComponentsDetails, [ComponentsStock] = @ComponentsStock, [ComponentsPrice] = @ComponentsPrice WHERE [ComponentsID] = @ComponentsID">
            <DeleteParameters>
                <asp:Parameter Name="ComponentsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
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

        <h1>Cables</h1>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="CablesID" DataSourceID="tblCables" AllowPaging="True" PagerSettings-Mode="NextPrevious" RenderOuterTable="False" >
            <EditItemTemplate>
                CablesID:
                <div>
                <asp:Label ID="CablesIDLabel1" runat="server" Text='<%# Eval("CablesID") %>' />
                </div>
                CablesName:
                <div>
                <asp:TextBox ID="CablesNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesName") %>' />
                </div>
                CablesType:
                <div>
                <asp:TextBox ID="CablesTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesType") %>' />
                </div>
                CablesDetails:
                <div>
                <asp:TextBox ID="CablesDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesDetails") %>' />
                </div>
                CablesStock:
                <div>
                <asp:TextBox ID="CablesStockTextBox" runat="server" Text='<%# Bind("CablesStock") %>' />
                </div>
                CablesPrice:
                <div>
                <asp:TextBox ID="CablesPriceTextBox" runat="server" Text='<%# Bind("CablesPrice") %>' />
                </div>
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CablesName:
                <div>
                <asp:TextBox ID="CablesNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesName") %>' />
                </div>
                CablesType:
                <div>
                <asp:TextBox ID="CablesTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesType") %>' />
                </div>
                CablesDetails:
                <div>
                <asp:TextBox ID="CablesDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesDetails") %>' />
                </div>
                CablesStock:
                <div>
                <asp:TextBox ID="CablesStockTextBox" runat="server" Text='<%# Bind("CablesStock") %>' />
                </div>
                CablesPrice:
                <div>
                <asp:TextBox ID="CablesPriceTextBox" runat="server" Text='<%# Bind("CablesPrice") %>' />
                </div>
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                CablesID:
                <div>
                <asp:TextBox ID="CablesIDTextBox" enabled="false" runat="server" Text='<%# Eval("CablesID") %>' />
                </div>
                CablesName:
                <div>
                <asp:TextBox ID="CablesNameTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesName") %>' />
                </div>
                CablesType:
                <div>
                <asp:TextBox ID="CablesTypeTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesType") %>' />
                </div>
                CablesDetails:
                <div>
                <asp:TextBox ID="CablesDetailsTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("CablesDetails") %>' />
                </div>
                CablesStock:
                <div>
                <asp:TextBox ID="CablesStockTextBox" enabled="false" runat="server" Text='<%# Bind("CablesStock") %>' />
                </div>
                CablesPrice:
                <div>
                <asp:TextBox ID="CablesPriceTextBox" enabled="false" runat="server" Text='<%# Bind("CablesPrice") %>' />
                </div>
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerTemplate>
                <div>
                    <asp:Button ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="Previous" runat="server" />
                    <asp:Button ID="NextButton" CommandName="Page" CommandArgument="Next" Text="Next" runat="server" />
                </div>
            </PagerTemplate>
        </asp:FormView>

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

        <h1>Software</h1>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="SoftwareID" DataSourceID="tblSoftware" AllowPaging="True" PagerSettings-Mode="NextPrevious" RenderOuterTable="False">
            <EditItemTemplate>
                SoftwareID:
                <div>
                <asp:Label ID="SoftwareIDLabel1" runat="server" Text='<%# Eval("SoftwareID") %>' />
                </div>
                SoftwareName:
                <div>
                <asp:TextBox ID="SoftwareNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareName") %>' />
                </div>
                SoftwareType:
                <div>
                <asp:TextBox ID="SoftwareTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareType") %>' />
                </div>
                SoftwareDetails:
                <div>
                <asp:TextBox ID="SoftwareDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareDetails") %>' />
                </div>
                SoftwareStock:
                <div>
                <asp:TextBox ID="SoftwareStockTextBox" runat="server" Text='<%# Bind("SoftwareStock") %>' />
                </div>
                SoftwarePrice:
                <div>
                <asp:TextBox ID="SoftwarePriceTextBox" runat="server" Text='<%# Bind("SoftwarePrice") %>' />
                </div>
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                SoftwareName:
                <div>
                <asp:TextBox ID="SoftwareNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareName") %>' />
                </div>
                SoftwareType:
                <div>
                <asp:TextBox ID="SoftwareTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareType") %>' />
                </div>
                SoftwareDetails:
                <div>
                <asp:TextBox ID="SoftwareDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareDetails") %>' />
                </div>
                SoftwareStock:
                <div>
                <asp:TextBox ID="SoftwareStockTextBox" runat="server" Text='<%# Bind("SoftwareStock") %>' />
                </div>
                SoftwarePrice:
                <div>
                <asp:TextBox ID="SoftwarePriceTextBox" runat="server" Text='<%# Bind("SoftwarePrice") %>' />
                </div>
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                SoftwareID:
                <div>
                <asp:TextBox ID="SoftwareIDTextBox" enabled="false" runat="server" Text='<%# Eval("SoftwareID") %>' />
                </div>
                SoftwareName:
                <div>
                <asp:TextBox ID="SoftwareNameTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareName") %>' />
                </div>
                SoftwareType:
                <div>
                <asp:TextBox ID="SoftwareTypeTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareType") %>' />
                </div>
                SoftwareDetails:
                <div>
                <asp:TextBox ID="SoftwareDetailsTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("SoftwareDetails") %>' />
                </div>
                SoftwareStock:
                <div>
                <asp:TextBox ID="SoftwareStockTextBox" enabled="false" runat="server" Text='<%# Bind("SoftwareStock") %>' />
                </div>
                SoftwarePrice:
                <div>
                <asp:TextBox ID="SoftwarePriceTextBox" enabled="false" runat="server" Text='<%# Bind("SoftwarePrice") %>' />
                </div>
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerTemplate>
                <div>
                    <asp:Button ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="Previous" runat="server" />
                    <asp:Button ID="NextButton" CommandName="Page" CommandArgument="Next" Text="Next" runat="server" />
                </div>
            </PagerTemplate>
        </asp:FormView>
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

        <h1>Base Units</h1>
        <asp:FormView ID="FormView4" runat="server" DataKeyNames="BUnitsID" DataSourceID="tblBUnits" AllowPaging="True" PagerSettings-Mode="NextPrevious" RenderOuterTable="False">
            <EditItemTemplate>
                BUnitsID:
                <div>
                <asp:Label ID="BUnitsIDLabel1" runat="server" Text='<%# Eval("BUnitsID") %>' />
                </div>
                BUnitsName:
                <div>
                <asp:TextBox ID="BUnitsNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsName") %>' />
                </div>
                BUnitsType:
                <div>
                <asp:TextBox ID="BUnitsTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsType") %>' />
                </div>
                BUnitsDetails:
                <div>
                <asp:TextBox ID="BUnitsDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsDetails") %>' />
                </div>
                BUnitsStock:
                <div>
                <asp:TextBox ID="BUnitsStockTextBox" runat="server" Text='<%# Bind("BUnitsStock") %>' />
                </div>
                BUnitsPrice:
                <div>
                <asp:TextBox ID="BUnitsPriceTextBox" runat="server" Text='<%# Bind("BUnitsPrice") %>' />
                </div>
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                BUnitsName:
                <div>
                <asp:TextBox ID="BUnitsNameTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsName") %>' />
                </div>
                BUnitsType:
                <div>
                <asp:TextBox ID="BUnitsTypeTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsType") %>' />
                </div>
                BUnitsDetails:
                <div>
                <asp:TextBox ID="BUnitsDetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsDetails") %>' />
                </div>
                BUnitsStock:
                <div>
                <asp:TextBox ID="BUnitsStockTextBox" runat="server" Text='<%# Bind("BUnitsStock") %>' />
                </div>
                BUnitsPrice:
                <div>
                <asp:TextBox ID="BUnitsPriceTextBox" runat="server" Text='<%# Bind("BUnitsPrice") %>' />
                </div>
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                BUnitsID:
                <div>
                <asp:TextBox ID="BUnitsIDTextBox" enabled="false" runat="server" Text='<%# Eval("BUnitsID") %>' />
                </div>
                BUnitsName:
                <div>
                <asp:TextBox ID="BUnitsNameTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsName") %>' />
                </div>
                BUnitsType:
                <div>
                <asp:TextBox ID="BUnitsTypeTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsType") %>' />
                </div>
                BUnitsDetails:
                <div>
                <asp:TextBox ID="BUnitsDetailsTextBox" enabled="false" runat="server" TextMode="MultiLine" Text='<%# Bind("BUnitsDetails") %>' />
                </div>
                BUnitsStock:
                <div>
                <asp:TextBox ID="BUnitsStockTextBox" enabled="false" runat="server" Text='<%# Bind("BUnitsStock") %>' />
                </div>
                BUnitsPrice:
                <div>
                <asp:TextBox ID="BUnitsPriceTextBox" enabled="false" runat="server" Text='<%# Bind("BUnitsPrice") %>' />
                </div>
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
               <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerTemplate>
                <div>
                    <asp:Button ID="PrevButton" CommandName="Page" CommandArgument="Prev" Text="Previous" runat="server" />
                    <asp:Button ID="NextButton" CommandName="Page" CommandArgument="Next" Text="Next" runat="server" />
                </div>
            </PagerTemplate>
        </asp:FormView>
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

