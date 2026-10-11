using System;
using System.Collections;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class SizingControllerWrapper : LayoutControllerWrapper, ISerializable
{
	private DockPreference orientation;

	private DockingStyle style;

	private int nPriority = -1;

	private Rectangle m_transientRect = Rectangle.Empty;

	public DockPreference Orientation
	{
		get
		{
			return orientation;
		}
		set
		{
			orientation = value;
		}
	}

	public DockingStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			style = value;
		}
	}

	public int Priority
	{
		get
		{
			return nPriority;
		}
		set
		{
			nPriority = value;
		}
	}

	public Rectangle TransientRect
	{
		get
		{
			return m_transientRect;
		}
		set
		{
			m_transientRect = value;
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue(SerializationConsts.ORIENTATION, orientation, typeof(DockPreference));
		info.AddValue(SerializationConsts.STYLE, style, typeof(DockingStyle));
		info.AddValue(SerializationConsts.PRIORITY, nPriority, typeof(int));
		info.AddValue(SerializationConsts.TRANSIENTRECT, m_transientRect, typeof(Rectangle));
	}

	protected SizingControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		orientation = (DockPreference)info.GetValue(SerializationConsts.ORIENTATION, typeof(DockPreference));
		style = (DockingStyle)info.GetValue(SerializationConsts.STYLE, typeof(DockingStyle));
		Hashtable hashtable = new Hashtable();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			hashtable.Add(enumerator.Name, enumerator.Value);
		}
		if (hashtable.Contains(SerializationConsts.PRIORITY))
		{
			nPriority = info.GetInt32(SerializationConsts.PRIORITY);
		}
		if (hashtable.Contains(SerializationConsts.TRANSIENTRECT))
		{
			m_transientRect = (Rectangle)info.GetValue(SerializationConsts.TRANSIENTRECT, typeof(Rectangle));
		}
	}

	public SizingControllerWrapper()
	{
	}
}
