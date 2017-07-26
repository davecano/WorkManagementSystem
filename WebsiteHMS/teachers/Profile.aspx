<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="teachers_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="wrapper">

            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-pic text-center">
                                        <img alt="" src="../images/avatar-mini.jpg">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <ul class="p-info">
                                        <li>
                                            <div class="title">性别</div>
                                            <div class="desk">男</div>
                                        </li>
                                        <li>
                                            <div class="title">所属院校</div>
                                            <div class="desk">南京师范大学</div>
                                        </li>
                                        <li>
                                            <div class="title">学历</div>
                                            <div class="desk">本科</div>
                                        </li>
                                        <li>
                                            <div class="title">完成项目</div>
                                            <div class="desk">作业管理系统，爱打字门户网站</div>
                                        </li>
                                        <li>
                                            <div class="title">技能</div>
                                            <div class="desk">擅长教学，编程（.net,bootsrap）</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-desk">
                                        <h1>陈旋</h1>
                                        <span class="designation">来自南京师范大学教育技术系</span>
                                        <p>
                                          我在南京师范大学学习四年，掌握了许多教学知识，爱好编程，有过网站开发经验。
                                        </p>
                                        <a class="btn p-follow-btn pull-left" href="#"> <i class="fa fa-check"></i> 关注</a>

                                        <ul class="p-social-link pull-right">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-google-plus"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <form>
                                    <textarea class="form-control input-lg p-text-area" rows="2" placeholder="想对我说什么？"></textarea>
                                </form>
                                <footer class="panel-footer">
                                    <button class="btn btn-post pull-right">Post</button>
                                    <ul class="nav nav-pills p-option">
                                        <li>
                                            <a href="#"><i class="fa fa-user"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-camera"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa  fa-location-arrow"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-meh-o"></i></a>
                                        </li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                    </div>
                  
                </div>
            </div>

        </div>
</asp:Content>

