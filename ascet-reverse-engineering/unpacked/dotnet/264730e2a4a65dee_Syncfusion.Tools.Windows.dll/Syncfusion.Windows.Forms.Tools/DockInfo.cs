using System;
using System.Collections;
using System.Drawing;
using System.Reflection;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public sealed class DockInfo : ISerializable
{
	[NonSerialized]
	public DockControllerBase dController;

	public DockingStyle dStyle;

	public int nPriority;

	public int nDockIndex;

	public DockPreference DP;

	public Rectangle rcDockArea;

	public Rectangle rcControlArea;

	private string m_controllerName;

	public string ControlleName
	{
		get
		{
			return m_controllerName;
		}
		set
		{
			if (m_controllerName != value)
			{
				m_controllerName = value;
			}
		}
	}

	public static DockInfo NullInfo => new DockInfo(null, DockingStyle.Fill, 0, 0, DockPreference.All, Rectangle.Empty);

	private DockInfo()
	{
	}

	public DockInfo(DockControllerBase dc, DockingStyle ds, int priority, int index, DockPreference dp, Rectangle rc)
	{
		dController = dc;
		dStyle = ds;
		nPriority = priority;
		nDockIndex = index;
		DP = dp;
		rcDockArea = rc;
	}

	public DockInfo(DockInfo di)
	{
		dController = di.dController;
		dStyle = di.dStyle;
		nPriority = di.nPriority;
		nDockIndex = di.nDockIndex;
		DP = di.DP;
		rcDockArea = di.rcDockArea;
	}

	private DockInfo(SerializationInfo info, StreamingContext context)
	{
		dStyle = (DockingStyle)info.GetValue("DockStyle", typeof(DockingStyle));
		nPriority = info.GetInt32("Priority");
		nDockIndex = info.GetInt32("DockIndex");
		DP = (DockPreference)info.GetValue("DockPreference", typeof(DockPreference));
		rcDockArea = (Rectangle)info.GetValue("DockArea", typeof(Rectangle));
		Hashtable hashtable = new Hashtable();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			hashtable[enumerator.Current.Name] = null;
		}
		if (hashtable.Contains("Controller"))
		{
			m_controllerName = info.GetString("Controller");
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		if (dController is DockHostController)
		{
			info.AddValue("Controller", (dController as DockHostController).UniqueName);
		}
		else
		{
			info.AddValue("Controller", string.Empty);
		}
		info.AddValue("DockStyle", dStyle, typeof(DockingStyle));
		info.AddValue("Priority", nPriority);
		info.AddValue("DockIndex", nDockIndex);
		info.AddValue("DockPreference", DP, typeof(DockPreference));
		info.AddValue("DockArea", rcDockArea, typeof(Rectangle));
	}

	internal static DockInfo CloneByReflection(object objthis)
	{
		DockInfo dockInfo = new DockInfo();
		FieldInfo[] fields = objthis.GetType().GetFields();
		FieldInfo[] array = fields;
		foreach (FieldInfo fieldInfo in array)
		{
			switch (fieldInfo.Name)
			{
			case "dStyle":
				dockInfo.dStyle = (DockingStyle)fieldInfo.GetValue(objthis);
				break;
			case "nPriority":
				dockInfo.nPriority = (int)fieldInfo.GetValue(objthis);
				break;
			case "nDockIndex":
				dockInfo.nDockIndex = (int)fieldInfo.GetValue(objthis);
				break;
			case "DP":
				dockInfo.DP = (DockPreference)fieldInfo.GetValue(objthis);
				break;
			case "rcDockArea":
				dockInfo.rcDockArea = (Rectangle)fieldInfo.GetValue(objthis);
				break;
			}
		}
		return dockInfo;
	}
}
