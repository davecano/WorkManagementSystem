<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="admin_notice" %>

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
                公告管理
            </h3>
            <ul class="breadcrumb">
                <li class="active">
                 查看公告
                </li>
                 <li>
                编辑公告
                </li>
                <li>
                发布公告
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
                    点击查看公告
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
                        <asp:HyperLink ID="Hpaddnotice" CssClass="btn btn-primary " NavigateUrl="viewNotice.aspx" runat="server"> 添加公告 <i class="fa fa-plus"></i></asp:HyperLink>
                       
                    </div>
           
                </div></br>
            <%--        repeater--%>
                     <div class="panel-group " id="accordion2">
                          <asp:Repeater ID="RptNotice" runat="server">
                              <ItemTemplate><div class="panel">
                            <div class="panel-heading dark">                      
                                <h4 class="panel-title">
                           <div class="row">
                               <div class="col-lg-10 col-sm-8 col-xs-6">
                                     <asp:HyperLink ID="hptitle" CssClass="accordion-toggle" NavigateUrl='<%#"#"+Eval("noticeID") %>' runat="server"  data-toggle="collapse" data-parent="#accordion2" Text='<%#Eval("noticeName") %>'></asp:HyperLink>
                               </div>
                               <div class="col-lg-1 col-sm-2 col-xs-3"> <asp:HyperLink ID="hpeditNotice" cssclass="btn btn-success" NavigateUrl='<%#"viewNotice.aspx?NoticeID="+Eval("noticeID")%>'  Text="编辑" runat="server"></asp:HyperLink>    </div>
                               <div class="col-lg-1 col-sm-2 col-xs-3"> <asp:LinkButton ID="lbdeleteNotice" cssclass="btn btn-danger" OnClientClick='return confirm("确认删除吗？")' OnClick="lbdeleteNotice_OnClick" CommandArgument='<%#Eval("noticeID") %>' Text="删除" runat="server"></asp:LinkButton>   </div>
                           </div>
                                
                                    
                                                            
                                         
                       <%--  <asp:LinkButton ID="Lbeditnotice"  cssclass="btn btn-default small"  runat="server">编辑</asp:LinkButton>--%>
                          
                                       
                                </h4>
                            </div>
                            <div id='<%#Eval("noticeID") %>' class="panel-collapse collapse in">
                                <div class="panel-body">
                       <%--      <asp:Label ID="Lbcontent" runat="server" Text='<%#Eval("noticeContent") %>'></asp:Label>--%>
                                     <%#Eval("noticeContent") %>
                                </div>
                            </div>
                        </div></ItemTemplate>
                          </asp:Repeater>
                     
                    </div>
                </div>
                     
                </div>
                </section>
                </div>
                </div>
        </div>
        <!--body wrapper end-->

</asp:Content>

