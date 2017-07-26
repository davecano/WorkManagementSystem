<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="ReviewHwin.aspx.cs" Inherits="teachers_ReviewHwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
		<!-- page heading start-->
		<div class="page-heading">
			<h3>
				您的课程信息
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
					布置作业
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
						<asp:Repeater ID="userRepeat" runat="server">
			<HeaderTemplate>
				<table class="table table-striped table-hover table-bordered" id="editable-sample" >
					<thead >
						<tr>
						  
							<th>作业次数</th>
					 
							<th>作业名称</th>
							 <th>查看详情</th>
						
							<th>提交学生名单</th>
							 <th>编辑</th>
							
						</tr>         
					</thead> 
					 
			</HeaderTemplate>
			<ItemTemplate>
					 
				<asp:Panel ID="plItem" runat="server">
					
					<tr>
						<td><%#Eval("Times") %></td>     
						 <td><%#Eval("workTitle") %></td>    
						<td>   
					 
							<a data-toggle="modal" href='#<%#Eval("workID") %>'>
								查看
							</a>
						   <!-- Modal -->
							<div class="modal fade" id='<%#Eval("workID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title">作业详情</h4>
										</div>
										

										<div class="modal-body">		
											<div class="form-horizontal ">
												<div class="panel-heading">
													<h4>第<span><%#Eval("Times") %>次作业</span></h4>
													</div>
												<div class="panel-body">
			  
				   <ul class="p-info">
										<li>
											<div class="title">标题</div>
											<div class="desk"><asp:Label ID="LbcID" runat="server" Text='<%#Eval("workTitle") %>' ></asp:Label></div>
										</li>
										<li>
											<div class="title">要求</div>
											<div class="desk"><span><%#Eval("requirement") %></span></div>
										</li>
									
										<li>
											<div class="title">发布时间</div>
											<div class="desk"><asp:Label ID="LbteaID" runat="server"  Text='<%#Eval("PublishTime") %>'></asp:Label></div>
										</li>
										<li>
											<div class="title">截止时间</div>
											<div class="desk"> <asp:Label ID="LbteaName" runat="server" Text='<%#Eval("CloseTime") %>'></asp:Label></div>
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
						
						  <td><%#Eval("daipigai") %></td>  
						  <td>
							<asp:HyperLink ID="Hlsubhw" runat="server" Text="批改" NavigateUrl='<%#"ReviewHwinagain.aspx?workId="+Eval("workID")+"&courseID="+LbcID.Text+"&courseName="+ LbcName.Text+"&college="+ LacCollege.Text+"&class="+ LbcClass.Text %>'></asp:HyperLink></td>

						
		 
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

