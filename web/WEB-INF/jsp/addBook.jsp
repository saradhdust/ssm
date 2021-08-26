<%--
  Created by IntelliJ IDEA.
  User: 星涯
  Date: 2021/8/21
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>添加书籍</title>
    <script>
        function addSuccess(){
            alert("添加成功！");
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1  class="center">
                    <small>添加书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <form action="${pageContext.request.contextPath}/book/AddBook" method="post">
            <div class="form-group">
                <label for="Name">书籍名称</label>
                <input class="form-control" id="Name" placeholder="名称" name="bookName">
            </div>
            <div class="form-group">
                <label for="Counts">书籍数量</label>
                <input class="form-control" id="Counts" placeholder="数量" name="bookCounts">
            </div>
            <div class="form-group">
                <label for="details">详细信息</label>
                <input class="form-control" id="details" placeholder="详细" name="details">
            </div>
            <button type="submit" class="btn btn-default" onclick="addSuccess()">提交</button>
        </form>
    </div>
    <div class="col-md-2"></div>
</div>
</body>
</html>
