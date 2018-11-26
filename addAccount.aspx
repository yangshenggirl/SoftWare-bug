<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addAccount.aspx.cs" Inherits="addAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        body{
            background:url('bg1.jpg') no-repeat fixed;
            background-size:100% 100%;
            text-align:center;
        }
    </style>
</head>
<body>
     
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <div style="width: 100&; height: 389px">
  
        <table style="width: 39%; height: 380px;">
            <tr>
                <td class="auto-style2" style="text-align: right">用户名：</td>
                <td class="auto-style1" style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style3">密码：</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style3">确认密码：</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style3">角色：</td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="127px">
                        <asp:ListItem>测试人员</asp:ListItem>
                        <asp:ListItem>开发人员</asp:ListItem>
                        <asp:ListItem>管理人员</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="提交" />&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="取消" />
                </td>
            </tr>
        </table>
    
    </div>
        <br>
    </form>
</body>
</html>
