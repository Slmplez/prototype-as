using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBarRendererOffice2003 : ControlBarRenderer
{
	public ControlBarRendererOffice2003(ControlBar controlBar)
		: base(controlBar)
	{
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = base.ControlBar.Text;
		Color foreColor = base.ControlBar.ForeColor;
		Font font = base.ControlBar.Font;
		CommandBarPainter.PaintControlBarText(g, rect, text, font, foreColor, bRTL);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVerticalt)
	{
		Color dockBarColorLight = Office2003Colors.DockBarColorLight;
		Color menuMarginColorLight = Office2003Colors.MenuMarginColorLight;
		Color menuMarginColorDark = Office2003Colors.MenuMarginColorDark;
		Color menuItemHotColorLight = Office2003Colors.MenuItemHotColorLight;
		Color menuItemHotColorDark = Office2003Colors.MenuItemHotColorDark;
		Rectangle captionRect = base.ControlBar.CaptionRect;
		bool bContainFocus = base.ControlBar.ClientControl != null && base.ControlBar.ClientControl.ContainsFocus;
		CommandBarPainter.PaintControlBarBackground(g, rect, captionRect, bRTL, bContainFocus, dockBarColorLight, menuMarginColorLight, menuMarginColorDark, menuItemHotColorLight, menuItemHotColorDark);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color borderColor = Color.Empty;
		Color fillColor = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			borderColor = Office2003Colors.FloatingCommandBarCaptionColor;
			fillColor = Office2003Colors.SelColor;
			break;
		case CBButtonState.Pressed:
			borderColor = Office2003Colors.FloatingCommandBarCaptionColor;
			fillColor = Office2003Colors.FloatingCommandBarItemPressedColor;
			break;
		}
		CommandBarPainter.PaintControlBarDropDown(g, rect, bRTL, borderColor, fillColor);
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = Office2003Colors.FloatingCommandBarCaptionColor;
			empty2 = Office2003Colors.SelColor;
			break;
		case CBButtonState.Pressed:
			empty = Office2003Colors.ControlBorderColorDark;
			empty2 = Office2003Colors.PressedSelColor;
			break;
		default:
			empty = Color.Empty;
			empty2 = Color.Empty;
			break;
		}
		CommandBarPainter.PaintControlBarCloseButton(g, rect, empty, empty2);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		CommandBarPainter.PaintGripper(g, rect, bRTL, bVertical: false, Color.White, Office2003Colors.ControlGripperColor);
	}
}
