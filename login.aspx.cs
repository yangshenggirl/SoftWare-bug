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

    }
    protected void login_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        string role = DropDownList1.Text;

        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("~/App_Data/user.xml"));
        string xpath = "/users/user";
        XmlNodeList nodeList = xmldoc.SelectNodes(xpath);

        foreach (XmlNode xmlNode in nodeList)
        {
            if (xmlNode["username"].InnerText == username
                && xmlNode["password"].InnerText == password
                && xmlNode.Attributes["role"].Value == role)
            {
                if (role == "管理人员")
                {
                    Response.Redirect("manager.aspx");
                }
                else if (role == "测试人员")
                {
                    Response.Redirect("test.aspx?name=" + username);
                }
                else
                {
                    Response.Redirect("programmer.aspx?name=" + username);
                }
            }
        }

    }
}
