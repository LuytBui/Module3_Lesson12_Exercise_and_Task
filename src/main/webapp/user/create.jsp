<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container mb-3 mt-3">
    <h1>User Management</h1>
    <a href="/users">
        <button class="btn btn-primary">Back</button>
    </a>
</div>

<div class="container">
    <form method="post">
        <div class="mb-3">
            <label for="userName" class="form-label">User name</label>
            <input type="text" class="form-control" id="userName" aria-describedby="User name" name="name">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
        </div>
        <div class="mb-3">
            <label for="country" class="form-label">Country</label>
            <input type="text" class="form-control" id="country" aria-describedby="country" name="country">
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>

</body>
</html>