<%@ Page Title="" Language="C#" MasterPageFile="~/students/student.master" AutoEventWireup="true" CodeFile="Mycourses.aspx.cs" Inherits="students_Mycourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                课程查看
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
                    我的课程
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                        <a href="javascript:;" class="fa fa-times"></a>
                     </span>
                </header>
                <div class="panel-body">
                  
                            <div class="adv-table editable-table ">
                <div class="clearfix">
                    
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
                    <th>课程ID</th>
                    <th>课程名称</th>
                  
                    <th>教师账号</th>  
                    <th>教师姓名</th>      
                    <th>查看详情</th>
                 
                </tr>
                </thead>   
                                                
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                   <tr>
                    <td><asp:Label ID="LbteaID" runat="server" Text='<%#Eval("courseID") %>'></asp:Label></td>
                    <td><%#Eval("courseName") %></td>
              
                    <td><%#Eval("teacherID")%></td>       
                      <td><%#Eval("teacherName") %></td>          
                   <td> <asp:HyperLink ID="Hpviewcourses"  NavigateUrl='<%#"ViewStuCourses.aspx?courseid="+Eval("courseID")+"&coursename="+Eval("courseName")+"&teacherID="+Eval("teacherID")+"&teacherName="+Eval("teacherName") %>' runat="server">编辑</asp:HyperLink></td>
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

