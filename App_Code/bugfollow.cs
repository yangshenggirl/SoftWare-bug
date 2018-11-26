using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// bug 的摘要说明
/// </summary>
public class bugfollow
{
    public bugfollow()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    private string id;
    private string name;
    private string bugTitle;
    private string bugState;
    private string degree;
    private string dealPerson;
    private string testPerson;

    public string Id
    {
        get { return id; }
        set { id = value; }
    }

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public string BugTitle
    {
        get { return bugTitle; }
        set { bugTitle = value; }
    }

    public string BugState
    {
        get { return bugState; }
        set { bugState = value; }
    }

    public string Degree
    {
        get { return degree; }
        set { degree = value; }
    }

    public string DealPerson
    {
        get { return dealPerson; }
        set { dealPerson = value; }
    }

    public string TestPerson
    {
        get { return testPerson; }
        set { testPerson = value; }
    }
}
