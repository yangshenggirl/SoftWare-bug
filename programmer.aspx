﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="programmer.aspx.cs" Inherits="programmer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .left{
            float:left;
            border-left:0px;
            border-top:10%;
        }
        .right{
            float:left;
            border-left:30%;
            border-top:10%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 100%; height: 106px; background-color: #0099cc">
            <span style="font-size: 36pt; color: #ffffff; font-family: 华文彩云; text-align: left;">
            <br />
            缺陷跟踪管理系统&nbsp;&nbsp; 
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Label" style="text-align: right"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" OnClick="LinkButton2_Click">退出</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></div>
    </div>
        <div class="left" style="width: 20%; height: 850px; background-color: #99ccff">
            &nbsp;<asp:TreeView ID="TreeView1" runat="server" BorderColor="White" Font-Size="X-Large"
                ImageSet="Faq" Style="font-size: medium"
                Width="100%" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                <Nodes>
                    <asp:TreeNode Text="bug状态" Value="bug状态">
                        <asp:TreeNode Text="接受" Value="接受"></asp:TreeNode>
                        <asp:TreeNode Text="处理" Value="处理"></asp:TreeNode>
                        <asp:TreeNode Text="未接受" Value="未接受"></asp:TreeNode>
                        <asp:TreeNode Text="未处理" Value="未处理"></asp:TreeNode>
                        <asp:TreeNode Text="关闭" Value="关闭"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="X-Large" ForeColor="DarkBlue" HorizontalPadding="5px"
                    NodeSpacing="0px" VerticalPadding="0px" />
                <LeafNodeStyle Font-Size="Large" />
            </asp:TreeView>
        </div>
        <div class="right" style="width: 80%; height: 850px; text-align: center">
            <br />
            <asp:Label ID="Label1" runat="server" Text="项目名称："></asp:Label>&nbsp;<asp:DropDownList
                ID="DropDownList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="name"
                DataValueField="name" Width="120px">
            </asp:DropDownList>
            <asp:Button ID="selectById" runat="server" Text="查询" OnClick="selectById_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label><br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                BackColor="#FFC0C0" BorderStyle="None" DataKeyNames="id" EnableModelValidation="True"
                OnRowCommand="GridView1_RowCommand" Width="100%" OnRowUpdating="GridView1_RowUpdating" Height="170px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="项目id" />
                    <asp:BoundField DataField="name" HeaderText="项目名称" />
                    <asp:BoundField DataField="bugTitle" HeaderText="bug标题" />
                    <asp:BoundField DataField="bugState" HeaderText="bug状态" />
                    <asp:BoundField DataField="degree" HeaderText="严重程度" />
                    <asp:BoundField DataField="dealPerson" HeaderText="处理人员" />
                    <asp:BoundField DataField="testPerson" HeaderText="测试人员" />
                    <asp:TemplateField HeaderText="更新">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="update"
                                Text="更新"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="#E0E0E0" />
                <SelectedRowStyle BackColor="#C0FFFF" />
                <AlternatingRowStyle BackColor="#E0E0E0" HorizontalAlign="Center" />
            </asp:GridView>
            &nbsp; &nbsp;&nbsp; &nbsp;
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/bugfollow.xml">
            </asp:XmlDataSource>
            &nbsp; &nbsp;&nbsp;</div>
    </form>
</body>
</html>
