<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href=”css/bootstrap.min.css” rel=”stylesheet”>
   <style> form{ 
margin: 50px auto; 
width:250px;
}</style>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
            <table>
                <div class="container">
            <tr>
                <td>
                    <asp:Label ID="Label1" class="mt-5 " runat="server" Text="USERNAME"></asp:Label>
                </td>
            
                <td>
                    <asp:Textbox ID="textbox1" class="mt-2 ml-2" runat="server"></asp:Textbox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" class="mt-2 " runat="server" Text="PASSWORD"></asp:Label>
                </td>
            
           
                <td>
                    <asp:Textbox ID="textbox2" class="mt-2 ml-2" runat="server" TextMode="Password"></asp:Textbox>
                </td>
            </tr>
            <tr>
                <td  column-span="2">
                    <asp:Button ID="btnlogin" class="btn btn-primary ml-5"  runat="server" Text="login" OnClick="btnlogin_Click"></asp:Button>
                    <%--<asp:Button ID="Button1" runat="server" Text="login" OnClick="btnlogin_Click"></asp:Button>--%>
                </td>
                 
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
                </div>
                </table>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
