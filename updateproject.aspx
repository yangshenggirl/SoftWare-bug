<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateproject.aspx.cs" Inherits="updateproject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script language="javascript" type="text/javascript">
// <!CDATA[


// ]]>
</script>
    <style type="text/css">
     
        body{
            background:url('bg1.jpg') no-repeat fixed;
            background-size:100% 100%;
            text-align:center;
        }
    </style>
</head>
<body style="height: 608px">
    <form id="form1" runat="server">
    <div>
        <table style="width: 334px; height: 359px; text-align: center;" id="TABLE1" align="center">
            <tr>
                <td align="right" class="auto-style1">
                    项目id:</td>
                <td align="left" class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" class="auto-style1">
                    项目名称：</td>
                <td align="left" class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 396px">
                    bug标题：</td>
                <td align="left" class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" class="auto-style3">
                    bug状态：</td>
                <td align="left" class="auto-style4">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="115px">
                        <asp:ListItem>打开</asp:ListItem>
                        <asp:ListItem>关闭</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" style="width: 396px">
                    严重程度：</td>
                <td align="left" class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="115px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" style="width: 396px">
                    处理人员：</td>
                <td align="left" class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="XmlDataSource1"
                        DataTextField="name" DataValueField="name" Width="111px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" style="width: 396px">
                    测试人员：</td>
                <td align="left" class="auto-style6">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="XmlDataSource2"
                        DataTextField="name" DataValueField="name" Width="111px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="取消" />&nbsp;
                    </td>
            </tr>
        </table>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/programmer.xml">
        </asp:XmlDataSource>
    
    </div>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/testperson.xml">
        </asp:XmlDataSource>
    </form>
</body>
</html>
