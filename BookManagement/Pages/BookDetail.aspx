<%@ Page Title="Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="BookManagement.Pages.BookDetail" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Detail Book</h3>

       <div>
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
            <asp:LinkButton runat="server" ID="btnGoBackList" CssClass="btn btn-link btn-sm" Text="Go back to List" OnClick="btnGoBackList_Click" />
        </div>
    </asp:Content>
