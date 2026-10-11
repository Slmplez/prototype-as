using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class RendererUtils
{
	public static Region GetRoundedRegion(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int right = rc.Right;
		int bottom = rc.Bottom;
		Region region = new Region(rc);
		for (int i = 0; i < iRadius; i++)
		{
			region.Exclude(new Rectangle(x + i, y, 1, iRadius - i));
			region.Exclude(new Rectangle(x + i, bottom, 1, i - iRadius));
			region.Exclude(new Rectangle(right - i, y, -1, iRadius - i));
			region.Exclude(new Rectangle(right - i, bottom, -1, i - iRadius));
		}
		return region;
	}

	public static Point[] GetRoundedPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int num = rc.Right - 1;
		int num2 = rc.Bottom - 1;
		return new Point[8]
		{
			new Point(x, y + iRadius),
			new Point(x + iRadius, y),
			new Point(num - iRadius, y),
			new Point(num, y + iRadius),
			new Point(num, num2 - iRadius),
			new Point(num - iRadius, num2),
			new Point(x + iRadius, num2),
			new Point(x, num2 - iRadius)
		};
	}

	public static Point[] GetSquareRoundedToRightPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int num = rc.Right - 1;
		int num2 = rc.Bottom - 1;
		return new Point[6]
		{
			new Point(x, y),
			new Point(num - iRadius, y),
			new Point(num, y + iRadius),
			new Point(num, num2 - iRadius),
			new Point(num - iRadius, num2),
			new Point(x, num2)
		};
	}

	public static Point[] GetSquareRoundedToLeftPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int x2 = rc.Right - 1;
		int num = rc.Bottom - 1;
		return new Point[6]
		{
			new Point(x, y + iRadius),
			new Point(x + iRadius, y),
			new Point(x2, y),
			new Point(x2, num),
			new Point(x + iRadius, num),
			new Point(x, num - iRadius)
		};
	}

	public static Point[] GetSquareRoundedToUpPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int num = rc.Right - 1;
		int y2 = rc.Bottom - 1;
		return new Point[6]
		{
			new Point(x, y + iRadius),
			new Point(x + iRadius, y),
			new Point(num - iRadius, y),
			new Point(num, y + iRadius),
			new Point(num, y2),
			new Point(x, y2)
		};
	}

	public static Point[] GetSquareRoundedToDownPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int num = rc.Right - 1;
		int num2 = rc.Bottom - 1;
		return new Point[6]
		{
			new Point(x, y),
			new Point(num, y),
			new Point(num, num2 - iRadius),
			new Point(num - iRadius, num2),
			new Point(x + iRadius, num2),
			new Point(x, num2 - iRadius)
		};
	}
}
