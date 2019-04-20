<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="PlanADate.Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Plan A Date | Survey Page</title>
    <style type="text/css">
        p{
            font-size: 2em;
            color: black;
            text-align: center;
            font-family: 'Times New Roman';
        }
        body{
            background-color: lightblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="align-content:center"> Welcome <asp:Label ID="lblWelcome" runat="server" Text='<%#Session["Username"]%>' Font-Underline="True" ViewStateMode="Enabled"></asp:Label>! </h1><br />
            <br />
            <p>
               Trying to figure out what to do, but have no idea of where to start? Well, you've come to the right site! Just select a category and in seconds, you'll have the perfect inspiration to plan a date for you and your guest. If nothing else, have a wonderful time and if you choose to drink or drive, please do each safely!
            </p>
            <div>

                <asp:DropDownList style="align-content:center; margin-left: 516px;" ID="ddlCategory" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" ForeColor="Blue" Height="53px" Width="112px" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Text="Select a category" Value="default">Select a category</asp:ListItem>
                    <asp:ListItem Value="a">Art</asp:ListItem>
                    <asp:ListItem Value="b">Sports</asp:ListItem>
                    <asp:ListItem Value="c">Concert</asp:ListItem>
                    <asp:ListItem Value="d">Food</asp:ListItem>
                    <asp:ListItem Value="e">Education</asp:ListItem>
                    <asp:ListItem Value="f">Networking</asp:ListItem>
                    <asp:ListItem Value="g">Games</asp:ListItem>
                    <asp:ListItem Value="h">Homebody</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Category]"></asp:SqlDataSource> 

            </div>
            <div>
                <br /><asp:Image ID="imgDisplay" runat="server" Height="208px" style="margin-left: 410px" Width="332px" AlternateText="event image" />
                <br />
            </div><br />
            <div>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="margin-left: 157px" Width="824px">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Cost], [City], [State], [ZipCode] FROM [Activity]"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
