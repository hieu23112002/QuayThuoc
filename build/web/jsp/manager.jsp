<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <h2>Manage <b>Products</b></h2>
                            <form class="d-flex" action="search" method="post">
                                <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-dark btn-sm btn-smaller" type="submit">Search</button>
                            </form>
                        </div>

                        <div class="col-sm-6 text-end">
                            <a href="home?service=insert" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>

                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o">
                            <tr>

                                <td class="text-capitalize">${o.name}</td>
                                <td class="text-capitalize">${o.description}</td>
                                <td><fmt:formatNumber value="${o.price}" type="number" pattern="###,###,###" /></td>
                                <td>${o.quantity}</td>
                                <td class="text-capitalize">${o.unit}</td>
                                <td>
                                    <a href="home?service=update&id=${o.medicineID}" class="btn btn-primary"><i class="material-icons">&#xE254;</i></a>
                                    <a href="#" onclick="confirmDelete(${o.medicineID})" class="btn btn-danger"><i class="material-icons">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/manager.js" type="text/javascript"></script>

        <script>
                                        function confirmDelete(id) {
                                            if (confirm("Are you sure you want to delete this product?")) {
                                                window.location.href = "home?service=delete&id=" + id;
                                            }
                                        }
        </script>
    </body>

</html>
