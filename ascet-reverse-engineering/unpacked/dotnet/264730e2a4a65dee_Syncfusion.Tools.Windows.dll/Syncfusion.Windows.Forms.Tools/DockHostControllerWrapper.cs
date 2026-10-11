using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class DockHostControllerWrapper : LayoutControllerWrapper, ISerializable
{
	private string controlName;

	private string uniqueName;

	private DockingStyle m_DockEdge;

	public DockingStyle DockEdge
	{
		get
		{
			return m_DockEdge;
		}
		set
		{
			if (m_DockEdge != value)
			{
				m_DockEdge = value;
			}
		}
	}

	public string ControlName
	{
		get
		{
			return controlName;
		}
		set
		{
			controlName = value;
		}
	}

	public string UniqueName
	{
		get
		{
			return uniqueName;
		}
		set
		{
			uniqueName = value;
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue(SerializationConsts.CONTROL_NAME, controlName);
		info.AddValue(SerializationConsts.UNIQUE_NAME, uniqueName);
		info.AddValue(SerializationConsts.STYLE, m_DockEdge, typeof(DockingStyle));
	}

	protected DockHostControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		controlName = info.GetString(SerializationConsts.CONTROL_NAME);
		try
		{
			uniqueName = info.GetString(SerializationConsts.UNIQUE_NAME);
		}
		catch
		{
			uniqueName = controlName;
		}
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Name == SerializationConsts.STYLE)
			{
				m_DockEdge = (DockingStyle)info.GetValue(SerializationConsts.STYLE, typeof(DockingStyle));
				break;
			}
		}
	}

	public DockHostControllerWrapper()
	{
	}
}
