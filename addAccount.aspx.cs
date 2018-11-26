using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
public partial class addAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(Server.MapPath("~/App_Data/user.xml"));

                string xpath = "/users";
                XmlNode users = xmldoc.SelectSingleNode(xpath);

                XmlElement user = xmldoc.CreateElement("user");


                XmlElement username = xmldoc.CreateElement("username");
                username.InnerText = TextBox1.Text;

                XmlElement password = xmldoc.CreateElement("password");
                password.InnerText = TextBox2.Text;

                user.AppendChild(username);
                user.AppendChild(password);
                user.SetAttribute("role", DropDownList1.Text);
                users.AppendChild(user);

                xmldoc.Save(Server.MapPath("~/App_Data/user.xml"));
                Response.Redirect("manager.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "*和密码不一致";
            }
        }
    }
}