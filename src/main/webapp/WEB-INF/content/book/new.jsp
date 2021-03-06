<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>new</title>
    <link rel="stylesheet" href="/repo/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="page-header">
            <h3>新增书籍</h3>
        </div>

    <div class="row">

        <div class="col-xs-4">
            <form action="/book/save.action" method="post">
                <div class="form-group">
                    <label>书籍名称</label>
                    <input type="text" class="form-control" name="book.bookname">
                </div>
                <div class="form-group">
                    <label>作者</label>
                    <input type="text" class="form-control" name="book.bookauthor">
                </div>
                <div class="form-group">
                    <label>出版社</label>
                    <select type="text" class="form-control" name="book.publisher.id">
                        <c:forEach var="pub" items="${publisherList}">
                            <option value="${pub.id}">${pub.pubname}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label>价格</label>
                    <input type="text" class="form-control" name="book.bookprice">
                </div>
                <div class="form-group">
                    <label>数量</label>
                    <input type="text" class="form-control" name="book.booknum">
                </div>
                <div class="form-group">
                    <label>分类</label>
                    <select type="text" class="form-control" name="book.bookType.id">
                        <c:forEach var="type" items="${bookTypeList}">
                            <option value="${type.id}">${type.booktype}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary">保存</button>
                </div>
            </form>
        </div>
    </div>

    </div>
</body>
</html>
