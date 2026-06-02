<%-- 
    Document   : carForm
    Created on : 2 Jun 2026, 6:13:07 pm
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
    <div class="container col-md-5">
        <div class="card shadow">
            <div class="card-body">
                <c:if test="${car != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${car == null}">
                    <form action="insert" method="post">
                </c:if>
                
                <h2 class="mb-4">
                    <c:if test="${car != null}">Edit Car Entry</c:if>
                    <c:if test="${car == null}">Add New Car</c:if>
                </h2>

                <c:if test="${car != null}">
                    <input type="hidden" name="id" value="<c:out value='${car.carId}' />" />
                </c:if>
                
                <fieldset class="form-group">
                    <label>Brand Name</label>
                    <input type="text" value="<c:out value='${car.brand}' />" class="form-control" name="brand" required="required">
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Model Description</label>
                    <input type="text" value="<c:out value='${car.model}' />" class="form-control" name="model" required="required">
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Cylinder Capacity (Qty)</label>
                    <input type="number" step="0.1" value="${car.cylinder}" class="form-control" name="cylinder" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Retail Price (RM)</label>
                    <input type="number" step="0.01" value="${car.price}" class="form-control" name="price" required="required">
                </fieldset>
                
                <button type="submit" class="btn btn-success px-4">Save</button>
                <a href="<%=request.getContextPath()%>/list" class="btn btn-outline-secondary ml-2">Cancel</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
