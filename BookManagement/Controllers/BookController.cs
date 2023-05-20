using BookManagement.Models;
using BookManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using BookManagement.Pages;

namespace BookManagement.Controllers
{
    public class BookController : System.Web.UI.Page
    {
        private readonly BookService bookService;

        public BookController()
        {
            this.bookService = new BookService();
        }

        public List<Book> GetBooks()
        {
            return bookService.GetAll();
        }

        public void CreateBook(Book book)
        {
            bookService.Create(book);
        }

        public Book GetBookById(int bookId)
        {
            return bookService.Get(bookId);
        }

        public void UpdateBook(Book updatedBook)
        {
            bookService.Update(updatedBook);
        }

        public void DeleteBook(int bookId)
        {
            bookService.Delete(bookId);
        }


    }

}