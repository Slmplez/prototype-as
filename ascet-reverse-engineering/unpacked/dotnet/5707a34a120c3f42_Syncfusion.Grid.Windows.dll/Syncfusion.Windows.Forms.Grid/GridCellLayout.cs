using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellLayout
{
	private Rectangle cellRectangle;

	private Rectangle innerRectangle;

	private Rectangle[] buttons;

	private Rectangle clientRectangle;

	private Rectangle textRectangle;

	public Rectangle CellRectangle
	{
		get
		{
			return cellRectangle;
		}
		set
		{
			cellRectangle = value;
		}
	}

	public Rectangle InnerRectangle
	{
		get
		{
			return innerRectangle;
		}
		set
		{
			innerRectangle = value;
		}
	}

	public Rectangle[] Buttons
	{
		get
		{
			return buttons;
		}
		set
		{
			buttons = value;
		}
	}

	public Rectangle ClientRectangle
	{
		get
		{
			return clientRectangle;
		}
		set
		{
			clientRectangle = value;
		}
	}

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

	[Obsolete("Use default ctor instead.")]
	public GridCellLayout(Rectangle cellRectangle, Rectangle innerRectangle, Rectangle[] buttons, Rectangle textRectangle)
	{
		this.cellRectangle = cellRectangle;
		this.innerRectangle = innerRectangle;
		this.buttons = buttons;
		this.textRectangle = textRectangle;
	}

	public GridCellLayout()
	{
	}
}
