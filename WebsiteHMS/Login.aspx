<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content="ThemeBucket"/>
    <link rel="shortcut icon" href="#" type="image/png"/>
    
    <title>登陆</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-body">

<div class="container">

    <form class="form-signin" id="form1" runat="server" >
      <div class="form-signin-heading text-center">
            <h1 class="sign-title">作业管理系统</h1>
            <img src="../images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
          <div class="radios">
              <label for="radio-01" class="label_radio col-lg-4 col-sm-4">
              <asp:RadioButton ID="RadioButton1"  checked="true"  value="0"  GroupName="sample-radio" runat="server" />
                  管理员
                  </label>
                    <label for="radio-01" class="label_radio col-lg-4 col-sm-4">
              <asp:RadioButton ID="RadioButton2"  checked="false"  value="1"  GroupName="sample-radio" runat="server" />
                  教师
                  </label>
                    <label for="radio-01" class="label_radio col-lg-4 col-sm-4">
              <asp:RadioButton ID="RadioButton3"  checked="false"  value="2"  GroupName="sample-radio" runat="server" />
                  学生
                  </label>
            </div>
          <asp:TextBox ID="TxtuserID" onblur="loginid()" runat="server" CssClass="form-control" autofocus="autofocus" placeholder="用户账号"  ></asp:TextBox>
           <asp:TextBox ID="TxtuserPwd" runat="server" CssClass="form-control"  TextMode="Password" placeholder="用户密码" ></asp:TextBox>
       
     <asp:LinkButton ID="btnsubmit" CssClass="btn btn-lg btn-login btn-block " runat="server" OnClick="btnsubmit_Click"><i class="fa fa-check"></i></asp:LinkButton>
            <div class="registration">
                在此注册学生账号
                <a class="" href="Register.aspx">
                   &nbsp;注册
                </a>
            </div>
  

        </div>

       

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
 
</body>
  
</html>

