﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="advisor.aspx.cs" Inherits="advisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .td-center { text-align: center; }
.center-div { margin-left: auto; margin-right: auto; }
.l{ margin-bottom:100px;}
.text{margin-left:50px;}
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="margin:0px; padding:0px;">
   <div style="background-image: url('images/4.jpg'); margin-left:0px; padding:0px; position:fixed; background-position-x:0; z-index:-1; width:110%;height:110% ;background-size:cover; background-attachment:fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server" >
    
        <div class="center-div td-center" style=" text-align:center">
             <asp:TextBox ID="category" runat="server" Text=" Advisor" style="border:0px; font-size:40px; background-color:transparent;" CssClass="auto-style1" Height="47px" Width="157px"></asp:TextBox>
   <p> </p><p></p><br />
       <asp:Label  CssClass="label" ID="Label1" runat="server" Text=" Name"></asp:Label>
             <asp:TextBox CssClass="text" ID="name" runat="server"></asp:TextBox>
               <p></p>
            <asp:Label  CssClass="l" ID="Label2" runat="server" Text="Contact"></asp:Label>
           <asp:TextBox CssClass="text" ID="contact" runat="server" style="margin-left:40px" ></asp:TextBox>
           <p></p>
    <asp:Label  CssClass="" ID="Label3" runat="server" Text="Rank"></asp:Label>
           <asp:TextBox CssClass="text" ID="Rank" runat="server"></asp:TextBox>
    <p></p>
      <asp:Label  CssClass="" ID="Label4" runat="server" Text="Description"  style="padding-bottom:100px"></asp:Label>
           <asp:TextBox CssClass="text" ID="description" runat="server" Height="90px" Width="184px"></asp:TextBox>
   <p></p>
          <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><p></p>
       
           <h4>Do you want to add project?<a  href="Project.aspx" >Click Here</a>
            </h4>
            <p></p>
           <a  href="category.aspx" >GO BACK TO HOMEPAGE</a>
            <p></p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left:600px; background-color:whitesmoke;">
               </asp:GridView>
        </div>
   </form>
       </div>
</body>
</html>
