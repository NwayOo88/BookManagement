using BookManagement.Data;
using BookManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookManagement.Services
{
    public class BookService
    {
        public List<Book> GetAll()
        {
            using (var context = new BookContext())
            {
                return context.Books.ToList();
            }
        }

        public Book Get(int id)
        {
            using (var context = new BookContext())
            {
                return context.Books.Find(id);
            }
        }

        public void Create(Book book)
        {
            using (var context = new BookContext())
            {
                context.Books.Add(book);
                context.SaveChanges();
            }
        }

        public void Update(Book book)
        {
            using (var context = new BookContext())
            {
                var existingBook = context.Books.Find(book.Id);
                if (existingBook != null)
                {
                    existingBook.Title = book.Title;
                    existingBook.Author = book.Author;
                    existingBook.Genre = book.Genre;
                    existingBook.Price = book.Price;
                    existingBook.PublicationYear = book.PublicationYear;

                    context.SaveChanges();
                }
            }
        }

        public void Delete(int bookId)
        {
            using (var context = new BookContext())
            {
                var book = context.Books.Find(bookId);
                if (book != null)
                {
                    context.Books.Remove(book);
                    context.SaveChanges();
                }
            }
        }
    }
}