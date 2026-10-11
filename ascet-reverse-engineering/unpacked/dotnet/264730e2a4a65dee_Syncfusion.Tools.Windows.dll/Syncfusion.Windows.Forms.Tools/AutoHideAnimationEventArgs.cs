using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoHideAnimationEventArgs : DockControlEventArgs
{
	[DocumentationExclude]
	protected DockStyle dsBorder;

	[DocumentationExclude]
	protected Rectangle rcBounds = Rectangle.Empty;

	[DocumentationExclude]
	protected AutoHideRollState state = AutoHideRollState.None;

	public DockStyle DockBorder => dsBorder;

	public Rectangle Bounds
	{
		get
		{
			return rcBounds;
		}
		set
		{
			rcBounds = value;
		}
	}

	public AutoHideRollState RollState
	{
		get
		{
			return state;
		}
		set
		{
			state = value;
		}
	}

	public AutoHideAnimationEventArgs(Control ctrl, DockStyle border, Rectangle bounds)
		: base(ctrl)
	{
		dsBorder = border;
		rcBounds = bounds;
	}

	public AutoHideAnimationEventArgs(Control ctrl, DockStyle border, Rectangle bounds, AutoHideRollState state)
		: base(ctrl)
	{
		dsBorder = border;
		rcBounds = bounds;
		this.state = state;
	}
}
