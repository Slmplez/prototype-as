using System.ComponentModel;
using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCellDisplayTextEventArgs : SyncfusionCancelEventArgs
{
	private Graphics g;

	private string displayText;

	private Rectangle textRectangle;

	private GridStyleInfo style;

	private bool useTextRenderer;

	[TraceProperty(true)]
	public Graphics Graphics
	{
		get
		{
			return g;
		}
		set
		{
			g = value;
		}
	}

	[TraceProperty(true)]
	public string DisplayText
	{
		get
		{
			return displayText;
		}
		set
		{
			displayText = value;
		}
	}

	[TraceProperty(true)]
	public Rectangle TextRectangle
	{
		get
		{
			return textRectangle;
		}
		set
		{
			textRectangle = value;
		}
	}

	[TraceProperty(true)]
	public GridStyleInfo Style
	{
		get
		{
			return style;
		}
		set
		{
			style.ModifyStyle(value, StyleModifyType.Copy);
		}
	}

	public int RowIndex
	{
		get
		{
			if (style.CellIdentity == null)
			{
				return 0;
			}
			return style.CellIdentity.RowIndex;
		}
	}

	public int ColIndex
	{
		get
		{
			if (style.CellIdentity == null)
			{
				return 0;
			}
			return style.CellIdentity.ColIndex;
		}
	}

	public Rectangle ClipBounds
	{
		get
		{
			Rectangle result = Rectangle.Ceiling(g.ClipBounds);
			if (result.IsEmpty)
			{
				return textRectangle;
			}
			if (result.IntersectsWith(textRectangle))
			{
				result.Intersect(textRectangle);
			}
			return result;
		}
	}

	[DefaultValue(false)]
	public bool UseTextRenderer
	{
		get
		{
			return useTextRenderer;
		}
		set
		{
			useTextRenderer = value;
		}
	}

	public GridDrawCellDisplayTextEventArgs(Graphics g, string displayText, Rectangle textRectangle, GridStyleInfo style, bool useTextRenderer)
	{
		new GridDrawCellDisplayTextEventArgs(g, displayText, textRectangle, style);
	}

	public GridDrawCellDisplayTextEventArgs(Graphics g, string displayText, Rectangle textRectangle, GridStyleInfo style)
	{
		this.g = g;
		this.displayText = displayText;
		this.textRectangle = textRectangle;
		this.style = style;
	}
}
