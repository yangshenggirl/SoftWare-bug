using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string oldid = this.TextBox1.Text;
        if (oldid != null && !"".Equals(oldid) && !"TextBox1".Equals(oldid))
        {
            Button1_Click(sender, e);
        }
        string update = Request.QueryString["update"].ToString();
        string id = Request.QueryString["id"].ToString();
        XmlDocument xmldoc = new XmlDocument();
        if (update == "测试人员")
        {
            //XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(Server.MapPath("~/App_Data/testperson.xml"));

            //获取节点
            XmlNode xmlNode = xmldoc.SelectSingleNode("/testPerson/test[id='" + id + "']");
            //读取信息
            Label1.Text = xmlNode["id"].InnerText;
            TextBox1.Text = xmlNode.Attributes["name"].Value.ToString();
        }
        else 
        {
            xmldoc.Load(Server.MapPath("~/App_Data/programmer.xml"));

            //获取节点
            XmlNode xmlNode = xmldoc.SelectSingleNode("/programmers/programmer[id='" + id + "']");
            //读取信息
            Label1.Text  = xmlNode["id"].InnerText;
            TextBox1.Text = xmlNode.Attributes["name"].Value.ToString();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string update = Request.QueryString["update"].ToString();
        string id = Label1.Text;
        string name = TextBox1.Text;

        XmlDocument xmldoc = new XmlDocument();
        if (update == "测试人员")
        {
            //XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(Server.MapPath("~/App_Data/testperson.xml"));

            XmlNode xmlNode = xmldoc.SelectSingleNode("/testPerson/test[id='" + id + "']");
            xmlNode["id"].InnerText = id;
            xmlNode.Attributes["name"].Value = name;
            xmldoc.Save(Server.MapPath("~/App_Data/testperson.xml"));
          //  Response.Write("<script type='javascript'>alert('修改成功！');</script>");
        }
        else 
        {
            //XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(Server.MapPath("~/App_Data/programmer.xml"));

            XmlNode xmlNode = xmldoc.SelectSingleNode("/programmers/programmer[id='" + id + "']");
            xmlNode["id"].InnerText = id;
            xmlNode.Attributes["name"].Value = name;
            xmldoc.Save(Server.MapPath("~/App_Data/programmer.xml"));
           // Response.Write("<script type='javascript'>alert('修改成功！');</script>");
        }
        Response.Redirect("manager.aspx");
    }
}
