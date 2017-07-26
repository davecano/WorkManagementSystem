<%@ Page Title="" Language="C#" MasterPageFile="~/students/student.master" AutoEventWireup="true" CodeFile="Timeline.aspx.cs" Inherits="students_Timeline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <div class="timeline">
                        <article class="timeline-item alt">
                            <div class="text-right">
                                <div class="time-show first">
                                    <a href="#" class="btn btn-primary">2017年5月之前</a>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item alt">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow-alt"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">2017年4月28日</span>
                                        <h1 class="red">2017年4月28日</h1>
                                        <p>梳理网站系统并开始认真着手毕业论文的撰写</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item ">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">2017年4月27号</span>
                                        <h1 class="green">2017年4月27号</h1>
                                        <p>完成某些bug的修复 <a href="#">陈旋</a>：有些bug比如seesion值消失没有做判定由于嵌入到代码的各个角落太繁琐没有更正</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item alt">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow-alt"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">11:35 am</span>
                                        <h1 class="blue">2017年4月26号</h1>
                                        <p>将教师端的批阅功能完成，至此所有功能已经设计完成</p>
                                     <%--   <div class="album">
                                            <a href="#">
                                                <img alt="" src="images/gallery/sm-img-1.jpg">
                                            </a>
                                            <a href="#">
                                                <img alt="" src="images/gallery/sm-img-2.jpg">
                                            </a>
                                            <a href="#">
                                                <img alt="" src="images/gallery/sm-img-3.jpg">
                                            </a>
                                            <a href="#">
                                                <img alt="" src="images/gallery/sm-img-1.jpg">
                                            </a>
                                            <a href="#">
                                                <img alt="" src="images/gallery/sm-img-2.jpg">
                                            </a>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">3:20 pm</span>
                                        <h1 class="purple">2017年4月25日</h1>
                                        <p>已经完成了学生端功能的设计</p>
                                        <p>
                                            <i class=" fa fa-exclamation-sign"></i>至此还有教师端的批阅功能没有设计
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item alt">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow-alt"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">07:49 pm</span>
                                        <h1 class="light-green">2017年4月20号</h1>
                                        <p>已经完成了大部分教师端的功能，除了批阅功能没有做（因为学生端的提交作业功能没有做，所以此项功能延期）</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="timeline-item alt">
                            <div class="text-right">
                                <div class="time-show">
                                    <a href="#" class="btn btn-primary">2017年4月20号之前</a>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">2017年4月15号</span>
                                        <h1 class="yellow">下午两点</h1>
                                        <p>已经完成管理员子系统的设计，对<span><a href="#" class="yellow">  ajax </a></span> 进行初步使用，效果不佳</p>

                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item alt">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow-alt"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">2017年4月10号</span>
                                        <h1 class="">上午9点</h1>
                                        <p>建立数据库，完成数据库的表设计</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="timeline-item">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">07:49 pm</span>
                                        <h1 class="blue">2017年4月五号</h1>
                                        <p>实习结束返校做设计<span><a class="blue" href="#">三层架构搭建完成</a></span> 开始建立前端页面</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="timeline-item alt">
                            <div class="text-right">
                                <div class="time-show">
                                    <a href="#" class="btn btn-primary">2017年3月25日之前</a>
                                </div>
                            </div>
                        </article>

                        <article class="timeline-item alt">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow-alt"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">上午07:49 </span>
                                        <h1 class="">星期五</h1>
                                        <p>决定采用asp.net三层架构，搭建框架</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="timeline-item">
                            <div class="timeline-desk">
                                <div class="panel">
                                    <div class="panel-body">
                                        <span class="arrow"></span>
                                        <span class="timeline-icon"></span>
                                        <span class="timeline-date">上午</span>
                                        <h1 class="red">星期四</h1>
                                        <p>设计功能图表 <span><a class="red" href="#">学习bootstrap相关知识</a></span>寻找前台模板</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                    </div>
                </div>
            </div>

        </div>
</asp:Content>

