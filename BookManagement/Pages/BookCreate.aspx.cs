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
    public partial class BookCreate : System.Web.UI.Page
    {
        private BookController bookController;

        protected void Page_Init(object sender, EventArgs e)
        {
            bookController = new BookController();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Book newBook = new Book
                {
                    Title = txtTitle.Text,
                    Author = txtAuthor.Text,
                    Genre = txtGenere.Text,
                    PublicationYear = int.Parse(txtPublicationYear.Text),
                    Price = decimal.Parse(txtPrice.Text)
                };

                bookController.CreateBook(newBook);

                Response.Redirect("BookList.aspx");
            }

        }
    }
}