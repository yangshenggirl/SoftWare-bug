<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
        body{
            background:url(bg.jpg);
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:100% 100%;   
        }
        .auto-style1 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br/><br/><br/><br/><br/><br/><br/>
    <div>
        <table style="width: 352px; height: 231px; background-color: white;" border="1" cellpadding="1" align="center">
            <tr>
                <td colspan="3" style="text-align: center; height: 26px; background-color: #ffccff;" align="center">
                    <span style="font-size: 16pt">登&nbsp; 录</span></td>
            </tr>
            <tr>
                <td style="width: 69px; height: 19px; text-align: right" align="center">
                    用户名：</td>
                <td colspan="2" style="height: 19px; width: 225px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 69px; text-align: right; height: 22px;" align="center">
                    密码：</td>
                <td colspan="2" style="width: 225px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="154px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 69px; text-align: right; height: 29px;" align="center">
                    角色：</td>
                <td colspan="2" style="width: 225px; height: 29px;">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="151px">
                        <asp:ListItem>测试人员</asp:ListItem>
                        <asp:ListItem>开发人员</asp:ListItem>
                        <asp:ListItem>管理人员</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="text-align: right; background-color: #ffffff;" colspan="3" align="center" class="auto-style1">
                    <asp:Button ID="login" runat="server" Text="登录" OnClick="login_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消" />&nbsp;
                </td>
            </tr>
        </table>
        
    </div>
        &nbsp;&nbsp;
    </form>
</body>
</html>
