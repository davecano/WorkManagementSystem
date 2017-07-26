<%@ Page Title="" Language="C#" MasterPageFile="~/students/student.master" AutoEventWireup="true" CodeFile="StuSettings.aspx.cs" Inherits="students_StuSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <!-- page heading start-->
        <div class="page-heading">
            <h3>
                个人设置
            </h3>
            <ul class="breadcrumb">               
                 <li>
                学生姓名
                </li>
                <li>
             学生密码
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
                                            <div class="title">我的账号</div>
                                            <div class="desk"> <asp:Label ID="LbStuID" runat="server" Text='<%#Eval("stuID") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">我的姓名</div>
                                            <div class="desk"><asp:Label ID="LbStuName" runat="server"  Text='<%#Eval("stuName") %>' ></asp:Label></div>
              
                                        </li>
                                        <li>
                                            <div class="title">我的密码</div>
                                            <div class="desk"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("stuPwd") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">所属院系</div>
                                            <div class="desk"> <asp:Label ID="Label2" runat="server" Text='<%#Eval("college") %>'></asp:Label></div>
                                        </li>
                                         <li>
                                            <div class="title">所属班级</div>
                                            <div class="desk"> <asp:Label ID="Label5" runat="server" Text='<%#Eval("class") %>'></asp:Label></div>
                                        </li>
                                        <li>
                                            <div class="title">您的电话</div>
                                            <div class="desk"> <asp:Label ID="Label3" runat="server" Text='<%#Eval("stuPhone") %>'></asp:Label></div>
                                        </li>
                   <li>
                                            <div class="title">您的邮箱</div>
                                            <div class="desk"> <asp:Label ID="Label4" runat="server" Text='<%#Eval("stuEmail") %>'></asp:Label></div>
                                        </li>
                                    </ul> 
                                      
                         <div class="form-group">
                   
         <asp:LinkButton ID="Btnedit" CssClass="btn btn-primary small col-md-3 col-md-offset-7"  runat="server"  Text="修改"  CommandName="edit" CommandArgument='<%#Eval("stuID") %>'></asp:LinkButton>
         
         

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
                                            <div class="title">我的账号</div>
                                             <div class="desk"><asp:TextBox ID="TxtstuId" CssClass="form-control" Text='<%#Eval("stuID") %>' runat="server"></asp:TextBox> </div>
                                                <%-- <asp:Label ID="LbteaID" runat="server" Text='<%#Eval("teacherID") %>'></asp:Label></div>--%>
                                        </li>
                                        <li>
                                            <div class="title">我的姓名</div>
                                            <div class="desk">
                                          <asp:TextBox ID="TxtstuName" CssClass="form-control" Text='<%#Eval("stuName") %>' runat="server"></asp:TextBox></div>
                                                     
                                           
                                        </li>
                                        <li>
                                            <div class="title">我的新密码</div>
                                            <div class="desk"><asp:TextBox ID="TxtstuPwd" CssClass="form-control" Text='<%#Eval("stuPwd") %>' TextMode="Password" runat="server"></asp:TextBox> </div>
                                             
                                          
                                        </li>
                             
                                        <li>
                                            <div class="title">所属学院</div>
                                            <div class="desk"><asp:TextBox ID="Txtcollege" CssClass="form-control" Text='<%#Eval("college") %>' runat="server"></asp:TextBox> </div>
                                                <%-- <asp:Label ID="Label2" runat="server" Text='<%#Eval("post") %>'></asp:Label>--%>
                                           
                                        </li>
                                   
                                        <li>
                                            <div class="title">所在班级</div>
                                            <div class="desk"><asp:TextBox ID="Txtclass" CssClass="form-control" Text='<%#Eval("class") %>' runat="server"></asp:TextBox> </div>
                                                <%-- <asp:Label ID="Label2" runat="server" Text='<%#Eval("post") %>'></asp:Label>--%>
                                           
                                        </li>
                                        <li>
                                            <div class="title">我的电话</div>
                                            <div class="desk"><asp:TextBox ID="TxtPhone" CssClass="form-control" Text='<%#Eval("stuPhone") %>' runat="server"></asp:TextBox> </div>
                                              <%--   <asp:Label ID="Label3" runat="server" Text='<%#Eval("phone") %>'></asp:Label>--%>
                                      
                                        </li>
                   <li>
                                            <div class="title">我的邮箱</div>
                                            <div class="desk"><asp:TextBox ID="TxtEmail" CssClass="form-control" Text='<%#Eval("stuEmail") %>' runat="server"></asp:TextBox>   </div>
                                            <%--     <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>--%>
                                          
                                        </li>
                                    </ul> 
                         <div class="row">
                   
   <asp:LinkButton ID="Btnok" CssClass="btn btn-primary small col-md-3"  runat="server" Text="确定" CommandName="ok" OnClientClick='return  confirm("确认更新嘛？")' CommandArgument='<%#Eval("stuID") %>'></asp:LinkButton>
         
      <asp:LinkButton ID="Btncancel"  CssClass="btn btn-default small col-md-3 col-md-offset-3"  runat="server"  Text="取消" CommandName="cancel" CommandArgument='<%#Eval("stuID") %>'></asp:LinkButton>         
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

