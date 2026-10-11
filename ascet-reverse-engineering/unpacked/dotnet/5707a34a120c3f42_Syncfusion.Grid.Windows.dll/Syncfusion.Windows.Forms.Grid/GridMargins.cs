using System;
using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(ExpandableObjectConverter))]
[ImmutableObject(true)]
public class GridMargins : ICloneable
{
	internal int _left;

	internal int _right;

	internal int _top;

	internal int _bottom;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string Info => ToString();

	public int Left => _left;

	public int Right => _right;

	public int Top => _top;

	public int Bottom => _bottom;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Width => _left + _right;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Height => _top + _bottom;

	public GridMargins()
		: this(0, 0, 0, 0)
	{
	}

	public GridMargins(int left, int top, int right, int bottom)
	{
		_left = left;
		_right = right;
		_top = top;
		_bottom = bottom;
	}

	public GridMargins SwapRightToLeft()
	{
		return new GridMargins(_right, _top, _left, _bottom);
	}

	public virtual object Clone()
	{
		GridMargins gridMargins = new GridMargins();
		gridMargins._left = _left;
		gridMargins._right = _right;
		gridMargins._top = _top;
		gridMargins._bottom = _bottom;
		return gridMargins;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is GridMargins)
		{
			GridMargins gridMargins = (GridMargins)obj;
			if (gridMargins._left == _left && gridMargins._right == _right && gridMargins._top == _top)
			{
				return gridMargins._bottom == _bottom;
			}
			return false;
		}
		return false;
	}

	public override string ToString()
	{
		return "[GridMargins Left=" + _left + " Right=" + _right + " Top=" + _top + " Bottom=" + _bottom + "]";
	}

	public static Size AddMargins(Size size, GridMargins margins)
	{
		size.Width += margins.Width;
		size.Height += margins.Height;
		return size;
	}

	public static Size RemoveMargins(Size size, GridMargins margins)
	{
		if (margins.Width >= size.Width || margins.Height >= size.Height)
		{
			return Size.Empty;
		}
		size.Width -= margins.Width;
		size.Height -= margins.Height;
		return size;
	}

	public static Rectangle AddMargins(Rectangle bounds, GridMargins margins)
	{
		return Rectangle.FromLTRB(bounds.Left - margins.Left, bounds.Top - margins.Top, bounds.Right + margins.Right, bounds.Bottom + margins.Bottom);
	}

	public static Rectangle RemoveMargins(Rectangle bounds, GridMargins margins)
	{
		if (margins.Width >= bounds.Width || margins.Height >= bounds.Height)
		{
			return Rectangle.Empty;
		}
		return Rectangle.FromLTRB(bounds.Left + margins.Left, bounds.Top + margins.Top, bounds.Right - margins.Right, bounds.Bottom - margins.Bottom);
	}
}
