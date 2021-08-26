<%--
  Created by IntelliJ IDEA.
  User: 星涯
  Date: 2021/8/22
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>搜索结果</small>
                </h1>
            </div>
        </div>
    </div>
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
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${books}">
                <tr class="center">
                    <td>${book.bookID}</td>
                    <td>《${book.bookName}》</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.details}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col-md-1 "></div>
</div>
<div class="container">
    <div class="btn-group col-md-1">
        <a href="${pageContext.request.contextPath}/book/return">
            <button class="btn btn-default">返回</button>
        </a>
    </div>
</div>
</body>
</html>
