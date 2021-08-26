package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.pojo.Book;
import com.service.bookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class bookController {

    @Autowired
    @Qualifier("bookService")
    private bookService bookService;

    @RequestMapping("/book/allBook")
    public String list(Model model) {
        List<Book> list = bookService.queryAllBooks();
        JSON json = (JSON) JSON.toJSON(list);
        model.addAttribute("list", json);
        return "allBook";
    }

    @RequestMapping("/book/toAddBook")
    public String toAddBook() {
        return "addBook";
    }

    @RequestMapping("/book/AddBook")
    public String addBook(Book book) {
        System.out.println(book.toString());
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/book/toUpdateBook")
    public String toUpdateBook(int bookID, Model model) {
        Book book = bookService.queryBookByID(bookID);
        model.addAttribute("book", book);
        return "UpdateBook";
    }

    @RequestMapping("/book/UpdateBook")
    public String UpdateBook(Book book) {
        System.out.println(book.toString());
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/book/DeleteBook")
    public String DeleteBook(int bookID) {
        bookService.deleteBook(bookID);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/book/toQueryBookByName")
    public String QueryBookByName(String bookName, Model model) {
        List<Book> books = bookService.queryBookByName(bookName);
        model.addAttribute("books", books);
        return "QueryBookByName";
    }

    @RequestMapping("/book/return")
    public String Return() {
        return "redirect:/book/allBook";
    }

    @RequestMapping("/book/book")
    public String book(){
        return "";
    }
}
