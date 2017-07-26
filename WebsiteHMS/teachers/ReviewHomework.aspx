<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="ReviewHomework.aspx.cs" Inherits="teachers_ReviewHomework" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                作业批改
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
                  
                  
                </div>
           
                    <asp:Repeater ID="RpaddHw" runat="server">
                        <HeaderTemplate>
                           <table class="table table-striped table-hover table-bordered" id="editable-sample">
                <thead>
                <tr>
                    <th>科目ID</th>
                    <th>科目名称</th>
                  
                    <th>所在学院</th>  
                    <th>所授班级</th>      
                 
                      <th>批改</th>
                 
                </tr>
                </thead>   
                                                   
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="plItem" runat="server">
                   <tr>
                    <td><asp:Label ID="LbteaID" runat="server" Text='<%#Eval("courseID") %>'></asp:Label></td>
                    <td><%#Eval("courseName") %></td>
              
                    <td><%#Eval("college")%></td>       
                      <td><%#Eval("class") %></td>          
           
                               <td> <asp:HyperLink ID="HyperLink1"  NavigateUrl='<%#"ReviewHwin.aspx?courseid="+Eval("courseID")+"&coursename="+Eval("courseName")+"&college="+Eval("college")+"&class="+Eval("class") %>' runat="server">查看详情</asp:HyperLink></td>
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

