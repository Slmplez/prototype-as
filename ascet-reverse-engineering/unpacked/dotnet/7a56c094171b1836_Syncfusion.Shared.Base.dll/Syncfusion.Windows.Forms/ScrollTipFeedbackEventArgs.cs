using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class ScrollTipFeedbackEventArgs : SyncfusionCancelEventArgs
{
	private ScrollBars scrollBars;

	private ScrollTipActions action;

	private int value;

	private string text;

	private Size size;

	private Point location;

	private Font font;

	private Color foreColor;

	private Color backColor;

	private BorderStyle borderStyle;

	private StringFormat sf;

	[TraceProperty(true)]
	public ScrollBars ScrollBar => scrollBars;

	[TraceProperty(true)]
	public ScrollTipActions Action => action;

	[TraceProperty(true)]
	public int Value => value;

	[TraceProperty(true)]
	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	[TraceProperty(true)]
	public Size Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	[TraceProperty(true)]
	public Point Location
	{
		get
		{
			return location;
		}
		set
		{
			location = value;
		}
	}

	[TraceProperty(true)]
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

	[TraceProperty(true)]
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

	[TraceProperty(true)]
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

	[TraceProperty(true)]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			borderStyle = value;
		}
	}

	[TraceProperty(true)]
	public StringFormat Format
	{
		get
		{
			return sf;
		}
		set
		{
			sf = value;
		}
	}

	internal ScrollTipFeedbackEventArgs(ScrollBars scrollBars, ScrollTipActions action, int value, string text, Size size, Point location, Font font, Color foreColor, Color backColor, BorderStyle borderStyle, StringFormat sf)
	{
		this.scrollBars = scrollBars;
		this.action = action;
		this.value = value;
		this.text = text;
		this.size = size;
		this.location = location;
		this.font = font;
		this.foreColor = foreColor;
		this.backColor = backColor;
		this.borderStyle = borderStyle;
		this.sf = sf;
	}
}
