using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookManagement.Controllers;
using BookManagement.Models;
using BookManagement.Services;

namespace BookManagement.Pages
{
    public partial class BookList : System.Web.UI.Page
    {
        private BookController bookController;

        protected void Page_Init(object sender, EventArgs e)
        {
            bookController = new BookController();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBooks();
            }
        }

        private void BindBooks()
        {
            List<Book> books = bookController.GetBooks();

            gvBooks.DataSource = books;
            gvBooks.DataBind();
        }

        protected void gvBooks_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBooks.EditIndex = e.NewEditIndex;
            BindBooks();

        }

        protected void gvBooks_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bookId = Convert.ToInt32(gvBooks.DataKeys[e.RowIndex].Value);
            bookController.DeleteBook(bookId);
            BindBooks();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

            string Id = (sender as LinkButton).CommandArgument;
            Response.Redirect("BookUpdate.aspx?id=" + Id);

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string Id = (sender as LinkButton).CommandArgument;
            Response.Redirect("BookDelete.aspx?id=" + Id);
        }
        protected void btnDetail_Click(object sender, EventArgs e)
        {
            string Id = (sender as LinkButton).CommandArgument;
            Response.Redirect("BookDetail.aspx?id=" + Id);
        }


    }
}