<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="StudentsManage.aspx.cs" Inherits="AdminStudentsManage" %>

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
                学生管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    查看学生信息
                </li>
                <li>
                  修改学生信息
                </li>
                <li>
                删除学生信息<%--active--%>
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
                    编辑学生表
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                     </span>
                </header>
                <div class="panel-body">
                <div class="adv-table editable-table ">
                <div class="clearfix">
                    <div class="btn-group">
                       <%-- <button id="editable-sample_new" class="btn btn-primary">
                           增添学生 <i class="fa fa-plus"></i>
                        </button>--%>
                        <asp:LinkButton ID="LbAdd" CssClass="btn btn-primary" runat="server" OnClick="LbAdd_Click">增添学生<i class="fa fa-plus"></i></asp:LinkButton>
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
                  <asp:Repeater ID="userRepeat" runat="server" OnItemCommand="userRepeat_ItemCommand" OnItemDataBound="userRepeat_ItemDataBound">
            <HeaderTemplate>
                <table class="table table-striped table-hover table-bordered" id="editable-sample" >
                    <thead >
                        <tr>
                            <th>学生账号</th>
                            <th>学生姓名</th>
                            <th>所在学院</th>
                            <th>所在班级</th>
                            <th>学生电话</th>
                             <th>学生邮箱</th>
                             <th>编辑</th>
                             <th>删除</th>
                        </tr>         
                    </thead> 
                      <asp:Panel ID="Paneladd" Visible="False" runat="server">
                            <tr>
                                <td><asp:TextBox ID="TxtStuID" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtStuName" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtStuCollege" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtStuClass" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtPhone" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtEmail" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:LinkButton ID="Lbcancel" OnClick="Lbcancel_OnClick" runat="server">取消</asp:LinkButton></td>
                                <td><asp:LinkButton ID="Lbsave" OnClick="Lbsave_OnClick" runat="server">确定</asp:LinkButton></td>
                            </tr>
                        </asp:Panel>
            </HeaderTemplate>
            <ItemTemplate>
                     
                <asp:Panel ID="plItem" runat="server">
                    
                    <tr>
                        <td><asp:Label runat="server" ID="lblID" Text='<%#Eval("stuID") %>'></asp:Label></td>
                        <td><%#Eval("stuName") %></td>
                        <td><%#Eval("college") %></td>
                        <td><%#Eval("class") %></td>
                        <td><%#Eval("stuPhone") %></td>
                        <td><%#Eval("stuEmail") %></td>

                        <td>
                            <asp:LinkButton ID="lbtEdit" CommandName="Edit" CommandArgument='<%#Eval("stuID") %>' runat="server">编辑</asp:LinkButton>  </td>
                        <td>
                            <asp:LinkButton ID="lbtDelete" OnClientClick="return  deleteuservalidate()" CommandName="Delete" CommandArgument='<%#Eval("stuID") %>' runat="server">删除</asp:LinkButton>
                        </td>
                    </tr>
                </asp:Panel>
                <asp:Panel ID="plEdit" runat="server">
                    <tr>
                        <td><asp:Label runat="server"  ID="Label1" Text='<%#Eval("stuID") %>'></asp:Label></td>
                        <td><asp:TextBox ID="txtName" CssClass="form-control small"  runat="server" Text='<%#Eval("stuName") %>'></asp:TextBox></td>
                         <td><asp:TextBox ID="txtCollege" CssClass="form-control small"  runat="server" Text='<%#Eval("college") %>'></asp:TextBox></td>
                         <td><asp:TextBox ID="txtClass" CssClass="form-control small"   runat="server" Text='<%#Eval("class") %>'></asp:TextBox></td>
                         <td><asp:TextBox ID="txtstuPhone" CssClass="form-control small"  runat="server" Text='<%#Eval("stuPhone") %>'></asp:TextBox></td>
                         <td><asp:TextBox ID="txtstuEmail" CssClass="form-control small"  runat="server" Text='<%#Eval("stuEmail") %>'></asp:TextBox></td>
                        <td>
                            <asp:LinkButton ID="lbtCancel" CommandName="Cancel" CommandArgument='<%#Eval("stuID") %>' runat="server">取消</asp:LinkButton>  </td>
                           <td> <asp:LinkButton ID="lbtUpdate" CommandName="Update" CommandArgument='<%#Eval("stuID") %>' runat="server">更新</asp:LinkButton>
                        </td>
                    </tr>
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

