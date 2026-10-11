using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class RecordNavigationScrollBar : RecordNavigationBar, IScrollBarContainer
{
	[DocumentationExclude]
	internal Control scrollBar;

	private int prefWidth = 216;

	private Rectangle fillBounds;

	public int PrefWidth
	{
		get
		{
			return prefWidth;
		}
		set
		{
			prefWidth = value;
		}
	}

	Control IScrollBarContainer.ScrollBar
	{
		get
		{
			return scrollBar;
		}
		set
		{
			if (value != scrollBar)
			{
				base.Controls.Remove(scrollBar);
				scrollBar = value;
				base.Controls.Add(scrollBar);
			}
		}
	}

	public RecordNavigationScrollBar(Control scrollBar)
	{
		this.scrollBar = scrollBar;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		if (scrollBar != null)
		{
			if (!base.Controls.Contains(scrollBar))
			{
				base.Controls.Add(scrollBar);
			}
			if (!scrollBar.IsHandleCreated)
			{
				scrollBar.CreateControl();
			}
		}
		base.OnHandleCreated(e);
	}

	protected override Rectangle ComputeButtonBarChildBounds()
	{
		Rectangle clientRectangle = base.ClientRectangle;
		clientRectangle.Width = Math.Min(clientRectangle.Width, prefWidth);
		if (RightToLeft == RightToLeft.Yes)
		{
			clientRectangle.X = base.ClientRectangle.Right - clientRectangle.Right;
		}
		return clientRectangle;
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (base.Parent != null)
		{
			Brush brush = new SolidBrush(Color.White);
			_ = base.ClientRectangle;
			pe.Graphics.FillRectangle(brush, fillBounds);
			brush.Dispose();
		}
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		base.OnLayout(levent);
		if (scrollBar != null)
		{
			Rectangle bounds = base.ButtonBarChild.Bounds;
			fillBounds = new Rectangle(bounds.Right, bounds.Top, 10, bounds.Height);
			bounds.Width += 10;
			Rectangle bounds2 = new Rectangle(bounds.Right, bounds.Top, base.Width - bounds.Right, bounds.Height);
			if (RightToLeft == RightToLeft.Yes)
			{
				bounds.X -= 10;
				bounds2 = new Rectangle(bounds.Width, bounds.Top, base.Width - bounds.Width, bounds.Height);
				bounds2.X = base.ClientRectangle.Right - bounds2.Right;
			}
			scrollBar.Bounds = bounds2;
			Invalidate();
		}
	}
}
