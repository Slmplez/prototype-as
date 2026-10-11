using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class LayoutControllerWrapper : ControllerWrapper, ISerializable
{
	private Rectangle layoutRect;

	public Rectangle LayoutRect
	{
		get
		{
			return layoutRect;
		}
		set
		{
			layoutRect = value;
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue(SerializationConsts.LAYOUT, layoutRect, typeof(Rectangle));
	}

	protected LayoutControllerWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		layoutRect = (Rectangle)info.GetValue(SerializationConsts.LAYOUT, typeof(Rectangle));
	}

	public LayoutControllerWrapper()
	{
	}
}
