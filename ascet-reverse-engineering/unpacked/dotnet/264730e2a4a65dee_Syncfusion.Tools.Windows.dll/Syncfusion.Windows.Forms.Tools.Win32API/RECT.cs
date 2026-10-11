using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct RECT
{
	public int left;

	public int top;

	public int right;

	public int bottom;

	public int Width => right - left;

	public int Height => bottom - top;

	public Point TopLeft => new Point(left, top);

	public Size Size => new Size(Width, Height);

	public RECT(int left, int top, int right, int bottom)
	{
		this.top = top;
		this.left = left;
		this.right = right;
		this.bottom = bottom;
	}

	public override string ToString()
	{
		return $"{TopLeft}x{Size}";
	}

	public static implicit operator Rectangle(RECT rect)
	{
		return Rectangle.FromLTRB(rect.left, rect.top, rect.right, rect.bottom);
	}

	public static implicit operator Size(RECT rect)
	{
		return new Size(rect.right - rect.left, rect.bottom - rect.top);
	}

	public static explicit operator RECT(Rectangle rect)
	{
		return new RECT
		{
			left = rect.Left,
			right = rect.Right,
			top = rect.Top,
			bottom = rect.Bottom
		};
	}
}
