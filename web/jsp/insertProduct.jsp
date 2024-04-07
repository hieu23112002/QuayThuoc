<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Thêm s?n ph?m</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="home?service=insert" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <a href="home"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></a>
                            </div>
                            <div class="modal-body">					
                               
                                <div class="form-group">
                                    <label>Tên</label>
                                    <input value="" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Chi Tiet</label>
                                    <input value="" name=des type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Giá buôn</label>
                                    <input value="" name="price2" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Giá l&#x1EBB;</label>
                                    <input value="" name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>So Luong</label>
                                    <input value="5" name="quantity" type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Unit</label>
                                    <input value="H&#7897;p" name="unit" type="text" class="form-control" required>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" name="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>