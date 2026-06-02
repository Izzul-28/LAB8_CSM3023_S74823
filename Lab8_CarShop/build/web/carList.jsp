<%-- 
    Document   : carList
    Created on : 2 Jun 2026, 6:13:54 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #2c3e50">
            <div>
                <a href="" class="navbar-brand">Car Shop Admin Console</a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Inventory</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="row mx-3">
        <div class="container-fluid">
            <h3 class="text-center my-3">Car Pricing Directory</h3>
            <hr>
            <div class="container text-left mb-3">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Vehicle Entry</a>
            </div>
            <table class="table table-bordered table-striped shadow-sm">
                <thead class="thead-dark">
                    <tr>
                        <th>Car ID</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Cylinders</th>
                        <th>Price (RM)</th>
                        <th>Available Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="car" items="${listCar}">
                        <tr>
                            <td><c:out value="${car.carId}" /></td>
                            <td><c:out value="${car.brand}" /></td>
                            <td><c:out value="${car.model}" /></td>
                            <td><c:out value="${car.cylinder}" /></td>
                            <td><c:out value="${car.price}" /></td>
                            <td>
                                <a href="edit?id=<c:out value='${car.carId}' />" class="btn btn-sm btn-info">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="delete?id=<c:out value='${car.carId}' />" class="btn btn-sm btn-danger" onclick="return confirm('Permanently purge this item record?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
