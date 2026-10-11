using System;
using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvPaintBackgroundEventArgs : EventArgs
{
	private Graphics graphics;

	private bool selected;

	private bool active;

	private bool fullRowSelect;

	private bool hotTracked;

	private Rectangle bounds;

	private TreeNodeAdv node;

	private BrushInfo brushInfo;

	private bool handled;

	public TreeNodeAdv Node => node;

	public Rectangle Bounds => bounds;

	public Graphics Graphics => graphics;

	public bool Selected
	{
		get
		{
			return selected;
		}
		set
		{
			selected = value;
		}
	}

	public bool Active
	{
		get
		{
			return active;
		}
		set
		{
			active = value;
		}
	}

	public bool FullRowSelect => fullRowSelect;

	public bool HotTracked
	{
		get
		{
			return hotTracked;
		}
		set
		{
			hotTracked = value;
		}
	}

	public BrushInfo BrushInfo
	{
		get
		{
			return brushInfo;
		}
		set
		{
			brushInfo = value;
		}
	}

	public bool Handled
	{
		get
		{
			return handled;
		}
		set
		{
			handled = value;
		}
	}

	public TreeNodeAdvPaintBackgroundEventArgs(TreeNodeAdv node, Graphics g, bool selected, bool active, bool fullRowSelect, bool hotTracked, BrushInfo brushInfo)
	{
		this.node = node;
		graphics = g;
		bounds = node.Bounds;
		this.selected = selected;
		this.active = active;
		this.fullRowSelect = fullRowSelect;
		this.hotTracked = hotTracked;
		this.brushInfo = brushInfo;
	}
}
