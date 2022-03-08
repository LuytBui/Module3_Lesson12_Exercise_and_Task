<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        a button {
            margin: 10px 10px;
        }
    </style>
</head>
<body>
<div class="container mt-3 mb-3">
    <h1 class="text-center">User Management</h1>
    <div class="d-flex justify-content-around">
        <a href="/users?action=create">
            <button class="btn btn-secondary">Add New User</button>
        </a>
        <br>
        <a href="/users?action=search&type=country">
            <button class="btn btn-secondary">Search Users By Country</button>
        </a>
        <a href="/users?action=search&type=id">
            <button class="btn btn-secondary">Search Users By ID</button>
        </a>
        <br>
        <a href="/users?action=sort-by-name">
            <button class="btn btn-secondary">Sort Users By Name</button>
        </a>
        <br>
        <a href="/users">
            <button class="btn btn-primary">Back</button>
        </a>
    </div>
</div>
<div class="container">
    <table class="table  table-striped table-bordered">
        <h2><c:out value="${listDescription}"/></h2>
        <tr>
            <th>#</th>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}"/></td>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td class="text-center"><a href="/users?action=edit&id=${user.id}">Edit</a></td>
                <td class="text-center"><a href="/users?action=delete&id=${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>