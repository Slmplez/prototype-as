using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public sealed class ScrollWindowEventArgs : SyncfusionEventArgs
{
	private int xAmount;

	private int yAmount;

	private Rectangle rect;

	private Rectangle clipRect;

	private Rectangle updateRect;

	[TraceProperty(true)]
	public int XAmount => xAmount;

	[TraceProperty(true)]
	public int YAmount => yAmount;

	[TraceProperty(true)]
	public Rectangle Rect => rect;

	[TraceProperty(true)]
	public Rectangle ClipRect => clipRect;

	[TraceProperty(true)]
	public Rectangle UpdateRect => updateRect;

	public ScrollWindowEventArgs(int xAmount, int yAmount, Rectangle rect, Rectangle clipRect, Rectangle updateRect)
	{
		this.xAmount = xAmount;
		this.yAmount = yAmount;
		this.rect = rect;
		this.clipRect = clipRect;
		this.updateRect = updateRect;
	}

	public override string ToString()
	{
		return "ScrollWindowEventArgs { xAmount=" + xAmount + ", yAmount=" + yAmount + ", rect=" + rect.ToString() + ", clipRect=" + clipRect.ToString() + ", updateRect=" + updateRect.ToString() + "}";
	}
}
