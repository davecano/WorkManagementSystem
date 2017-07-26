<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Davecano.master" validaterequest="false"  AutoEventWireup="true" CodeFile="viewNotice.aspx.cs" Inherits="admin_viewNotice" %>

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
				公告编辑
			</h3>
			<ul class="breadcrumb">           
				 <li>
				修改公告
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
					编辑公告
					<span class="tools pull-right">
						<a href="javascript:;" class="fa fa-chevron-down"></a>
						<a href="javascript:;" class="fa fa-times"></a>
					 </span>
				</header>
				   <div class="panel-body">
			 <div class="form-horizontal adminex-form" >          
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">标题</label>
						<div class="col-sm-4">
						  <%--  <input type="text" class="form-control round-input">--%>
				 <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control round-input" ></asp:TextBox>
						</div>
					</div>
						  <div class="form-group">
									<div class="col-md-12">
										<textarea ID="txtContent" runat="server" class="wysihtml5 form-control" rows="9"></textarea>
									</div>
								</div>
				  <div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">作者</label>
						<div class="col-sm-2">
						  <%--  <input type="text" class="form-control">--%>
					  <asp:TextBox ID="Author"  class="form-control" runat="server"></asp:TextBox>
						</div>
					</div>
					 <div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">日期</label>
									<div class="col-md-4 col-xs-11">

										<div data-date-viewmode="years" data-date-format="yyyy-mm-dd" data-date="2017-4-14"  class="input-append date dpYears">
										   <%-- <input type="text" readonly="" ID="textDate"  value="2017-4-13" size="16"  class="form-control">--%>
					  <asp:TextBox ID="TxtDate" runat="server" readonly="" Text="2017-4-13" size="16" CssClass="form-control"></asp:TextBox>
														  <span class="input-group-btn add-on">
															<button class="btn btn-primary" type="button"><i class="fa fa-calendar"></i></button>
														  </span>

										</div>
										<span class="help-block">选择日期</span>
									</div>
								</div>
			   <%--     <span class="close">
				  <div class="btn-group">
					  
					 
					   
					</div>
						</span>--%>
				  <div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<%--<button class="btn btn-primary" type="submit">Submit</button>--%>
   
					  <asp:LinkButton ID="LbSubmit" OnClick="LbSubmit_OnClick" CssClass="btn btn-primary " runat="server"> 提交 <i class="fa fa-check-square-o"></i></asp:LinkButton>
									</div>
								</div>
				</div>
					   </div>
				</section>
				</div>
				</div>
		</div>
		<!--body wrapper end-->

</asp:Content>

