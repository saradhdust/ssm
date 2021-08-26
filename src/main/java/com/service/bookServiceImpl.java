package com.service;

import com.mapper.bookMapper;
import com.pojo.Book;

import java.util.List;

public class bookServiceImpl implements bookService{

    private bookMapper bookMapper;

    public bookServiceImpl() {
    }

    public bookServiceImpl(bookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public void setBookMapper(bookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public List<Book> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    @Override
    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int deleteBook(int id) {
        return bookMapper.deleteBook(id);
    }

    @Override
    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    @Override
    public Book queryBookByID(int id) {
        return bookMapper.queryBookByID(id);
    }

    @Override
    public List<Book> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
