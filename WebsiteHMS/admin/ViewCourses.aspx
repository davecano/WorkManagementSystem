<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="ViewCourses.aspx.cs" Inherits="AdminViewcourses" %>

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
                科目管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    基本信息
                </li>
                <li  class="active">
                查看详情
                </li>
            
            </ul>
        </div>
    
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
             <div class="row">
                 <div class="col-sm-12">
                       <section class="panel">
            <header class="panel-heading">
                基本信息
                <span class="tools pull-right">
                    <a class="fa fa-chevron-down" href="javascript:;"></a>
                    <a class="fa fa-times" href="javascript:;"></a>
                </span>
            </header>
            <div class="panel-body">
              
                   <ul class="p-info">
                                        <li>
                                            <div class="title">课程ID</div>
                                            <div class="desk"><asp:Label ID="LbcID" runat="server" Text="label1"></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">课程名称</div>
                                            <div class="desk"><asp:Label ID="LbcName" runat="server" Text="Label"></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">授课教师</div>
                                            <div class="desk">  <asp:Label ID="LbcTeacher" runat="server" Text="Label"></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">所在学院</div>
                                            <div class="desk"><asp:Label ID="LacCollege" runat="server" Text="Label"></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">所授班级</div>
                                            <div class="desk"> <asp:Label ID="LbcClass" runat="server" Text="Label"></asp:Label></div>
                                        </li>
                                    </ul>
           
             
           
              
              
            </div>
        </section>
                     </div>
                 </div>
             <div class="row">
                <div class="col-sm-12">
                <section class="panel">
                <header class="panel-heading">
                    查看学生
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                     </span>
                </header>
                <div class="panel-body">
                <div class="adv-table editable-table ">
                <div class="clearfix">
                      <div class="btn-group">
                        <%--<button id="editable-sample_new" class="btn btn-primary">
                           增添教师 <i class="fa fa-plus"></i>
                        </button>--%>
                        <asp:LinkButton ID="LbDelete" CssClass="btn btn-primary" OnClick="LbDelete_OnClick" OnClientClick='return  confirm("确认删除吗？")' runat="server">删除课程 <i class="fa fa-plus"></i></asp:LinkButton>
                    </div>
                    <div class="btn-group pull-right">
                        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">工具 <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="#">打印</a></li>
                            <li><a href="#">保存为PDF文件</a></li>
                            <li><a href="#">导出至Excel</a></li>
                        </ul>
                    </div>
                </div>
                        <asp:Repeater ID="userRepeat" runat="server">
            <HeaderTemplate>
                <table class="table table-striped table-hover table-bordered" id="editable-sample" >
                    <thead >
                        <tr>
                            <th>学生账号</th>
                            <th>学生姓名</th>
                     
                            <th>学生电话</th>
                             <th>学生邮箱</th>
                          
                        </tr>         
                    </thead> 
                     
            </HeaderTemplate>
            <ItemTemplate>
                     
                <asp:Panel ID="plItem" runat="server">
                    
                    <tr>
                        <td><asp:Label runat="server" ID="lblID" Text='<%#Eval("stuID") %>'></asp:Label></td>
                        <td><%#Eval("stuName") %></td>        
                        <td><%#Eval("stuPhone") %></td>
                        <td><%#Eval("stuEmail") %></td>
                </asp:Panel>
              
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

                </div>
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->

</asp:Content>

