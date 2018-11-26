<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateBugState.aspx.cs" Inherits="updateBugState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
        body{
            background:url(bg1.jpg);
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:100% 100%;   
        }
        .auto-style3 {
            width: 396px;
            height: 30px;
        }
        .auto-style4 {
            width: 368px;
            height: 30px;
        }
        .auto-style5 {
            width: 396px;
            height: 31px;
        }
        .auto-style6 {
            width: 368px;
            height: 31px;
        }
        .auto-style7 {
            width: 396px;
            height: 46px;
        }
        .auto-style8 {
            width: 368px;
            height: 46px;
        }
        .auto-style9 {
            width: 396px;
            height: 41px;
        }
        .auto-style10 {
            width: 368px;
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
        <table id="TABLE1" style="width: 334px; height: 359px;
            text-align: center" align="center" bgcolor="White" border="1">
            <tr>
                <td align="right" bgcolor="White" class="auto-style3">
                    项目id：</td>
                <td align="left" bgcolor="White" class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style3">
                    项目名称：</td>
                <td align="left" bgcolor="White" class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style9">
                    bug标题：</td>
                <td align="left" bgcolor="White" class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style7">
                    bug状态：</td>
                <td align="left" bgcolor="White" class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="83px">
                        <asp:ListItem>接受</asp:ListItem>
                        <asp:ListItem>处理</asp:ListItem>
                        <asp:ListItem>拒绝</asp:ListItem>
                        <asp:ListItem>未处理</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style5">
                    严重程度：</td>
                <td align="left" bgcolor="White" class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style3">
                    处理人员：</td>
                <td align="left" bgcolor="White" class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" bgcolor="White" class="auto-style3">
                    测试人员：</td>
                <td align="left" bgcolor="White" class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 16px" bgcolor="White">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
