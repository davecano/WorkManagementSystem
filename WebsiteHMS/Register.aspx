<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="ThemeBucket" />
    <link rel="shortcut icon" href="#" type="image/png" />

    <title>注册</title>

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
 
    <form id="form1" runat="server"  class="form-signin" >
         <div class="form-signin-heading text-center">
            <h1 class="sign-title">学生注册</h1>
            <img src="images/login-logo.png" alt=""/>
        </div>



        <div class="login-wrap">
            <div class="form-group">
            <p>在此键入您的注册信息...</p>
                <div class="row">
     <div class="col-sm-8">
            <asp:TextBox ID="TxtuserID" runat="server"   placeholder="学生账号"  CssClass="form-control" autofocus="autofocus" onblur="checkid()"></asp:TextBox>
</div>
                    <div class="col-sm-4"><span id="userid"></span></div>
</div>
                <div class="row">
                    <div class="col-sm-8">  <asp:TextBox ID="TxtuserName" runat="server"  placeholder="学生姓名" onblur="checkname()" Cssclass="form-control" >
                    </asp:TextBox>
                    </div>
                    <div class="col-sm-4"><span id="username"></span></div>
                </div>  
                <div class="row"> <div class="col-sm-8">
            <asp:TextBox ID="TxtuserCollege" placeholder="所属学院" CssClass="form-control" onblur="checkcollege()" runat="server"></asp:TextBox>
       </div>
           <div class="col-sm-4"><span id="college"></span></div>
       </div>
             <div class="row"><div class="col-sm-8">
                    <asp:TextBox ID="TxtuserClass" placeholder="学生班级"  CssClass="form-control " onblur="checkClass()"   runat="server"></asp:TextBox>
               </div>
                   <div class="col-sm-4"><span id="userclass"></span></div>
               </div>
             <div class="row"><div class="col-sm-8">
                   <asp:TextBox ID="TxtuserEmail" placeholder="学生邮箱" CssClass="form-control" onblur="checkemail()" runat="server"></asp:TextBox>
              </div>
                  <div class="col-sm-4"><span id="useremail"></span></div>
              </div>
             <div class="row"><div class="col-sm-8">
                    <asp:TextBox ID="TxtuserPhone" placeholder="联系方式" CssClass="form-control" onblur="checktelephone()" runat="server"></asp:TextBox>
               </div>
                   <div class="col-sm-4"><span id="userphone"></span></div>
               </div>
             <div class="row"><div class="col-sm-8">
                   <asp:TextBox ID="TxtuserPwd" runat="server" onblur="checkuserpassword()" CssClass="form-control" TextMode="Password" placeholder="学生密码"></asp:TextBox>
               </div>
                   <div class="col-sm-4"><span id="userpsw"></span></div>
               </div>
              <div class="row">
                  <div class="col-sm-8"><asp:TextBox ID="TxtCfmPwd" runat="server" onblur="checkpwdagin()" CssClass="form-control" TextMode="Password" placeholder="确认密码"></asp:TextBox>

                  </div>
                  <div class="col-sm-4"><span id="userconfirmpsw"></span></div>
              </div>
             
        
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" Text="确认版权归教科院陈旋所有" Checked="True" />
            <%--    <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 确认版权归教科院陈旋所有
            </label>--%>
                </div>
          <asp:LinkButton ID="BtnRegSub"  CssClass="btn btn-lg btn-login btn-block"  runat="server" OnClientClick="return checkall()" OnClick="BtnRegSub_Click">
              <i class="fa fa-check"></i>

          </asp:LinkButton>
            <%--<button type="submit" class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>--%>

            <div class="registration">
                已经注册过了吗？
                <a href="Login.aspx" class="">
                    登陆
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
    <script src="js/validation.js"></script>
</body>
</html>

