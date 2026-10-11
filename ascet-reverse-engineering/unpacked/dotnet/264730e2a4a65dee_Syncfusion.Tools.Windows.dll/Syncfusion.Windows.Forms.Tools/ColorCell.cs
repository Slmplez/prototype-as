using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class ColorCell : Component
{
	private Region m_bounds;

	private Color m_color = Color.Empty;

	private int m_index = -1;

	private ColorCellState m_state;

	private int m_cellWidth = 18;

	private int m_cellHeight = 14;

	private int xPos;

	private int yPos;

	private GraphicsPath m_path = new GraphicsPath();

	public Region Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			m_bounds = value;
		}
	}

	public Color Color
	{
		get
		{
			return m_color;
		}
		set
		{
			m_color = value;
		}
	}

	public int Index
	{
		get
		{
			return m_index;
		}
		set
		{
			m_index = value;
		}
	}

	[DefaultValue(ColorCellState.Normal)]
	public ColorCellState State
	{
		get
		{
			return m_state;
		}
		set
		{
			m_state = value;
		}
	}

	public int HorizontalPosition => xPos;

	public int VerticalPosition => yPos;

	public GraphicsPath Path
	{
		get
		{
			return m_path;
		}
		set
		{
			m_path = value;
		}
	}

	public ColorCell(Color color)
	{
		m_color = color;
	}

	public void CalculateBounds()
	{
		if (m_index < 7)
		{
			xPos = m_index;
		}
		else if (m_index < 15)
		{
			xPos = m_index - 7;
			yPos = 1;
		}
		else if (m_index < 24)
		{
			xPos = m_index - 15;
			yPos = 2;
		}
		else if (m_index < 34)
		{
			xPos = m_index - 24;
			yPos = 3;
		}
		else if (m_index < 45)
		{
			xPos = m_index - 34;
			yPos = 4;
		}
		else if (m_index < 57)
		{
			xPos = m_index - 45;
			yPos = 5;
		}
		else if (m_index < 70)
		{
			xPos = m_index - 57;
			yPos = 6;
		}
		else if (m_index < 82)
		{
			xPos = m_index - 70;
			yPos = 7;
		}
		else if (m_index < 93)
		{
			xPos = m_index - 82;
			yPos = 8;
		}
		else if (m_index < 103)
		{
			xPos = m_index - 93;
			yPos = 9;
		}
		else if (m_index < 112)
		{
			xPos = m_index - 103;
			yPos = 10;
		}
		else if (m_index < 120)
		{
			xPos = m_index - 112;
			yPos = 11;
		}
		else if (m_index < 127)
		{
			xPos = m_index - 120;
			yPos = 12;
		}
		else if (m_index < 134)
		{
			xPos = m_index - 127;
			yPos = 13;
		}
		else if (m_index < 141)
		{
			xPos = m_index - 134;
			yPos = 14;
		}
		Point loc = CalculateLocation(xPos, yPos);
		CalculateCellBounds(loc);
	}

	private Point CalculateLocation(int xPos, int yPos)
	{
		Point point = new Point(60, 42);
		int num = 0;
		int num2 = 0;
		int num3 = m_cellWidth / 2;
		if (yPos <= 12)
		{
			num3 += Math.Abs(6 - yPos) * m_cellWidth / 2 + m_cellWidth / 2;
		}
		else
		{
			switch (yPos)
			{
			case 13:
				num3 += (int)((double)m_cellWidth * 4.5);
				break;
			case 14:
				num3 += m_cellWidth * 4;
				break;
			}
		}
		num = num3 + m_cellWidth * xPos;
		num2 = point.Y + m_cellHeight * yPos;
		if (yPos > 12)
		{
			num2 += m_cellHeight;
		}
		return new Point(num, num2);
	}

	private void CalculateCellBounds(Point loc)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		Point[] points = new Point[20]
		{
			new Point(loc.X + 3, loc.Y),
			new Point(loc.X + 3, loc.Y + 1),
			new Point(loc.X + 6, loc.Y + 1),
			new Point(loc.X + 6, loc.Y + 2),
			new Point(loc.X + 9, loc.Y + 2),
			new Point(loc.X + 9, loc.Y + 14),
			new Point(loc.X + 6, loc.Y + 14),
			new Point(loc.X + 6, loc.Y + 15),
			new Point(loc.X + 3, loc.Y + 15),
			new Point(loc.X + 3, loc.Y + 16),
			new Point(loc.X - 3, loc.Y + 16),
			new Point(loc.X - 3, loc.Y + 15),
			new Point(loc.X - 6, loc.Y + 15),
			new Point(loc.X - 6, loc.Y + 14),
			new Point(loc.X - 9, loc.Y + 14),
			new Point(loc.X - 9, loc.Y + 2),
			new Point(loc.X - 6, loc.Y + 2),
			new Point(loc.X - 6, loc.Y + 1),
			new Point(loc.X - 3, loc.Y + 1),
			new Point(loc.X - 3, loc.Y)
		};
		graphicsPath.AddLines(points);
		graphicsPath.CloseFigure();
		m_path = graphicsPath;
		Bounds = new Region(graphicsPath);
	}
}
