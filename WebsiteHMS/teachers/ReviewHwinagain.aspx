<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="ReviewHwinagain.aspx.cs" Inherits="teachers_ReviewHwinagain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		<!-- page heading start-->
		<div class="page-heading">
			<h3>
				批改作业
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
											<div class="title">课程ID</div>
											<div class="desk"><asp:Label ID="LbcID" runat="server" Text="label1"></asp:Label></div>
										</li>
										<li>
											<div class="title">课程名称</div>
											<div class="desk"><asp:Label ID="LbcName" runat="server" Text="Label"></asp:Label></div>
										</li>
									
										<li>
											<div class="title">所在学院</div>
											<div class="desk"><asp:Label ID="LacCollege" runat="server" Text="Label"></asp:Label></div>
										</li>
										<li>
											<div class="title">所授班级</div>
											<div class="desk"> <asp:Label ID="LbcClass" runat="server" Text="Label"></asp:Label></div>
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
				 批改作业
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
						<asp:Repeater ID="userRepeat" OnItemCommand="userRepeat_OnItemCommand"  runat="server">
			<HeaderTemplate>
				<table class="table table-striped table-hover table-bordered" id="editable-sample" >
					<thead >
						<tr>
						  
							<th>学生账号</th>
					 
							<th>学生姓名</th>
							 <th>作业备注</th>
							 <th>内容</th>
						
							  <th>评分</th>
						</tr>         
					</thead> 
					 
			</HeaderTemplate>
			<ItemTemplate>
					 
				<asp:Panel ID="plItem" runat="server">
					
					<tr>
						<td><%#Eval("stuID") %></td>     
						 <td><%#Eval("stuName") %></td>    
						<td>   
					 
							<a data-toggle="modal" href='#<%#Eval("subWorkID") %>'>
								查看
							</a>
						   <!-- Modal -->
							<div class="modal fade" id='<%#Eval("subWorkID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title">作业详情</h4>
										</div>
										

										<div class="modal-body">		
											<div class="form-horizontal ">
											
												<div class="panel-body">
			  
				   <ul class="p-info">
										<li>
											<div class="title">学生姓名</div>
											<div class="desk"><asp:Label ID="LbcID" runat="server" Text='<%#Eval("stuName") %>' ></asp:Label></div>
										</li>
										<li>
											<div class="title">备注</div>
											<div class="desk"><span><%#Eval("subntice") %></span></div>
										</li>
									
									
										<li>
											<div class="title">提交时间</div>
											<div class="desk"> <asp:Label ID="LbteaName" runat="server" Text='<%#Eval("subTime") %>'></asp:Label></div>
										</li>
								  
									  
									</ul>  
			  
			</div>
										</div></div>
							
										<div class="modal-footer">
											<button data-dismiss="modal" class="btn btn-primary" type="button">关闭</button>
										</div>
									</div>
								</div>
							</div>
							<!-- modal -->	
					
						</td>   
						<td>
							<asp:HyperLink ID="HyperLink2" runat="server" Text="下载"  NavigateUrl='<%#Eval("SubContent") %>' ></asp:HyperLink>

						</td> 
					 <td>
							<a data-toggle="modal" href='#a<%#Eval("subWorkID") %>'>
								编辑
							</a>
						   <!-- Modal -->
							<div class="modal fade" id='a<%#Eval("subWorkID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title">评语</h4>
										</div>
										

										<div class="modal-body">		
											<div class="form-horizontal ">
										
												<div class="panel-body">
			  
				   <ul class="p-info">
									<li>
											<div class="title">学生姓名</div>
											<div class="desk"><asp:Label ID="Label1" runat="server" Text='<%#Eval("stuName") %>' ></asp:Label></div>
										</li>
						<li>
											<div class="title">作业ID</div>
											<div class="desk"><asp:Label ID="LbID" runat="server" Text='<%#Eval("subWorkID") %>' ></asp:Label></div>
										</li>
					   <li>
											<div class="title">得分</div>
											<div class="desk">
												<asp:TextBox ID="Txtgrade" runat="server" TextMode="Number"  Text='<%#Eval("grade") %>' CssClass="form-control"></asp:TextBox>
												</div>
										</li>
										<li>
											<div class="title">评语</div>
											<div class="desk">
												<asp:TextBox ID="Txtmsg" runat="server" TextMode="MultiLine" Text='<%#Eval("evaluate") %>' CssClass="form-control"></asp:TextBox></div>
										</li>
									
								
									</ul>  
			  
			</div>
										</div></div>
							
										<div class="modal-footer">
											<asp:LinkButton ID="Lbsave" runat="server" CssClass="btn btn-success"  OnClientClick='return confirm("确定吗？")' CommandName="save" text="保存"></asp:LinkButton>
											<button data-dismiss="modal" class="btn btn-primary" type="button">关闭</button>
										</div>
									</div>
								</div>
							</div>
							<!-- modal -->	
					</td>
						
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

