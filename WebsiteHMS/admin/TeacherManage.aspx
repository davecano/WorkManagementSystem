<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="TeacherManage.aspx.cs" Inherits="AdminTeacherManage" %>

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
                教师管理
            </h3>
            <ul class="breadcrumb">
                <li>
                    查看教师信息
                </li>
                <li>
                  修改教师信息
                </li>
                <li>
                删除教师信息<%--active--%>
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
                    编辑教师表
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
                        <asp:LinkButton ID="LbAdd"  cssclass="btn btn-primary" OnClick="LbAdd_OnClick" runat="server">增添教师 <i class="fa fa-plus"></i></asp:LinkButton>
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
                    <asp:Repeater ID="RpTeaEdit" runat="server" OnItemCommand="RpTeaEdit_ItemCommand" OnItemDataBound="RpTeaEdit_ItemDataBound">
                        <HeaderTemplate>
                           <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th>教师账号</th>
                    <th>教师姓名</th>
                    <th>教师职位</th>
                    <th>教师电话</th>
                    <th>教师邮箱</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
                </thead>  
                                  <asp:Panel ID="Paneladd" Visible="False" runat="server">
                            <tr>
                                <td><asp:TextBox ID="TxtTeaID" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtTeaName" CssClass=" form-control small" runat="server"></asp:TextBox></td>
                                <td><asp:TextBox ID="TxtPost" CssClass=" form-control small" runat="server"></asp:TextBox></td>
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
                    <td><asp:Label ID="LbteaID" runat="server" Text='<%#Eval("teacherID") %>'></asp:Label></td>
                    <td><%#Eval("teacherName") %></td>
                    <td><%#Eval("post") %></td>
                    <td><%#Eval("phone")%></td>
                    <td><%#Eval("email") %></td>
                   <td> <asp:LinkButton ID="lbtedit"   CommandName="edit"  CommandArgument='<%#Eval("teacherID") %>' runat="server">编辑</asp:LinkButton></td>
     <td><asp:LinkButton ID="lbtdelete" OnClientClick="return  deleteuservalidate()"  CommandName="delete" runat="server" CommandArgument='<%#Eval("teacherID") %>'>删除</asp:LinkButton></td>
                  
                </tr>
                            </asp:Panel>
                            <asp:Panel ID="plEdit" runat="server">
                           <tr >
                      <td>
                               <asp:Label ID="LbID2" runat="server" Text='<%#Eval("teacherID") %>'></asp:Label></td>
                               <td>
                                <asp:TextBox ID="Txtteaname" CssClass="form-control small" Text='<%#Eval("teacherName") %>' runat="server" ></asp:TextBox></td>  
                               <td>
                                <asp:TextBox ID="txtteapost" CssClass="form-control small"  Text='<%#Eval("post") %>' runat="server"></asp:TextBox></td>  
                               <td>
                                <asp:TextBox  Text='<%#Eval("phone") %>' CssClass="form-control small"   ID="txtteatel" runat="server"></asp:TextBox></td>  
                               <td>
                               <asp:TextBox ID="txtteaemail" Text='<%#Eval("email") %>' CssClass="form-control small"   runat="server"></asp:TextBox></td>  
                               <td>
                                <asp:LinkButton ID="lbtcancel"  CommandArgument='<%#Eval("teacherID") %>' CommandName="cancel" runat="server">取消</asp:LinkButton></td>  
                               <td>
                               <asp:LinkButton ID="lbtupdate" CommandArgument='<%#Eval("teacherID") %>' CommandName="save" runat="server">确定</asp:LinkButton></td>  
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

