<%@ Page Title="Delete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDelete.aspx.cs" Inherits="BookManagement.Pages.BookDelete" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Delete Book</h3>

         <div>
            <asp:Label runat="server" ID="lblId"  Visible="false"></asp:Label>
            <label>Title:</label>
            <asp:Label runat="server" ID="lblTitle"  ></asp:Label>
            <br />
            <label>Author:</label>
            <asp:Label runat="server" ID="lblAuthor"  ></asp:Label>
            <br />
             <label>Genere:</label>
            <asp:Label runat="server" ID="lblGenere"  ></asp:Label>
            <br />
            <label>Publication Year:</label>
            <asp:Label runat="server" ID="lblPublicationYear"  ></asp:Label>
            <br />
             <label>Price:</label>
            <asp:Label runat="server" ID="lblPrice"  ></asp:Label>
            <br />
            <asp:Button runat="server" ID="btnDelete" CssClass="btn btn-danger btn-sm" Text="Delete" OnClick="btnDelete_Click" />
        </div>
   </asp:Content>
