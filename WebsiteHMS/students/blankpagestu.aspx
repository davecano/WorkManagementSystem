<%@ Page Title="" Language="C#" MasterPageFile="student.master" AutoEventWireup="true" CodeFile="blankpagestu.aspx.cs" Inherits="StudentsBlankpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page heading start-->
        <div class="page-heading">
            Page Tittle goes here
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <h2>欢迎小学生<asp:Literal ID="Literalstu" runat="server"></asp:Literal>
            </h2>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <!--body wrapper end-->
</asp:Content>

