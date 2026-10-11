using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarControlBarRenderer : MultilineBarRenderer
{
	public BarControlBarRenderer(IBarControl parent)
		: base(parent)
	{
	}

	protected override CustomizingPopupMenu CreateCustomizationPopup()
	{
		if (base.Bar.Manager == null)
		{
			return null;
		}
		return new BarControlCustomizingMenu();
	}

	public override PopupRelativeAlignment GetFirstPopupAlignPreference()
	{
		return parent.GetControl().Dock switch
		{
			DockStyle.Left => PopupRelativeAlignment.RightBottom, 
			DockStyle.Bottom => PopupRelativeAlignment.TopRight, 
			DockStyle.Right => PopupRelativeAlignment.LeftBottom, 
			_ => PopupRelativeAlignment.BottomLeft, 
		};
	}

	public Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign, bool bIsRightToLeft)
	{
		if (GetCurrentRenderer() is DropDownBarItemRenderer dropDownBarItemRenderer)
		{
			return dropDownBarItemRenderer.GetLocationForPopupAlignment(prevAlign, out newAlign, bIsRightToLeft);
		}
		newAlign = PopupRelativeAlignment.Default;
		return Point.Empty;
	}

	public override void GetPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		_ = preferredSize.Width;
		if (base.IsVerticallyAligned)
		{
			_ = preferredSize.Height;
		}
		base.GetPreferredSize(gp, ref preferredSize);
		if (base.IsVerticallyAligned)
		{
			preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
		}
	}

	protected override bool ProcessKeyDown(Keys key)
	{
		bool result = base.ProcessKeyDown(key);
		if (key == Keys.Tab)
		{
			result = false;
		}
		return result;
	}
}
