using System;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class PopupUtils
{
	public static Control GetADotNetParentControl(IntPtr handle)
	{
		Control control = null;
		while (handle != IntPtr.Zero)
		{
			handle = NativeMethods.GetParent(handle);
			if (handle != IntPtr.Zero)
			{
				control = Control.FromHandle(handle);
				if (control != null)
				{
					break;
				}
			}
		}
		return control;
	}

	public static Point ComputeDefaultTopBottomAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment, Rectangle parentBounds, bool isRTL)
	{
		Point empty = Point.Empty;
		if (!isRTL)
		{
			switch (prevAlignment)
			{
			case PopupRelativeAlignment.Default:
				newAlignment = PopupRelativeAlignment.BottomLeft;
				empty = new Point(parentBounds.Left, parentBounds.Bottom);
				break;
			case PopupRelativeAlignment.BottomLeft:
				newAlignment = PopupRelativeAlignment.BottomRight;
				empty = new Point(parentBounds.Right - 1, parentBounds.Bottom);
				break;
			case PopupRelativeAlignment.BottomRight:
				newAlignment = PopupRelativeAlignment.TopLeft;
				empty = new Point(parentBounds.Left, parentBounds.Top - 1);
				break;
			case PopupRelativeAlignment.TopLeft:
				newAlignment = PopupRelativeAlignment.TopRight;
				empty = new Point(parentBounds.Right - 1, parentBounds.Top - 1);
				break;
			default:
				newAlignment = PopupRelativeAlignment.Default;
				empty = new Point(parentBounds.Left, parentBounds.Bottom);
				break;
			}
		}
		else
		{
			switch (prevAlignment)
			{
			case PopupRelativeAlignment.Default:
				newAlignment = PopupRelativeAlignment.BottomRight;
				empty = new Point(parentBounds.Right - 1, parentBounds.Bottom);
				break;
			case PopupRelativeAlignment.BottomRight:
				newAlignment = PopupRelativeAlignment.BottomLeft;
				empty = new Point(parentBounds.Left, parentBounds.Bottom);
				break;
			case PopupRelativeAlignment.BottomLeft:
				newAlignment = PopupRelativeAlignment.TopRight;
				empty = new Point(parentBounds.Right - 1, parentBounds.Top - 1);
				break;
			case PopupRelativeAlignment.TopRight:
				newAlignment = PopupRelativeAlignment.TopLeft;
				empty = new Point(parentBounds.Left, parentBounds.Top - 1);
				break;
			default:
				newAlignment = PopupRelativeAlignment.Default;
				empty = new Point(parentBounds.Left, parentBounds.Bottom);
				break;
			}
		}
		return empty;
	}

	public static Point ComputeDefaultTopBottomAlignmentExt(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment, Control parent, Rectangle parentBounds, bool isRTL)
	{
		bool flag = false;
		Point empty = Point.Empty;
		if (parent.Parent != null)
		{
			Type type = parent.Parent.GetType();
			PropertyInfo property = type.GetProperty("RightToLeftLayout", BindingFlags.Instance | BindingFlags.Public | BindingFlags.GetProperty);
			if (property != null)
			{
				flag = (bool)property.GetValue(parent.Parent, null);
			}
		}
		if (!flag || !isRTL)
		{
			return ComputeDefaultTopBottomAlignment(prevAlignment, out newAlignment, parentBounds, isRTL);
		}
		switch (prevAlignment)
		{
		case PopupRelativeAlignment.Default:
			newAlignment = PopupRelativeAlignment.BottomRight;
			empty = new Point(parentBounds.Left + 1, parentBounds.Bottom);
			break;
		case PopupRelativeAlignment.BottomRight:
			newAlignment = PopupRelativeAlignment.BottomLeft;
			empty = new Point(parentBounds.Right, parentBounds.Bottom);
			break;
		case PopupRelativeAlignment.BottomLeft:
			newAlignment = PopupRelativeAlignment.TopRight;
			empty = new Point(parentBounds.Left + 1, parentBounds.Top - 1);
			break;
		case PopupRelativeAlignment.TopRight:
			newAlignment = PopupRelativeAlignment.TopLeft;
			empty = new Point(parentBounds.Right, parentBounds.Top - 1);
			break;
		default:
			newAlignment = PopupRelativeAlignment.Default;
			empty = new Point(parentBounds.Right, parentBounds.Bottom);
			break;
		}
		return empty;
	}

	public static Point ComputeDefaultLeftRightAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment, Rectangle parentBounds, bool isRTL)
	{
		Point empty = Point.Empty;
		if (!isRTL)
		{
			switch (prevAlignment)
			{
			case PopupRelativeAlignment.Default:
				newAlignment = PopupRelativeAlignment.RightTop;
				empty = new Point(parentBounds.Right, parentBounds.Top);
				break;
			case PopupRelativeAlignment.RightTop:
				newAlignment = PopupRelativeAlignment.RightBottom;
				empty = new Point(parentBounds.Right, parentBounds.Bottom - 1);
				break;
			case PopupRelativeAlignment.RightBottom:
				newAlignment = PopupRelativeAlignment.LeftTop;
				empty = new Point(parentBounds.Left - 1, parentBounds.Top);
				break;
			case PopupRelativeAlignment.LeftTop:
				newAlignment = PopupRelativeAlignment.LeftBottom;
				empty = new Point(parentBounds.Left - 1, parentBounds.Bottom - 1);
				break;
			default:
				newAlignment = PopupRelativeAlignment.Default;
				empty = new Point(parentBounds.Right, parentBounds.Top);
				break;
			}
		}
		else
		{
			switch (prevAlignment)
			{
			case PopupRelativeAlignment.Default:
				newAlignment = PopupRelativeAlignment.LeftTop;
				empty = new Point(parentBounds.Left - 1, parentBounds.Top);
				break;
			case PopupRelativeAlignment.LeftTop:
				newAlignment = PopupRelativeAlignment.LeftBottom;
				empty = new Point(parentBounds.Left - 1, parentBounds.Bottom - 1);
				break;
			case PopupRelativeAlignment.LeftBottom:
				newAlignment = PopupRelativeAlignment.RightTop;
				empty = new Point(parentBounds.Right, parentBounds.Top);
				break;
			case PopupRelativeAlignment.RightTop:
				newAlignment = PopupRelativeAlignment.RightBottom;
				empty = new Point(parentBounds.Right, parentBounds.Bottom - 1);
				break;
			default:
				newAlignment = PopupRelativeAlignment.Default;
				empty = new Point(parentBounds.Left - 1, parentBounds.Top);
				break;
			}
		}
		return empty;
	}

	public static Point ComputeDefaultLeftRightAlignmentExt(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment, Control parent, Rectangle parentBounds, bool isRTL)
	{
		bool flag = false;
		Point empty = Point.Empty;
		if (parent.Parent != null)
		{
			Type type = parent.Parent.GetType();
			PropertyInfo property = type.GetProperty("RightToLeftLayout", BindingFlags.Instance | BindingFlags.Public | BindingFlags.GetProperty);
			if (property != null)
			{
				flag = (bool)property.GetValue(parent.Parent, null);
			}
		}
		if (!flag || !isRTL)
		{
			return ComputeDefaultLeftRightAlignment(prevAlignment, out newAlignment, parentBounds, isRTL);
		}
		switch (prevAlignment)
		{
		case PopupRelativeAlignment.Default:
			newAlignment = PopupRelativeAlignment.LeftTop;
			empty = new Point(parentBounds.Right, parentBounds.Top);
			break;
		case PopupRelativeAlignment.LeftTop:
			newAlignment = PopupRelativeAlignment.LeftBottom;
			empty = new Point(parentBounds.Right, parentBounds.Bottom - 1);
			break;
		case PopupRelativeAlignment.LeftBottom:
			newAlignment = PopupRelativeAlignment.RightTop;
			empty = new Point(parentBounds.Left + 1, parentBounds.Top);
			break;
		case PopupRelativeAlignment.RightTop:
			newAlignment = PopupRelativeAlignment.RightBottom;
			empty = new Point(parentBounds.Left + 1, parentBounds.Bottom - 1);
			break;
		default:
			newAlignment = PopupRelativeAlignment.Default;
			empty = new Point(parentBounds.Right, parentBounds.Top);
			break;
		}
		return empty;
	}

	public static Point ComputeLocationFromAlignment(PopupRelativeAlignment align, Rectangle dropDownBounds)
	{
		Point empty = Point.Empty;
		switch (align)
		{
		case PopupRelativeAlignment.RightBottom:
		case PopupRelativeAlignment.BottomLeft:
		case PopupRelativeAlignment.BottomRight:
		case PopupRelativeAlignment.LeftBottom:
		case PopupRelativeAlignment.Default:
			empty.Y = dropDownBounds.Bottom - 1;
			break;
		default:
			empty.Y = dropDownBounds.Top;
			break;
		}
		switch (align)
		{
		case PopupRelativeAlignment.TopLeft:
		case PopupRelativeAlignment.BottomLeft:
		case PopupRelativeAlignment.LeftTop:
		case PopupRelativeAlignment.LeftBottom:
		case PopupRelativeAlignment.Default:
			empty.X = dropDownBounds.Left;
			break;
		default:
			empty.X = dropDownBounds.Right - 1;
			break;
		}
		return empty;
	}

	public static Point ComputeDefaultPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign, PopupRelativeAlignment firstPrefAlignment, PopupRelativeAlignment lastPrefAlignment, Rectangle parentBounds)
	{
		Point empty = Point.Empty;
		switch (prevAlign)
		{
		case PopupRelativeAlignment.Default:
			newAlign = firstPrefAlignment;
			return ComputeLocationFromAlignment(newAlign, parentBounds);
		case PopupRelativeAlignment.BottomLeft:
			newAlign = PopupRelativeAlignment.BottomRight;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.BottomRight:
			newAlign = PopupRelativeAlignment.RightBottom;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.RightBottom:
			newAlign = PopupRelativeAlignment.RightTop;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.RightTop:
			newAlign = PopupRelativeAlignment.TopRight;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.TopRight:
			newAlign = PopupRelativeAlignment.TopLeft;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.TopLeft:
			newAlign = PopupRelativeAlignment.LeftTop;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.LeftTop:
			newAlign = PopupRelativeAlignment.LeftBottom;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		case PopupRelativeAlignment.LeftBottom:
			newAlign = PopupRelativeAlignment.BottomLeft;
			if (newAlign != firstPrefAlignment)
			{
				return ComputeLocationFromAlignment(newAlign, parentBounds);
			}
			break;
		}
		newAlign = PopupRelativeAlignment.Default;
		return ComputeLocationFromAlignment(lastPrefAlignment, parentBounds);
	}

	public static Point[] ComputeDefaultBorderOverlapCue(PopupRelativeAlignment rAlign, Rectangle dropDownBounds)
	{
		if (rAlign == PopupRelativeAlignment.Default)
		{
			return null;
		}
		Point[] array = new Point[2];
		Point point = Point.Empty;
		_ = Point.Empty;
		switch (rAlign)
		{
		case PopupRelativeAlignment.BottomLeft:
		case PopupRelativeAlignment.BottomRight:
			point = new Point(dropDownBounds.Left + 1, dropDownBounds.Bottom - 1);
			break;
		case PopupRelativeAlignment.TopLeft:
		case PopupRelativeAlignment.TopRight:
			point = new Point(dropDownBounds.Left + 1, dropDownBounds.Top);
			break;
		case PopupRelativeAlignment.LeftTop:
		case PopupRelativeAlignment.LeftBottom:
			point = new Point(dropDownBounds.Left, dropDownBounds.Top + 1);
			break;
		case PopupRelativeAlignment.RightTop:
		case PopupRelativeAlignment.RightBottom:
			point = new Point(dropDownBounds.Right - 1, dropDownBounds.Top + 1);
			break;
		}
		array[0] = point;
		switch (rAlign)
		{
		case PopupRelativeAlignment.TopLeft:
		case PopupRelativeAlignment.TopRight:
		case PopupRelativeAlignment.BottomLeft:
		case PopupRelativeAlignment.BottomRight:
		{
			ref Point reference2 = ref array[1];
			reference2 = new Point(array[0].X + dropDownBounds.Width - 3, array[0].Y);
			break;
		}
		default:
		{
			ref Point reference = ref array[1];
			reference = new Point(array[0].X, array[0].Y + dropDownBounds.Height - 3);
			break;
		}
		}
		return array;
	}
}
