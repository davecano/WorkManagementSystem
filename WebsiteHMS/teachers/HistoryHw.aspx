<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="HistoryHw.aspx.cs" Inherits="teachers_HistoryHw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
		<!-- page heading start-->
		<div class="page-heading">
			<h3>
				查看作业信息信息
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
					查看历史作业
					<span class="tools pull-right">
						<a href="javascript:;" class="fa fa-chevron-down"></a>
						<a href="javascript:;" class="fa fa-times"></a>
					 </span>
				</header>
				<div class="panel-body">
				  
							<div class="adv-table editable-table ">
				<div class="clearfix">
				  
				  
				</div>
		   
					<asp:Repeater ID="RpaddHw" runat="server">
						<HeaderTemplate>
						   <table class="table table-striped table-hover table-bordered" id="editable-sample">
				<thead>
				<tr>
					<th>作业次数</th>
					<th>作业名称</th>     
					<th>发布时间</th>  
					<th>截止时间</th>      
					<th>下载列表</th>
					 <th>编辑修改</th>
				 
				</tr>
				</thead>   
												   
						</HeaderTemplate>
						<ItemTemplate>
							<asp:Panel ID="plItem" runat="server">
				   <tr>
					<td><asp:Label ID="LbteaID" runat="server" Text='<%#Eval("Times") %>'></asp:Label></td>
					<td><%#Eval("workTitle") %></td>
			  
					<td><%#Eval("PublishTime")%></td>       
					  <td><%#Eval("CloseTime") %></td>          
				   <td> <asp:HyperLink ID="Hpviewcourses"  NavigateUrl='<%#Eval("workContent") %>' Target="_blank"  runat="server">下载</asp:HyperLink></td>
				  <td> <asp:HyperLink ID="HpHwEdit"  NavigateUrl='<%#"ViewAddHw.aspx?courseid="+Eval("courseID")+"&coursename="+Eval("courseName")+"&college="+Eval("college")+"&class="+Eval("class")+"&Times="+Eval("Times") %>' runat="server">编辑</asp:HyperLink></td>
				</tr>
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

