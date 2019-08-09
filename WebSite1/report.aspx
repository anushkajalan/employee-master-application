<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID ="empgrid" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="empid" HeaderText="Employee id" />
                <asp:BoundField DataField="fname" HeaderText="First Name" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" />
                <asp:BoundField DataField="role" HeaderText="Designation" />
                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
