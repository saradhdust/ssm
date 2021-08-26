<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 星涯
  Date: 2021/8/21
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>Title</title>
    <style>
        .center {
            text-align: center;
        }
    </style>
    <script>
        function deleteSuccess(){
            alert("删除成功！");
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="col-md-1 "></div>
    <div class="btn-group col-md-2">
        <a href="${pageContext.request.contextPath}/book/toAddBook">
            <button class="btn btn-default">添加书籍</button>
        </a>
    </div>
    <div class="col-md-5 "></div>
    <form action="${pageContext.request.contextPath}/book/toQueryBookByName" method="post">
        <div class="col-md-3" >
            <input class="form-control" placeholder="输入想要搜索的书名" name="bookName">
        </div>
        <div class="col-md-1">
            <button type="submit" class="btn btn-default">搜索</button>
        </div>
    </form>
</div>

<div class="row clearfix">
    <div class="col-md-1 "></div>
    <div class="col-md-10 ">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th class="center">书籍编号</th>
                <th class="center">书籍名称</th>
                <th class="center">书籍数量</th>
                <th class="center">书籍详情</th>
                <th class="center">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr class="center">
                    <td>${book.bookID}</td>
                    <td>《${book.bookName}》</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.details}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?bookID=${book.bookID}">修改</a>
                        &nbsp;|&nbsp;
                        <a href="${pageContext.request.contextPath}/book/DeleteBook?bookID=${book.bookID}" onclick="deleteSuccess()">删除</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col-md-1 "></div>
</div>
</body>
</html>
