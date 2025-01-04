<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="icon" type="image/png" href="<%= request.getContextPath()%>/temp/front_Office/images/logo.webp">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/temp/login/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/temp/login/css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/temp/login/css/bootstrap.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/temp/login/css/style.css">
    <title>Login FixPC</title>
</head>
<body>


<div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('<%= request.getContextPath()%>/temp/login/images/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-7">
                    <h3>Login to <strong>FixPC</strong></h3>
                    <form action="#" method="post">
                        <div class="form-group first">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" placeholder="your-email@gmail.com" id="username">
                        </div>
                        <div class="form-group last mb-3">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" placeholder="Your Password" id="password">
                        </div>

                        <input type="submit" value="Log In" class="btn btn-block btn-primary">

                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<script src="<%= request.getContextPath()%>/temp/login/js/jquery-3.3.1.min.js"></script>
<script src="<%= request.getContextPath()%>/temp/login/js/popper.min.js"></script>
<script src="<%= request.getContextPath()%>/temp/login/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath()%>/temp/login/js/main.js"></script>
</body>
</html>