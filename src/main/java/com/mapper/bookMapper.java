package com.mapper;

import com.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface bookMapper {
    List<Book> queryAllBooks();

    int addBook(Book book);

    int deleteBook(@Param("bookID") int id);

    int updateBook(Book book);

    Book queryBookByID(@Param("BookID") int id);

    List<Book> queryBookByName(@Param("BookName") String BookName);
}
