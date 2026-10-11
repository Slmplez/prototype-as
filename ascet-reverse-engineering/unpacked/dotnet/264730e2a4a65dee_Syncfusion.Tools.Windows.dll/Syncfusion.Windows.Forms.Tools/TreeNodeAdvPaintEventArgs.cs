using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvPaintEventArgs : EventArgs
{
	private Graphics graphics;

	private int level;

	private int indent;

	private bool selected;

	private bool active;

	private bool fullRowSelect;

	private bool hotTracked;

	private Rectangle bounds;

	private Point textLocation;

	private bool handled;

	private bool handledPlusMinus;

	private bool handledCheckBox;

	private bool handledOptionButton;

	private bool handledLeftImageList;

	private bool handledStateImageList;

	private bool handledText;

	private bool handledRightImageList;

	private Color foreColor = Color.Empty;

	private TreeNodeAdv node;

	private int rightMargin;

	public int RightMargin
	{
		get
		{
			return rightMargin;
		}
		set
		{
			rightMargin = value;
		}
	}

	public TreeNodeAdv Node => node;

	public Point TextLocation => textLocation;

	public Rectangle Bounds => bounds;

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

	public bool HandledPlusMinus
	{
		get
		{
			return handledPlusMinus;
		}
		set
		{
			handledPlusMinus = value;
		}
	}

	public bool HandledCheckBox
	{
		get
		{
			return handledCheckBox;
		}
		set
		{
			handledCheckBox = value;
		}
	}

	public bool HandledOptionButton
	{
		get
		{
			return handledOptionButton;
		}
		set
		{
			handledOptionButton = value;
		}
	}

	public bool HandledLeftImageList
	{
		get
		{
			return handledLeftImageList;
		}
		set
		{
			handledLeftImageList = value;
		}
	}

	public bool HandledStateImageList
	{
		get
		{
			return handledStateImageList;
		}
		set
		{
			handledStateImageList = value;
		}
	}

	public bool HandledText
	{
		get
		{
			return handledText;
		}
		set
		{
			handledText = value;
		}
	}

	public bool HandledRightImageList
	{
		get
		{
			return handledRightImageList;
		}
		set
		{
			handledRightImageList = value;
		}
	}

	public Graphics Graphics => graphics;

	public int Level => level;

	public int Indent => indent;

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

	public Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			foreColor = value;
		}
	}

	public TreeNodeAdvPaintEventArgs(TreeNodeAdv node, Graphics g, Rectangle bounds, Point textLocation, int level, int indent, bool selected, bool active, bool fullRowSelect, bool hotTracked, Color foreColor)
	{
		this.node = node;
		graphics = g;
		this.bounds = bounds;
		this.textLocation = textLocation;
		this.level = level;
		this.indent = indent;
		this.selected = selected;
		this.active = active;
		this.fullRowSelect = fullRowSelect;
		this.hotTracked = hotTracked;
		this.foreColor = foreColor;
	}
}
