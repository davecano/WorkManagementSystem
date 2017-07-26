<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="Setting.aspx.cs" Inherits="admin_Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <!-- header section start-->
        <div class="header-section">

        <!--toggle button start-->
        <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        <!--toggle button end-->

        <!--search start-->
        <div class="searchform" >
            <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
        </div>
        <!--search end-->

        <!--notification menu start -->
        <div class="menu-right">
            <ul class="notification-menu">               
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="../images/photos/user-avatar.jpg" alt="" />
                            <asp:Literal ID="Lradmin" runat="server"></asp:Literal>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>  个人简介</a></li>                 
                            <li><a href="~/Login.aspx"><i class="fa fa-sign-out"></i> 注销</a></li>
                        </ul>
                    </li>
            </ul>
        </div>
        <!--notification menu end -->

        </div>
        <!-- header section end-->
    
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                管理员设置
            </h3>
            <ul class="breadcrumb">               
                 <li>
                管理员姓名
                </li>
                <li>
             管理员密码
                </li>
            
            </ul>
        </div>
        <!-- page heading end-->
    <
       <div class="wrapper">
            
           <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           修改姓名&密码
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <div class="cmxform form-horizontal adminex-form" >
                                    <div class="form-group ">
                                        <label for="LbID" class="control-label col-lg-2">管理员账号</label>
                                        <div class="col-lg-10">
                                           <%-- <input class=" form-control" id="firstname" name="firstname" type="text" />--%>
                                            <asp:Label ID="LbID"   runat="server"></asp:Label>
                                        </div>
                                    </div>
                               
                                    <div class="form-group ">
                                        <label for="username" class="control-label col-lg-2">原姓名</label>
                                        <div class="col-lg-10">
                                            <%--<input class="form-control " id="username" name="username" type="text" />--%>
                                            <asp:Label ID="LbName" runat="server"> </asp:Label>
                                        </div>
                                    </div>
                                     <div class="form-group ">
                                        <label for="username" class="control-label col-lg-2">新名字</label>
                                        <div class="col-lg-5">
                                            <%--<input class="form-control " id="username" name="username" type="text" />--%>
                                               <asp:TextBox ID="TxtuserName" onblur="checkname()" CssClass=" form-control" runat="server"></asp:TextBox>
                                        </div>
                                                   <div class="col-lg-5">
                                            <%--<input class="form-control " id="username" name="username" type="text" />--%>
                                              <span id="username"></span>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="password" class="control-label col-lg-2">旧密码</label>
                                        <div class="col-lg-10">
                                              <asp:Label ID="Lbpsw"  runat="server" ></asp:Label>
                                        </div>
                                    </div>
                                      <div class="form-group ">
                                        <label for="confirm_password" class="control-label col-lg-2">新密码</label>
                                        <div class="col-lg-5">
                                           <asp:TextBox ID="TxtuserPwd" onblur="checkuserpassword()" CssClass=" form-control" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>
                                                  <div class="col-lg-5">
                                           <span id="userpsw"></span>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="confirm_password" class="control-label col-lg-2">确认密码</label>
                                        <div class="col-lg-5">
                                            <asp:TextBox ID="TxtCfmPwd" onblur="checkpwdagin()" CssClass=" form-control" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>
                                           <div class="col-lg-5">
                                    <span id="userconfirmpsw"></span>
                                        </div>
                                    </div>
                             

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                          
                                          <asp:LinkButton ID="lbsave"  CssClass="btn btn-primary" OnClientClick="return checkaadmin() " OnClick="lbsave_OnClick" runat="server">保存</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        
</asp:Content>

