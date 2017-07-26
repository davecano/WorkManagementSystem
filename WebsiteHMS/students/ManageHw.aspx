<%@ Page Title="" Language="C#" MasterPageFile="~/students/student.master" AutoEventWireup="true" CodeFile="ManageHw.aspx.cs" Inherits="students_ManageHw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                作业管理 <small>查看</small>
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">同学的优秀作品</a>
                </li>
                <li>
                    <a href="#">校优秀作品</a>
                </li>
                <li class="active">公告查看 </li>
            </ul>
        </div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
        <div class="row blog">
        <div class="col-md-4">
            <div class="panel">
                <div class="panel-body">
                    <input type="text" placeholder="搜索优秀作品（未做）" class="form-control blog-search">
                </div>
            </div>
            <div class="panel">
                <div class="panel-heading">
                    <h2>所有优秀作品集</h2>
                </div>
                <div class="panel-body">
                    <div class="blog-post">
                        
                        <h3>优秀作品</h3>
                          <asp:Repeater ID="Rpcontent2" runat="server">
              <ItemTemplate>
                      <div class="media">
                            <a href="javascript:;" class="pull-left">
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Width="20px" Height="20px"/>
                            </a>
                            <div class="media-body">
                                <h5 class="media-heading"><a href="javascript:;"><span class="active"><%#Eval("stuName") %>&nbsp;&nbsp;<span><%#Eval("subTime") %></a></h5>
                                <p>
                                    <%#Eval("subntice") %>
                                </p>
                              <%--  <asp:HyperLink ID="download" runat="server" Text="下载" CssClass="btn btn-default small" NavigateUrl='<%#Eval("SubContent") %>'></asp:HyperLink>--%>
                                <asp:LinkButton ID="LinkButton2" runat="server"  CommandName="downloadall" Text="下载" CssClass="btn btn-default small" PostBackUrl='<%#Eval("SubContent") %>'></asp:LinkButton>
                            </div>
                        </div>
              </ItemTemplate>
          </asp:Repeater>
                   
                    </div>
                </div>
            </div>
          <div class="panel">
                <div class="panel-heading">
                    <h2>分类课程同学作品集</h2>
                </div>
                <div class="panel-body">
                    <div class="blog-post">
                           <asp:Repeater ID="Rpcoursecontent" OnItemDataBound="Rpcoursecontent_OnItemDataBound"  runat="server"> 
                             <ItemTemplate>
                                <h3><%#Eval("courseName") %></h3>
                      
        
                                 <asp:Repeater ID="Rpinside"  runat="server">
                                     <ItemTemplate>
                                            <div class="media">
                            <a href="javascript:;" class="pull-left">
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Width="20px" Height="20px"/>
                            </a>
                            <div class="media-body">
                             
                                <h5 class="media-heading"><a href="javascript:;"><span class="active"><%#Eval("stuName") %>&nbsp;&nbsp;<span><%#Eval("subTime") %></a></h5>
                                <p>
                                    <%#Eval("subntice") %>
                                </p>
                               <%-- <asp:HyperLink ID="download" runat="server" Text="下载" CssClass="btn btn-default small" NavigateUrl='<%#Eval("SubContent") %>' ></asp:HyperLink>--%>
                                <asp:LinkButton ID="Download" runat="server" PostBackUrl='<%#Eval("SubContent") %>' CommandName="download" CssClass="btn btn-default small" Text="下载"></asp:LinkButton>
                            </div>
                        </div>
                                     </ItemTemplate>
                                 </asp:Repeater>
                              
              </ItemTemplate>
          </asp:Repeater>
                   
                    </div>
                </div>
            </div>
            
        </div>
        
        
        <div class="col-md-8">
            <div class="panel">
                <div class="panel-body">
               <h1 class="text-center mtop35"><a href="#">此处查看公告</a></h1>   
                  <asp:Repeater ID="Rpcontent" runat="server">
              <ItemTemplate>          
                      <p class="text-center auth-row">
                        作者 <a href="#">管理员:<%#Eval("author") %></a>   | <%#Eval("noticeDate") %> | <a href="#">全部内容</a>
                    </p>
                    <div class="blog-img-wide">
                      <h4><%#Eval("noticeName") %></h4>
                    </div>
                    <p><%#Eval("noticeContent")%> </p>
           
                
                 </ItemTemplate>
          </asp:Repeater>
           </div>      
            
        
        </div>

      
        </div>  

          
                    </div>  

        </div>
       
         <!--body wrapper end-->
</asp:Content>
