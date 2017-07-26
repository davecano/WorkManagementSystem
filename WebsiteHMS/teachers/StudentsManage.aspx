<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="StudentsManage.aspx.cs" Inherits="teachers_StudentsManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                    查看您的课程
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
           
                    <asp:Repeater ID="RpCoursesEdit" runat="server">
                        <HeaderTemplate>
                           <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th>科目ID</th>
                    <th>科目名称</th>
                  
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
              
                    <td><%#Eval("college")%></td>       
                      <td><%#Eval("class") %></td>          
                   <td> <asp:HyperLink ID="Hpviewcourses"  NavigateUrl='<%#"ViewCourses.aspx?courseid="+Eval("courseID")+"&coursename="+Eval("courseName")+"&college="+Eval("college")+"&class="+Eval("class") %>' runat="server">编辑</asp:HyperLink></td>
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

