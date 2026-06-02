<%-- 
    Document   : index
    Created on : 2 Jun 2026, 6:12:26 pm
    Author     : IZZUL MUAZZAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="container py-5">
    <div class="jumbotron">
        <h1 class="display-4">Application MVC System for Car Shop</h1>
        <p class="lead">Manage your vehicle pricing logs cleanly using an industry-standard MVC approach.</p>
        <hr class="my-4">
        <ul>
            <li><a href="<%=request.getContextPath()%>/list">View Car Price List</a></li>
            <li><a href="<%=request.getContextPath()%>/new">Add a New Vehicle Entry</a></li>
        </ul>
    </div>
</body>
</html>
