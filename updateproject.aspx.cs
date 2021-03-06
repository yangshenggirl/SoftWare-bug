﻿using System;
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

public partial class updateproject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string oldid = this.Label1.Text;
        if (oldid != null && !"".Equals(oldid) && !"Label".Equals(oldid))
        {
            Button1_Click(sender, e);
        }
        string id = Request.QueryString["id"].ToString();
        //加载XML文件
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));

        //获取节点
        XmlNode xmlNode = xmldoc.SelectSingleNode("/bugfollow/project[@id='" + id + "']");
        //读取信息
        Label1.Text = xmlNode.Attributes["id"].Value.ToString();
        TextBox1.Text = xmlNode.Attributes["name"].Value.ToString();
        TextBox2.Text = xmlNode["bugTitle"].InnerText;
        DropDownList4.Text = xmlNode["bugState"].InnerText;
        DropDownList1.Text = xmlNode["degree"].InnerText;
        DropDownList2.Text = xmlNode["dealPerson"].InnerText;
        DropDownList3.Text = xmlNode["testPerson"].InnerText;

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string id = this.Label1.Text;
        string name = this.TextBox1.Text;
        string bugTitle = this.TextBox2.Text;
        string bugState = this.DropDownList4.Text;
        string degree = this.DropDownList1.Text;
        string dealPerson = this.DropDownList2.Text;
        string testPerson = this.DropDownList3.Text;

        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));

        XmlNode xmlNode = xmldoc.SelectSingleNode("/bugfollow/project[@id='" + id + "']");
        xmlNode.Attributes["name"].Value = name;
        xmlNode["bugTitle"].InnerText = bugTitle;
        xmlNode["bugState"].InnerText = bugState;
        xmlNode["degree"].InnerText = degree;
        xmlNode["dealPerson"].InnerText = dealPerson;
        xmlNode["testPerson"].InnerText = testPerson;

        xmldoc.Save(Server.MapPath("~/App_Data/bugfollow.xml"));
        //Response.Write("<script>alert('修改成功!')</script>");
        Response.Redirect("test.aspx?name=" + testPerson);
    }
    
}
