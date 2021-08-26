package com.service;

import com.pojo.Book;

import java.util.List;

public interface bookService {
    List<Book> queryAllBooks();

    int addBook(Book book);

    int deleteBook(int id);

    int updateBook(Book book);

    Book queryBookByID(int id);

    List<Book> queryBookByName(String bookName);
}
