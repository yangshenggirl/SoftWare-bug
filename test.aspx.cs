using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;
using System.Collections.Generic;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string testname = Request.QueryString["name"];
        Label3.Text = "欢迎，" + testname;

        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));
        //定义Xpath字符串
        string xpath = "/bugfollow/project";
        XmlNodeList nodeList = xmldoc.SelectNodes(xpath);

        List<bugfollow> bugList = new List<bugfollow>();
        foreach (XmlNode xmlNode in nodeList)
        {
            if (xmlNode["testPerson"].InnerText == testname)
            {
                bugfollow bug = new bugfollow();
                bug.Id = xmlNode.Attributes["id"].Value;
                bug.Name = xmlNode.Attributes["name"].Value;
                bug.BugTitle = xmlNode["bugTitle"].InnerText;
                bug.BugState = xmlNode["bugState"].InnerText;
                bug.Degree = xmlNode["degree"].InnerText;
                bug.DealPerson = xmlNode["dealPerson"].InnerText;
                bug.TestPerson = xmlNode["testPerson"].InnerText;
                bugList.Add(bug);
            }
        }
        if (bugList.Count == 0)
        {
            Label2.Visible = true;
            Label2.Text = "*没有记录";
        }
        GridView1.DataSource = bugList;
        GridView1.DataBind();
    }
    public String State
    {
        get
        {
            return (string)ViewState["State"];
        }
        set
        {
            ViewState["State"] = value;
        }
    }
   
    public void GridViewBind()
    {
        
        string testname = Request.QueryString["name"];
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));
        //定义Xpath字符串
        string xpath = "/bugfollow/project";
        XmlNodeList nodeList = xmldoc.SelectNodes(xpath);

        List<bugfollow> bugList = new List<bugfollow>();
        foreach (XmlNode xmlNode in nodeList)
        {
            if (xmlNode["testPerson"].InnerText == testname)
            {
                bugfollow bug = new bugfollow();
                bug.Id = xmlNode.Attributes["id"].Value;
                bug.Name = xmlNode.Attributes["name"].Value;
                bug.BugTitle = xmlNode["bugTitle"].InnerText;
                bug.BugState = xmlNode["bugState"].InnerText;
                bug.Degree = xmlNode["degree"].InnerText;
                bug.DealPerson = xmlNode["dealPerson"].InnerText;
                bug.TestPerson = xmlNode["testPerson"].InnerText;
              
                if (State == "bug状态" || State == bug.BugState)
                {
                    bugList.Add(bug);
                }
            }
        }
        if (bugList.Count == 0)
        {
            Label2.Visible = true;
            Label2.Text = "*没有记录";
        }
        GridView1.DataSource = bugList;
        GridView1.DataBind();
         
    }
    protected void selectById_Click(object sender, EventArgs e)
    {
        string testname = Request.QueryString["name"];
        string name = DropDownList1.Text;
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));

        string xpath = "bugfollow/project[@name='"+name+"']";
        XmlNodeList nodeList = xmldoc.SelectNodes(xpath);
        List<bugfollow> bugList = new List<bugfollow>();
        foreach(XmlNode xmlNode in nodeList)
        {
            if (xmlNode["testPerson"].InnerText == testname)
            {
                bugfollow bug = new bugfollow();
                bug.Id = xmlNode.Attributes["id"].Value;
                bug.Name = xmlNode.Attributes["name"].Value;
                bug.BugTitle = xmlNode["bugTitle"].InnerText;
                bug.BugState = xmlNode["bugState"].InnerText;
                bug.Degree = xmlNode["degree"].InnerText;
                bug.DealPerson = xmlNode["dealPerson"].InnerText;
                bug.TestPerson = xmlNode["testPerson"].InnerText;
                bugList.Add(bug);
            }
        }
        GridView1.DataSource = bugList;
        GridView1.DataBind();
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        State = TreeView1.SelectedNode.Text;
        Label2.Visible = false;
        GridViewBind();
    }
 
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));

        string id = GridView1.DataKeys[e.RowIndex]["id"].ToString();
        string xpath = "/bugfollow/project[@id='" + id + "']";

        XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);

        //找到节点的父节点移动该节点
        xmlNode.ParentNode.RemoveChild(xmlNode);
        //重新保存XML文件
        xmldoc.Save(Server.MapPath("~/App_Data/bugfollow.xml"));

        Response.Write("<script language=javascript>history.go(-2);</script>");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Response.Redirect("updateproject.aspx?id=" + GridView1.DataKeys[e.RowIndex]["id"].ToString());
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
