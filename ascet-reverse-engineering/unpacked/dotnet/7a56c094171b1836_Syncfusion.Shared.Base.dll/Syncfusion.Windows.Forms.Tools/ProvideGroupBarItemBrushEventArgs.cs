using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class ProvideGroupBarItemBrushEventArgs : EventArgs
{
	private int nIndex;

	private Brush brBackground;

	private Rectangle rcBounds;

	public int Item => nIndex;

	public Rectangle Bounds => rcBounds;

	public Brush BackgroundBrush
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

	public ProvideGroupBarItemBrushEventArgs(int item, Rectangle bounds)
	{
		nIndex = item;
		rcBounds = bounds;
	}
}
