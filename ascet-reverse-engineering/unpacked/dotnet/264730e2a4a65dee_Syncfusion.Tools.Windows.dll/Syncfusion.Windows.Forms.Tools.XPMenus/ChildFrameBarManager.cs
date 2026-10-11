using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[TypeConverter(typeof(BarManagerConverter))]
[Description("Manages menus and tool bars of a child window (in an MDI scenario), in XP Menus framework.")]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(CommandBar), "ToolboxIcons.ChildFrameBarManager.bmp")]
[ToolboxItemFilter("System.Windows.Forms")]
public class ChildFrameBarManager : BarManager, ICloneable, ISerializable
{
	public override RightToLeft RightToLeft
	{
		get
		{
			RightToLeft rightToLeft = RightToLeft.No;
			BarManager mainFrameBarManager = base.MainFrameBarManager;
			if (mainFrameBarManager != null && this != mainFrameBarManager)
			{
				return mainFrameBarManager.RightToLeft;
			}
			return base.RightToLeft;
		}
	}

	public ChildFrameBarManager(Form form)
		: base(form)
	{
	}

	public ChildFrameBarManager(IContainer container, Form form)
		: this(form)
	{
		container?.Add(this);
	}

	public ChildFrameBarManager()
	{
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public object Clone()
	{
		ChildFrameBarManager childFrameBarManager = new ChildFrameBarManager();
		CopyTo(childFrameBarManager);
		OnAfterClone(new BarManagerClonedEventArgs(childFrameBarManager));
		return childFrameBarManager;
	}

	protected ChildFrameBarManager(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}
}
