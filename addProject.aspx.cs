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

public partial class addProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/bugfollow.xml"));

        XmlNode root = xmldoc.SelectSingleNode("/bugfollow");

        XmlElement project = xmldoc.CreateElement("project");
        project.SetAttribute("id", TextBox1.Text);
        project.SetAttribute("name", TextBox2.Text);

        XmlElement bugTitle = xmldoc.CreateElement("bugTitle");
        bugTitle.InnerText = TextBox3.Text;
        project.AppendChild(bugTitle);

        XmlElement bugState = xmldoc.CreateElement("bugState");
        bugState.InnerText = DropDownList1.Text;
        project.AppendChild(bugState);

        XmlElement degree = xmldoc.CreateElement("degree");
        degree.InnerText = DropDownList2.Text;
        project.AppendChild(degree);

        XmlElement dealPerson = xmldoc.CreateElement("dealPerson");
        dealPerson.InnerText = DropDownList3.Text;
        project.AppendChild(dealPerson);

        XmlElement testPerson = xmldoc.CreateElement("testPerson");
        testPerson.InnerText = DropDownList4.Text;
        project.AppendChild(testPerson);

        root.AppendChild(project);

        xmldoc.Save(Server.MapPath("~/App_Data/bugfollow.xml"));
        Response.Write("<script language=javascript>history.go(-2);</script>");
    }
}
