<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="updatePerson.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
        body{
            background:url(bg1.jpg);
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:100% 100%;   
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width: 290px; height: 157px" align="center" border="1">
            <tr>
                <td style="width: 83px">
                    员工id:</td>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 83px">
                    员工姓名：</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server"
                        Text="取消" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
