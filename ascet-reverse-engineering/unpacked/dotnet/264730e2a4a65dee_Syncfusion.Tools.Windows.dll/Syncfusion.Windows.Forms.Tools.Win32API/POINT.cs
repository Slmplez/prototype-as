using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct POINT
{
	public int x;

	public int y;

	public POINT(int X, int Y)
	{
		x = X;
		y = Y;
	}

	public POINT(int lParam)
	{
		x = lParam & 0xFFFF;
		y = lParam >> 16;
	}

	public POINT(IntPtr lParam)
	{
		long num = lParam.ToInt64();
		x = (short)(num & 0xFFFF);
		y = (short)(num >> 16);
	}

	public static implicit operator Point(POINT p)
	{
		return new Point(p.x, p.y);
	}

	public static implicit operator POINT(Point p)
	{
		return new POINT(p.X, p.Y);
	}
}
