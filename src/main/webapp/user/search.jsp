<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form method="post">
        <div class=" mb-3">
            <label for="query" class="form-label">
                Search
            </label>
            <input class="form-control" id="query"
                   type="
                    <c:if test="${searchType == 'country'}">text</c:if>
                   <c:if test="${searchType == 'id'}">number</c:if>
                    "

                   placeholder="
                   <c:if test="${searchType == 'country'}">Enter country...</c:if>
                   <c:if test="${searchType == 'id'}">Enter User ID...</c:if>
                   "
                   name="query"/>
        </div>
        <div>
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
    </form>
</div>
</body>
</html>
