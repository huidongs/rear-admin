<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 

    <!--STYLESHEET-->
    <!--=================================================-->
    <!--Open Sans Font [ OPTIONAL ]-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="res/css/bootstrap.min.css" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="res/css/nifty.min.css" rel="stylesheet">

    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="res/css/demo/nifty-demo-icons.min.css" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="res/css/demo/nifty-demo.min.css" rel="stylesheet">

    <!--Magic Checkbox [ OPTIONAL ]-->
    <link href="res/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">

    <!--JAVASCRIPT-->
    <!--=================================================-->
    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="res/plugins/pace/pace.min.css" rel="stylesheet">
    <script src="res/plugins/pace/pace.min.js"></script>
    <!--jQuery [ REQUIRED ]-->
    <script src="res/js/jquery-2.2.4.min.js"></script>
	<!--BootstrapJS [ RECOMMENDED ]-->
    <script src="res/js/bootstrap.min.js"></script>
    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="res/js/nifty.min.js"></script>

    <!--=================================================-->
    <!--Background Image [ DEMONSTRATION ]-->
    <script src="res/js/demo/bg-images.js"></script>



</head>
<body>
<div id="container" class="cls-container">
		<!-- LOGIN FORM -->
		<!--===================================================-->
		<div class="cls-content">
		    <div class="cls-content-sm panel">
		        <div class="panel-body">
		            <div class="mar-ver pad-btm">
		                <h3 class="h4 mar-no">Admin Login</h3>
		                <p class="text-muted">Sign In to your account</p>
		            </div>
					<!--=====================提交账户信息表单=======================！-->
		            <form action="AccountCheck" method="post">
		                <div class="form-group">
		                    <input type="text" name="uname" class="form-control" placeholder="Username" autofocus>
		                </div>
		                <div class="form-group">
		                    <input type="password" name="upwd" class="form-control" placeholder="Password">
		                </div>
		               <%
		               		String warningMessage = (String)request.getAttribute("message");
		               		if(warningMessage==null){
		               			warningMessage = "Hello Welcome here";
		               		}
		               %>
		                 
		                    <label ><%=warningMessage %></label>
		            
		                <button class="btn btn-primary btn-lg btn-block" type="submit">Sign In</button>
		            </form>
					<!-- =====================提交账户信息表单======================= -->
		        </div>
		    </div>
		</div>
	</div>
	<!-- <form action="LoginServlet" method="post">
		用户名：<input type="text" name="uname" ><br/>
		密码：<input type="password" name="upwd"><br/>
		<input type="submit" value="登录">
	</form> -->
</body>
</html>