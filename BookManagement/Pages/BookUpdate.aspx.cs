using BookManagement.Controllers;
using BookManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookManagement.Pages
{
    public partial class BookUpdate : System.Web.UI.Page
    {
        private BookController bookController;
        private int bookId;
        protected void Page_Init(object sender, EventArgs e)
        {
            bookController = new BookController();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    bookId = int.Parse(Request.QueryString["id"]);
                    BindBookData();
                }
            }
        }
        private void BindBookData()
        {
            Book book = bookController.GetBookById(bookId);

            txtId.Text = book.Id.ToString();
            txtTitle.Text = book.Title;
            txtAuthor.Text = book.Author;
            txtGenere.Text = book.Genre;
            txtPrice.Text = book.Price.ToString();
            txtPublicationYear.Text = book.PublicationYear.ToString();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Book updatedBook = new Book
                {
                    Id = int.Parse(txtId.Text),
                    Title = txtTitle.Text,
                    Author = txtAuthor.Text,
                    Genre = txtGenere.Text,
                    Price = decimal.Parse(txtPrice.Text),
                    PublicationYear = int.Parse(txtPublicationYear.Text)
                };

                bookController.UpdateBook(updatedBook);

                Response.Redirect("BookList.aspx");
            }
            
        }
    }
}