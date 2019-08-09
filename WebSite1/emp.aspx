<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emp.aspx.cs" Inherits="emp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href=”css/bootstrap.min.css” rel=”stylesheet”>
    <meta charset=”utf-8″>
<meta http-equiv=”X-UA-Compatible” content=”IE=edge”>
<meta name=”viewport” content=”width=device-width, initial-scale=1″>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
   <link rel="stylesheet" href="/css/main.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
   <style type="text/css">
      .text1{
  margin-right: 150px;
  margin-left: 50px;
      }
   </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">HRM</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link " href="form1.aspx">Home<span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="emp.aspx">Edit Employee</a>
      <a class="nav-item nav-link" href="report.aspx">Report</a>
     
    </div>
  </div>
</nav>
    <div class="container">
    <form id="form1" runat="server">
 
              <div class="container">
        <p>
        <span class="border border-primary col-form-label pl-1 mt-4"><asp:Label ID="Label5" Font-Bold="True" runat="server" Font-Names="Verdana" Height="30px" Text="EMPLOYEE ID" Width="140px"></asp:Label></span> 

            <asp:TextBox ID="TextBox7" runat="server" CssClass="text1 mt-4"></asp:TextBox>
        </p>
        <p>
            <span class="border border-primary col-form-label pl-1"><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Height="30px" Text="FIRST NAME" Width="140px" ></asp:Label></span> 
         
            <asp:TextBox ID="TextBox4" runat="server" CssClass="text1"></asp:TextBox>
</p>
        <p>
            <span class="border border-primary col-form-label pl-1"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Height="30px" Text="LAST NAME" Width="140px"></asp:Label></span> 

            <asp:TextBox ID="TextBox6" runat="server" CssClass="text1"></asp:TextBox>
        </p>
        <p>
    
          
           <span class="border border-primary col-form-label pl-1"> <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Height="30px" Text="ROLE" Width="140px" ></asp:Label></span> 
<asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="186px" CssClass="text1">
                <asp:ListItem>Manager </asp:ListItem>
                <asp:ListItem>Accountant</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
        
            <span class="border border-primary col-form-label pl-1"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Height="30px" Text="DOB" Width="140px" ></asp:Label></span> 
 <span class="text1"><input type="text" id="datepicker" runat="server" CssClass="text1"></span></p>
        <p>

            <asp:Label ID="Label6" runat="server" Text="ADDED!"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="ADD" Font-Bold="True" OnClick="Button1_Click" Width="88px" />

            <asp:Button ID="Button2" runat="server" class="btn btn-primary ml-5 " Text="EDIT" Font-Bold="True" OnClick="Button2_Click" Width="88px" />

            <asp:Button ID="Button3" runat="server" class="btn btn-primary ml-5" Text="DELETE" Font-Bold="True" Width="91px" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" class="btn btn-primary ml-5" Text="RECORDS" Font-Bold="True" Width="91px" OnClick="Button4_Click"/>
              </div>
            </p>
        <p>
             
        </p>
     
    </form>
<script src=”js/jquery-3.3.1.min.js”></script>
<script src=”js/popper.min.js”></script>
<script src=”js/bootstrap.min.js”></script>
</body>
</html>



"Emplyed $(email)