using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
[AttributeUsage(AttributeTargets.Class)]
public class ETASGuidAttribute : Attribute
{
	private string m_GUID;

	public ETASGuidAttribute(string guid)
	{
		m_GUID = guid;
	}

	public string ETASGuid()
	{
		return m_GUID;
	}
}
