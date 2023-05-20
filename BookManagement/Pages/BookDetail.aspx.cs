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
    public partial class BookDetail : System.Web.UI.Page
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

            lblTitle.Text = book.Title;
            lblAuthor.Text = book.Author;
            lblGenere.Text = book.Genre;
            lblPrice.Text = book.Price.ToString();
            lblPublicationYear.Text = book.PublicationYear.ToString();
        }

        protected void btnGoBackList_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookList.aspx");
        }
    }
}