<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PlanADate.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Plan A Date | Login</title>
    <link href="Content/bootstrap.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        #Password1 {
            top: 331px;
            left: 574px;
            position: absolute;
            height: 33px;
            width: 243px;
        }
        h1 {
    /*margin: .67em 0;*/
    font-size: 8em;
    color: firebrick;
    text-align: center;
    height: 65px;
    font-family:'Blackadder ITC';
}
    </style>
</head>
<body style="background-image: url(images/datenight1.jpg)">
    <form id="form1" runat="server">
        
            <h1> Plan A Date!</h1>
                   
                 
             <div>
                <asp:Label ID="lblUserName" runat="server" style="top: 268px; left: 390px; position: absolute; height: 33px; width: 150px; bottom: 251px; right: 603px;" Text="Username:" BorderStyle="Ridge" Font-Size="X-Large" BackColor="White" Font-Bold="True"></asp:Label>
            </div>
          
            
        <div>
            <asp:TextBox ID="txtbUserName" runat="server" BackColor="#0099FF" BorderStyle="Solid" style="top: 270px; left: 576px; position: absolute; height: 33px; width: 243px" Font-Size="Large" ViewStateMode="Enabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username required*" ControlToValidate="txtbUserName" Display="Dynamic" ForeColor="White" style="top: 283px; left: 830px; position: absolute; height: 22px; width: 190px">Please enter your username</asp:RequiredFieldValidator>  
        </div>
            
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password:" BackColor="White" BorderStyle="Ridge" Font-Bold="True" Font-Size="X-Large" style="top: 331px; left: 388px; position: absolute; height: 33px; width: 150px"></asp:Label>
            </div>
        <div>
            <asp:TextBox ID="txtbPass" runat="server" type="password" placeholder="******" BackColor="#0099FF" BorderStyle="Solid" style="top: 331px; left: 574px; position: absolute; height: 34px; width: 243px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password required*" Display="Dynamic" ForeColor="White" style="top: 349px; left: 830px; position: absolute; height: 22px; width: 190px" ControlToValidate="txtbPass">Please enter your password</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#CCFFFF" Font-Bold="True" Font-Names="Gabriola" Font-Overline="False" Font-Size="X-Large" ForeColor="#0099FF" OnClick="btnLogin_Click" PostBackUrl="~/Survey.aspx" style="top: 424px; left: 633px; position: absolute; height: 55px; width: 142px" />

        </div>
            
            
            
    </form>
</body>
</html>
