<%@ Page Title="" Language="C#" MasterPageFile="~/students/student.master" AutoEventWireup="true" validaterequest="false" CodeFile="subHomeworkmain.aspx.cs" Inherits="students_subHomeworkmain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
		<!-- page heading start-->
		<div class="page-heading">
			<h3>
				提交作业
			</h3>
			<ul class="breadcrumb">
				<li>
					基本信息
				</li>
				<li  class="active">
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
				基本信息
				<span class="tools pull-right">
					<a class="fa fa-chevron-down" href="javascript:;"></a>
					<a class="fa fa-times" href="javascript:;"></a>
				</span>
			</header>
			<div class="panel-body">
			  
				   <ul class="p-info">		
					   
										  <li>
											<div class="title">我的账号</div>
											<div class="desk"><asp:Label ID="LbstuID" runat="server" Text="Label"></asp:Label></div>
										</li>
										<li>
											<div class="title">我的姓名</div>
											<div class="desk"> <asp:Label ID="Lbname" runat="server" Text="Label"></asp:Label></div>
										</li>
										<li>
											<div class="title">我的课程</div>
											<div class="desk"><asp:Label ID="Lbcoursename" runat="server" Text="label1"></asp:Label></div>
										</li>		
									</ul>
		   
			 
		   
			  
			  
			</div>
		</section>
					 </div>
				 </div>
			 <div class="row">
				<div class="col-sm-12">
				<section class="panel">
				<header class="panel-heading">
					布置作业
					<span class="tools pull-right">
						<a href="javascript:;" class="fa fa-chevron-down"></a>
						<a href="javascript:;" class="fa fa-times"></a>
					 </span>
				</header>
				   <div class="panel-body">
			 <div class="form-horizontal adminex-form" > 
				   <div class="form-group">
									<div class="col-sm-4 col-sm-4 col-sm-offset-3 control-label">
							<span>我的的第</span>		
					<asp:Label ID="Lbtimes" runat="server" ></asp:Label>
										<span>次作业</span>
									</div>
								</div>
				  <div class="form-group">
								
										
									
								</div>         
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">标题</label>
						<div class="col-sm-4">
						  <%--  <input type="text" class="form-control round-input">--%>
				 <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control round-input" Enabled="False" ></asp:TextBox>
						</div>
					</div>
				 <div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">内容</label>
						<div class="col-sm-4">
						  <%--  <input type="text" class="form-control round-input">--%>
							<asp:FileUpload ID="FileUpload1" runat="server" />
						</div>
					</div>
						  <div class="form-group">
								<label class="col-sm-2 col-sm-2 control-label">备注</label>
									<div class="col-md-9">
										<textarea ID="txtRequire" runat="server" class="wysihtml5 form-control" rows="9"></textarea>
									</div>
								</div>
			<div class="form-group">
									<label class="control-label col-md-2">日期</label>
									<div class="col-md-4">
										<div class="input-group input-large custom-date-range" data-date="2017/4/19" name="from" data-date-format="yyyy-mm-dd">
									
										 <asp:TextBox ID="Txtdate" CssClass="form-control " runat="server" Enabled="False"></asp:TextBox>
									</div>
									</div>
								</div>
				  <div class="form-group">
									<div class="col-sm-2 col-sm-2 col-sm-offset-8 control-label">
									
   
					  <asp:LinkButton ID="LbSubmit" CssClass="btn btn-primary " OnClientClick='return  confirm("一旦提交将不可更改，确认提交嘛？")'  OnClick="LbSubmit_OnClick" runat="server"> 提交 <i class="fa fa-check-square-o"></i></asp:LinkButton>
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
