using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public class BarLayoutInfo : LayoutInfo
{
	public readonly int Index;

	public readonly LayoutInfo Text;

	public readonly LayoutInfo DropDown;

	public readonly bool ShowShevron;

	public BarLayoutInfo(int index, Rectangle bounds, Rectangle textBounds, Rectangle dropDownBounds, bool showShevron)
		: base(HitTestAreas.Bar, bounds)
	{
		Index = index;
		Text = new LayoutInfo(HitTestAreas.BarText, textBounds);
		DropDown = new LayoutInfo(HitTestAreas.BarDropDown, dropDownBounds);
		ShowShevron = showShevron;
	}

	public void OffsetBoundsX(int offset)
	{
		if (!Bounds.IsEmpty)
		{
			Bounds.X += offset;
		}
		if (!Text.Bounds.IsEmpty)
		{
			Text.Bounds.X += offset;
		}
		if (!DropDown.Bounds.IsEmpty)
		{
			DropDown.Bounds.X += offset;
		}
	}

	public LayoutInfo HitTest(Point pt)
	{
		LayoutInfo result = this;
		LayoutInfo[] array = new LayoutInfo[2] { Text, DropDown };
		LayoutInfo[] array2 = array;
		foreach (LayoutInfo layoutInfo in array2)
		{
			if (layoutInfo.Bounds.Contains(pt))
			{
				result = layoutInfo;
				break;
			}
		}
		return result;
	}
}
