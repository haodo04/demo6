<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</head>
<body>
    <div class="container">
        <h3 class="text-center text-primary">Đăng nhập</h3>
        <%
            String error = (String) request.getAttribute("error");
            String uname = request.getParameter("uname");
            if(error==null) error = "";
            if(uname==null) uname = "";
        %>
        <p><%= error %></p>
        <form action="login" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Tên người dùng</label>
                <input type="text" class="form-control" name="uname" value="<%=uname%>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập tên người dùng">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Mật khẩu</label>
                <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="Mật khẩu">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</body>
</html>
