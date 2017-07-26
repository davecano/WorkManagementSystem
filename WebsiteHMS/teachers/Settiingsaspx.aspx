<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="Settiingsaspx.aspx.cs" Inherits="teachers_Settiingsaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <!-- page heading start-->
        <div class="page-heading">
            <h3>
                教师设置
            </h3>
            <ul class="breadcrumb">               
                 <li>
                教师姓名
                </li>
                <li>
             教师密码
                </li>
            
            </ul>
        </div>
        <!-- page heading end-->
    
       <div class="wrapper">
            
           <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           修改个人信息
                        </header>
                    <div class="row">
                <div class="col-md-5 col-md-offset-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-pic text-center">
                                        <asp:Image ID="ImgPhoto" runat="server" />
                                    <%--    <img alt="" src="../images/photos/user1.png">--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                                <div class="panel-body dark">
                        <div class="col-md-12">
            
                  
                        <asp:Repeater ID="Repeateritem" OnItemCommand="Repeateritem_OnItemCommand" OnItemDataBound="Repeateritem_OnItemDataBound" runat="server">
                            <ItemTemplate>
                    <asp:Panel ID="Plitem"  CssClass="panel" runat="server" >
                            <ul class="p-info">
                                        <li>
                                            <div class="title">您的账号</div>
                                            <div class="desk"> <asp:Label ID="LbteaID" runat="server" Text='<%#Eval("teacherID") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">您的姓名</div>
                                            <div class="desk"><asp:Label ID="LbteaName" runat="server"  Text='<%#Eval("teacherName") %>' ></asp:Label></div>
              
                                        </li>
                                        <li>
                                            <div class="title">您的密码</div>
                                            <div class="desk"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("teacherPwd") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">您的职位</div>
                                            <div class="desk"> <asp:Label ID="Label2" runat="server" Text='<%#Eval("post") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">您的电话</div>
                                            <div class="desk"> <asp:Label ID="Label3" runat="server" Text='<%#Eval("phone") %>'></asp:Label></div>
                                        </li>
                   <li>
                                            <div class="title">您的邮箱</div>
                                            <div class="desk"> <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label></div>
                                        </li>
                                    </ul> 
                                      
                         <div class="form-group">
                   
         <asp:LinkButton ID="Btnedit" CssClass="btn btn-primary small col-md-3 col-md-offset-7"  runat="server"  Text="修改"  CommandName="edit" CommandArgument='<%#Eval("teacherID") %>'></asp:LinkButton>
         
         

</div>
                                           </asp:Panel>  
                     <asp:Panel ID="Pledit" runat="server">
                               <ul class="p-info">
                                   <li>
                                            <div class="title">选择图片</div>
                                             <div class="desk"></div>
                                       <asp:FileUpload ID="fupload" runat="server" />
                                        </li>
                                        <li>
                                            <div class="title">您的账号</div>
                                             <div class="desk"><asp:TextBox ID="TxtteaId" CssClass="form-control" Text='<%#Eval("teacherID") %>' runat="server"></asp:TextBox> </div>
                                                <%-- <asp:Label ID="LbteaID" runat="server" Text='<%#Eval("teacherID") %>'></asp:Label></div>--%>
                                        </li>
                                        <li>
                                            <div class="title">您的姓名</div>
                                            <div class="desk">
                                          <asp:TextBox ID="TxtteaName" CssClass="form-control" Text='<%#Eval("teacherName") %>' runat="server"></asp:TextBox></div>
                                                     
                                           
                                        </li>
                                        <li>
                                            <div class="title">您的密码</div>
                                            <div class="desk"><asp:TextBox ID="TxtteaPwd" CssClass="form-control" Text='<%#Eval("teacherPwd") %>' TextMode="Password" runat="server"></asp:TextBox> </div>
                                             
                                          
                                        </li>
                             
                                        <li>
                                            <div class="title">您的职位</div>
                                            <div class="desk"><asp:TextBox ID="TxtPost" CssClass="form-control" Text='<%#Eval("post") %>' runat="server"></asp:TextBox> </div>
                                                <%-- <asp:Label ID="Label2" runat="server" Text='<%#Eval("post") %>'></asp:Label>--%>
                                           
                                        </li>
                                        <li>
                                            <div class="title">您的电话</div>
                                            <div class="desk"><asp:TextBox ID="TxtPhone" CssClass="form-control" Text='<%#Eval("phone") %>' runat="server"></asp:TextBox> </div>
                                              <%--   <asp:Label ID="Label3" runat="server" Text='<%#Eval("phone") %>'></asp:Label>--%>
                                      
                                        </li>
                   <li>
                                            <div class="title">您的邮箱</div>
                                            <div class="desk"><asp:TextBox ID="TxtEmail" CssClass="form-control" Text='<%#Eval("email") %>' runat="server"></asp:TextBox>   </div>
                                            <%--     <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>--%>
                                          
                                        </li>
                                    </ul> 
                         <div class="row">
                   
   <asp:LinkButton ID="Btnok" CssClass="btn btn-primary small col-md-3"  runat="server" Text="确定" CommandName="ok" OnClientClick='return  confirm("确认更新嘛？")' CommandArgument='<%#Eval("teacherID") %>'></asp:LinkButton>
         
      <asp:LinkButton ID="Btncancel"  CssClass="btn btn-default small col-md-3 col-md-offset-3"  runat="server"  Text="取消" CommandName="cancel" CommandArgument='<%#Eval("teacherID") %>'></asp:LinkButton>         
    <%-- <asp:Button ID="Btncancel" CssClass="btn btn-default small col-md-3 col-md-offset-3" runat="server" Text="取消" Visible="False"/> --%>
</div>
           </asp:Panel>
                                

                            </ItemTemplate>
                        </asp:Repeater>
                              
                              
        
              
             
           
        
                
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

