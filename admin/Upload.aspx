<%@ Page Title="Upload Image" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" Runat="Server">
        <form id="form1" runat="server">
    <div>
        
        <div>
            <asp:Label ID="lblAltText" runat="server" Text="Alternative Text" AssociatedControlID="txtAltText"></asp:Label>
<asp:TextBox ID="txtAltText" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="You must supply alternative text" ControlToValidate="txtAltText" runat="server" />
        </div>
        <div>
        <asp:Label ID="lblFileUpload" runat="server" Text="File" AssociatedControlID="fileUploadControl"></asp:Label>
        <asp:FileUpload ID="fileUploadControl" runat="server" />
        </div>
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </div>
    </form>
</asp:Content>

