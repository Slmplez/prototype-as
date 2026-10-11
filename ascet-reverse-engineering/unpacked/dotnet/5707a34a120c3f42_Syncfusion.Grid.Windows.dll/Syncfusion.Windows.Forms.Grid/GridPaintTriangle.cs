using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridPaintTriangle
{
	private const double TRI_HEIGHT_RATIO = 1.5;

	private const double TRI_WIDTH_RATIO = 0.8;

	public static void Paint(Graphics g, Rectangle bounds, GridTriangleDirection dir, Brush backBrush, Pen backPen1, Pen backPen2, Pen backPen3, bool opaque)
	{
		Point[] array = BuildTrianglePoints(dir, bounds);
		g.DrawLine(backPen1, array[0], array[1]);
		g.DrawLine(backPen2, array[1], array[2]);
		g.DrawLine(backPen3, array[2], array[0]);
	}

	public static void Paint(Graphics g, Rectangle bounds, GridTriangleDirection dir, Brush backBrush, Pen backPen, bool opaque)
	{
		Point[] points = BuildTrianglePoints(dir, bounds);
		if (opaque)
		{
			g.FillPolygon(backBrush, points);
		}
		g.DrawPolygon(backPen, points);
	}

	public static void Paint(Graphics g, Rectangle bounds, GridTriangleDirection dir, Brush backBrush, Pen backPen)
	{
		Paint(g, bounds, dir, backBrush, backPen, opaque: true);
	}

	private static Point[] BuildTrianglePoints(GridTriangleDirection dir, Rectangle bounds)
	{
		Point[] array = new Point[3];
		int num = (int)((double)Math.Min(bounds.Height, bounds.Width) * 0.8);
		if (num % 2 == 1)
		{
			num++;
		}
		int num2 = (int)Math.Ceiling((double)num / 2.0 * 2.2);
		if (num2 % 2 == 1)
		{
			num2++;
		}
		switch (dir)
		{
		case GridTriangleDirection.Up:
		{
			num += 3;
			num2 -= 2;
			ref Point reference10 = ref array[0];
			reference10 = new Point(-1, num2);
			ref Point reference11 = ref array[1];
			reference11 = new Point(num, num2);
			ref Point reference12 = ref array[2];
			reference12 = new Point(num / 2, 0);
			break;
		}
		case GridTriangleDirection.Down:
		{
			num += 3;
			num2 -= 2;
			ref Point reference7 = ref array[0];
			reference7 = new Point(-1, 0);
			ref Point reference8 = ref array[1];
			reference8 = new Point(num, 0);
			ref Point reference9 = ref array[2];
			reference9 = new Point(num / 2, num2);
			break;
		}
		case GridTriangleDirection.Left:
		{
			ref Point reference4 = ref array[0];
			reference4 = new Point(num2, 0);
			ref Point reference5 = ref array[1];
			reference5 = new Point(num2, num);
			ref Point reference6 = ref array[2];
			reference6 = new Point(0, num / 2);
			break;
		}
		case GridTriangleDirection.Right:
		{
			ref Point reference = ref array[0];
			reference = new Point(0, 0);
			ref Point reference2 = ref array[1];
			reference2 = new Point(0, num);
			ref Point reference3 = ref array[2];
			reference3 = new Point(num2, num / 2);
			break;
		}
		}
		switch (dir)
		{
		case GridTriangleDirection.Left:
		case GridTriangleDirection.Right:
			OffsetPoints(array, bounds.X + (bounds.Width - num2) / 2, bounds.Y + (bounds.Height - num) / 2);
			break;
		case GridTriangleDirection.Up:
		case GridTriangleDirection.Down:
			OffsetPoints(array, bounds.X + (bounds.Width - num) / 2, bounds.Y + (bounds.Height - num2) / 2);
			break;
		}
		return array;
	}

	private static void OffsetPoints(Point[] points, int xOffset, int yOffset)
	{
		for (int i = 0; i < points.Length; i++)
		{
			points[i].X = points[i].X + xOffset;
			points[i].Y = points[i].Y + yOffset;
		}
	}
}
