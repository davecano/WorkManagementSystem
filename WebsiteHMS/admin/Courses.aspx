<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="AdminCourses" %>

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
                <li class="active">
                    基本信息
                </li>
                <li>
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
                    查看科目
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
                           增添教师
                        </button>--%>
                        <asp:LinkButton OnClick="Lbaddcourses_OnClick" ID="Lbaddcourses" CssClass="btn btn-primary" runat="server">添加课程 <i class="fa fa-plus"></i></asp:LinkButton>
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
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <asp:Repeater ID="RpCoursesEdit" runat="server">
                        <HeaderTemplate>
                           <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th>科目ID</th>
                    <th>科目名称</th>
                    <th>教师账号</th>
                    <th>教师姓名</th>
                    <th>所在学院</th>  
                    <th>所授班级</th>      
                    <th>查看详情</th>
                 
                </tr>
                </thead>   
                        <asp:Panel ID="Paneladd" Visible="False" runat="server">
                            <tr>
                                <td>
                                    <asp:Label ID="LbcID" CssClass=" form-control small" runat="server" ><i class="fa fa-ban"></asp:Label></td>
                                <td><asp:TextBox ID="TxtcName" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <%-- <td><asp:TextBox ID="TxtcTeaId" CssClass=" form-control small" runat="server"></asp:TextBox></td>--%>
                                  <td><asp:DropDownList ID="TxtcTeaId" OnSelectedIndexChanged="TxtcTeaId_OnSelectedIndexChanged" CssClass="form-control  m-bot15" AutoPostBack="True" runat="server" ></asp:DropDownList></td> 
                         
                                 <td><asp:TextBox ID="TxtcTea" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                        
                                <td><asp:TextBox ID="TxtcCollege" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtcClass" CssClass=" form-control small" runat="server"></asp:TextBox></td>                                                                
                                <td><asp:LinkButton ID="Lbsave" OnClick="Lbsave_OnClick"  OnClientClick='return confirm("确认添加吗？")' runat="server">确定</asp:LinkButton></td>
                            </tr>
                        </asp:Panel>                               
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                   <tr>
                    <td><asp:Label ID="LbteaID" runat="server" Text='<%#Eval("courseID") %>'></asp:Label></td>
                    <td><%#Eval("courseName") %></td>
                       <td><%#Eval("teacherID") %></td>
                    <td><%#Eval("teacherName") %></td>
                    <td><%#Eval("college")%></td>       
                      <td><%#Eval("class") %></td>          
                   <td> <asp:HyperLink ID="Hpviewcourses"  NavigateUrl='<%#"ViewCourses.aspx?courseid="+Eval("courseID")+"&coursename="+Eval("courseName")+"&teacherid="+Eval("teacherID")+"&teachername="+Eval("teacherName")+"&college="+Eval("college")+"&class="+Eval("class") %>' runat="server">编辑</asp:HyperLink></td>
                </tr>
                            </asp:Panel>
                          
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
     </ContentTemplate>              
                    </asp:UpdatePanel>
                </div>     
                       
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->

</asp:Content>

