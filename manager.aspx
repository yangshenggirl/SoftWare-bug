<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
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
        <div style="width: 100%; height: 10%; background-color: #0099cc">
            <span style="font-size: 36pt; color: #ffffff; font-family: 华文彩云">缺陷跟踪管理系统&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="X-Large" OnClick="LinkButton2_Click">退出</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div>
        <div class="left" style="width: 20%; height: 850px; background-color: #99ccff">
            &nbsp;<asp:TreeView ID="TreeView1" runat="server" BorderColor="White" Font-Size="X-Large"
                ImageSet="Contacts" NodeIndent="10" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                Style="font-size: medium" Width="100%">
                <ParentNodeStyle Font-Bold="True" Font-Size="X-Large" ForeColor="#5555DD" />
                <HoverNodeStyle Font-Underline="False" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                <Nodes>
                    <asp:TreeNode Text="人事管理" Value="人事管理">
                        <asp:TreeNode Text="测试人员" Value="测试人员"></asp:TreeNode>
                        <asp:TreeNode Text="开发人员" Value="开发人员"></asp:TreeNode>
                        <asp:TreeNode Text="添加账户" Value="添加账户"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <RootNodeStyle Font-Size="X-Large" />
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                    NodeSpacing="0px" VerticalPadding="0px" />
                <LeafNodeStyle Font-Size="Large" />
            </asp:TreeView>
        </div>
        <div class="right" style="width: 80%; height: 850px; text-align: center">
            &nbsp;
            &nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp;<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="170px" Width="100%" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting1"  OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="员工id" />
                    <asp:BoundField DataField="name" HeaderText="员工姓名" />
                    <asp:ButtonField HeaderText="删除" Text="删除" CausesValidation="True" CommandName="delete" />
                    <asp:TemplateField HeaderText="修改" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="update"
                                Text="修改"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="Silver" />
                <HeaderStyle BackColor="#FFC0C0" />
            </asp:GridView>
            &nbsp;<br />
        </div>
        <br />
    </form>
</body>
</html>
