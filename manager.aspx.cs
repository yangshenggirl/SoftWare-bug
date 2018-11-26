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

public partial class manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "欢迎，系统管理员";
    }
    public String ClassName
    {
        get
        {
            return (string)ViewState["className"];
        }
        set
        {
            ViewState["className"] = value;
        }
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        ClassName = TreeView1.SelectedNode.Text;
        if (ClassName == "测试人员" || ClassName == "开发人员")
        {
            GridViewBind();
        }
        if(ClassName == "添加账户")
        {
            Response.Redirect("addAccount.aspx");
        }
    }
    public void GridViewBind()
    {
        XmlDocument xmldoc = new XmlDocument();
       // xmldoc.Load(Server.MapPath("~/App_Data/testperson.xml"));
        //定义Xpath字符串
        string xpath = "";
        if (ClassName == "" || ClassName == "测试人员")
        {
            xmldoc.Load(Server.MapPath("~/App_Data/testperson.xml"));
            xpath = "/testPerson/test";
            XmlNodeList nodeList = xmldoc.SelectNodes(xpath);

            List<person> testList = new List<person>();
            foreach (XmlNode xmlNode in nodeList)
            {
                person person = new person();
                person.Id = xmlNode["id"].InnerText;
                person.Name = xmlNode.Attributes["name"].Value;
                testList.Add(person);

            }
            
            GridView1.DataSource = testList;
            GridView1.DataBind();

        }
        else
        {
            xmldoc.Load(Server.MapPath("~/App_Data/programmer.xml"));
            xpath = "/programmers/programmer";
            XmlNodeList nodeList = xmldoc.SelectNodes(xpath);
            List<person> programmerList = new List<person>();
            foreach (XmlNode xmlNode in nodeList)
            {
                person person1 = new person();//定义一个学员
                person1.Id = xmlNode["id"].InnerText;
                person1.Name = xmlNode.Attributes["name"].Value;
                programmerList.Add(person1);

            }
            
            GridView1.DataSource = programmerList;
            GridView1.DataBind();
        }
    }
  
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        if (ClassName == "测试人员")
        {
            xmldoc.Load(Server.MapPath("~/App_Data/testperson.xml"));

            string id = GridView1.DataKeys[e.RowIndex]["id"].ToString();
            string xpath = "/testPerson/test[id='" + id + "']";

            XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);

            //找到节点的父节点移动该节点
            xmlNode.ParentNode.RemoveChild(xmlNode);
            //重新保存XML文件
            xmldoc.Save(Server.MapPath("~/App_Data/testperson.xml"));
        }
        if (ClassName == "开发人员")
        {
            xmldoc.Load(Server.MapPath("~/App_Data/programmer.xml"));

            string id = GridView1.DataKeys[e.RowIndex]["id"].ToString();
            string xpath = "/programmers/programmer[id='" + id + "']";

            XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);

            //找到节点的父节点移动该节点
            xmlNode.ParentNode.RemoveChild(xmlNode);
            //重新保存XML文件
            xmldoc.Save(Server.MapPath("~/App_Data/programmer.xml"));
        }
        Response.Redirect("manager.aspx");
    }
    
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (ClassName == "测试人员" || ClassName == "开发人员")
        {
            Response.Redirect("updatePerson.aspx?id=" + GridView1.DataKeys[e.RowIndex]["id"].ToString() + "&update=" + ClassName);
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
