<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/21/2021
  Time: 7:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
    <%--	<link rel="stylesheet" href="/css/style.css">--%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--	<script src="/js/script.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://upload-widget.cloudinary.com/global/all.js" type="text/javascript"></script>
    <script src="/js/toast.js"></script>
</head>
<body>

<div class="modal-content">
    <form action="/employee" method="post">
        <div class="modal-header">
            <h4 class="modal-title">Add Employee</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label>Fullname</label>
                <input name="fullname" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Birthday</label>
                <input name="birthday" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Address</label>
                <textarea name="address" rows="4" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label>Position</label>
                <input name="position" class="form-control">
            </div>
            <div class="form-group">
                <label>Department</label>
                <input name="department" class="form-control">
            </div>
        </div>
        <div class="modal-footer">
            <a href="/employee?value='reset'" class="btn btn-default resetBut" value="Reset" style="margin-right: 50px"></a>
        </div>
        <div class="modal-footer">
            <input type="submit" class="btn btn-success" value="Add">
        </div>
    </form>
</div>
</body>
<style>
    body {
        color: #566787;
        background: #f5f5f5;
        font-family: 'Varela Round', sans-serif;
        font-size: 13px;
    }

    .table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
        border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }

    .modal .modal-content {
        border-radius: 3px;
    }

    .modal .modal-header, .modal .modal-body, .modal .modal-footer {
        padding: 20px 30px;
    }

    .table-title .btn {
        color: #fff;
        float: right;
        font-size: 13px;
        border: none;
        min-width: 50px;
        border-radius: 2px;
        border: none;
        outline: none !important;
        margin-left: 10px;
    }
</style>
<script>
    $( ".resetBut" ).click(function() {
        $( ".form-control" ).val("");
    });
</script>
</html>
