using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class ProvideGraphicsItemsEventArgs : EventArgs
{
	[DocumentationExclude]
	protected Control ctrlDocked;

	[DocumentationExclude]
	protected Rectangle rcBounds = Rectangle.Empty;

	[DocumentationExclude]
	protected bool bActiveCaption;

	[DocumentationExclude]
	protected Brush brBackground;

	[DocumentationExclude]
	protected Color clrForeground = Color.Empty;

	[DocumentationExclude]
	protected Font ftCaption;

	public Control Control => ctrlDocked;

	public Rectangle CaptionBounds => rcBounds;

	public bool IsActiveCaption => bActiveCaption;

	public Brush CaptionBackground
	{
		get
		{
			return brBackground;
		}
		set
		{
			brBackground = value;
		}
	}

	public Color CaptionForeground
	{
		get
		{
			return clrForeground;
		}
		set
		{
			clrForeground = value;
		}
	}

	public Font CaptionFont
	{
		get
		{
			return ftCaption;
		}
		set
		{
			ftCaption = value;
		}
	}

	public ProvideGraphicsItemsEventArgs(Control ctrl, Rectangle bounds, bool active)
	{
		ctrlDocked = ctrl;
		rcBounds = bounds;
		bActiveCaption = active;
	}
}
