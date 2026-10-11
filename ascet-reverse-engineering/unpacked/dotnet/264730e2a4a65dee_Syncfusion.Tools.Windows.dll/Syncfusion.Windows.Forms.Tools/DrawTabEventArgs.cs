using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DrawTabEventArgs : EventArgs
{
	public delegate void DrawDefaultBackground(DrawTabEventArgs drawItemInfo);

	public delegate void DrawDefaultBorders(DrawTabEventArgs drawItemInfo);

	public delegate void DrawDefaultInterior(DrawTabEventArgs drawItemInfo);

	private Font font;

	private readonly Graphics graphics;

	private readonly int index;

	private Rectangle rect;

	private DrawItemState state;

	private Rectangle rectInterior;

	private Brush textBrush;

	private Color foreColor;

	private Color backColor;

	internal DrawDefaultBackground defaultDrawBackground;

	internal DrawDefaultBorders defaultDrawBorders;

	internal DrawDefaultInterior defaultDrawInterior;

	public Color BackColor
	{
		get
		{
			return backColor;
		}
		set
		{
			backColor = value;
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

	public int Index => index;

	public Graphics Graphics => graphics;

	public DrawItemState State
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

	public Rectangle BoundsInterior => rectInterior;

	public Rectangle Bounds
	{
		get
		{
			return rect;
		}
		set
		{
			if (rect != value)
			{
				rect = value;
			}
		}
	}

	public Font Font
	{
		get
		{
			return font;
		}
		set
		{
			font = value;
		}
	}

	public Brush TextBrush
	{
		get
		{
			return textBrush;
		}
		set
		{
			textBrush = value;
		}
	}

	public DrawTabEventArgs(Graphics g, Font font, Rectangle bounds, int index, DrawItemState state, Color foreColor, Color backColor, Rectangle boundsInterior, DrawDefaultBackground defaultDrawBackground, DrawDefaultBorders defaultDrawBorders, DrawDefaultInterior defaultDrawInterior)
	{
		graphics = g;
		this.font = font;
		rect = bounds;
		this.index = index;
		this.state = state;
		this.defaultDrawBackground = defaultDrawBackground;
		this.defaultDrawBorders = defaultDrawBorders;
		this.defaultDrawInterior = defaultDrawInterior;
		this.backColor = backColor;
		this.foreColor = foreColor;
		rectInterior = boundsInterior;
	}

	public DrawTabEventArgs(DrawTabEventArgs args)
	{
		graphics = args.Graphics;
		font = args.Font;
		rect = args.Bounds;
		index = args.Index;
		state = args.State;
		defaultDrawBackground = args.defaultDrawBackground;
		defaultDrawBorders = args.defaultDrawBorders;
		defaultDrawInterior = args.defaultDrawInterior;
		backColor = args.BackColor;
		foreColor = args.ForeColor;
		rectInterior = args.BoundsInterior;
	}

	public virtual void DrawBackground()
	{
		if (defaultDrawBackground != null)
		{
			defaultDrawBackground(this);
		}
	}

	public void DrawBorders()
	{
		if (defaultDrawBorders != null)
		{
			defaultDrawBorders(this);
		}
	}

	public void DrawInterior()
	{
		if (defaultDrawInterior != null)
		{
			defaultDrawInterior(this);
		}
	}
}
