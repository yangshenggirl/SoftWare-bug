using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// programmer 的摘要说明
/// </summary>
public class person
{
	public person()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private string id;
    private string name;

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
    
}