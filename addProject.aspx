<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addProject.aspx.cs" Inherits="addProject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
        body{
            background:url('bg1.jpg') no-repeat fixed;
            background-size:100% 100%;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 98%; height: 2%; background-color: silver; text-align: left;">
            <span style="font-size: 14pt; vertical-align: bottom; font-family: 华文行楷; background-color: silver;">创建新事务</span></div>
    
    </div>
         <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br/>
        <div style="border-width: thin; width: 1186px; height: 422px; " align="center">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="width: 488px; height: 449px" align="center" border="1">
                <tr>
                    <td style="width: 396px; height: 9px;" align="right">
                        项目id:</td>
                    <td style="height: 9px; width: 368px;" align="left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 396px; height: 16px;" align="right">
                        项目名称：</td>
                    <td style="height: 16px; width: 368px;" align="left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 396px" align="right">
                        bug标题：</td>
                    <td align="left" style="width: 368px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 396px" align="right">
                        bug状态：</td>
                    <td align="left" style="width: 368px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="115px">
                            <asp:ListItem>打开</asp:ListItem>
                            <asp:ListItem>关闭</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 396px" align="right">
                        严重程度：</td>
                    <td align="left" style="width: 368px">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="115px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 396px" align="right">
                        处理人员：</td>
                    <td align="left" style="width: 368px">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="XmlDataSource1"
                            DataTextField="name" DataValueField="name" Width="111px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right" style="width: 396px">
                        测试人员：</td>
                    <td align="left" style="width: 368px">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="XmlDataSource2"
                            DataTextField="name" DataValueField="name" Width="111px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="height: 16px">
                        <asp:Button ID="add" runat="server" Text="提交" OnClick="add_Click" />&nbsp;
                        <asp:Button ID="Button2" runat="server"
                            Text="取消" /></td>
                </tr>
            </table>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/programmer.xml">
            </asp:XmlDataSource>
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/testperson.xml">
            </asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
