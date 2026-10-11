using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[AttributeUsage(AttributeTargets.Method)]
[ComVisible(false)]
public class ETASMethodNameAttribute : Attribute
{
	private string m_NewName;

	public ETASMethodNameAttribute(string name)
	{
		m_NewName = name;
	}

	public string APIName()
	{
		return m_NewName;
	}
}
