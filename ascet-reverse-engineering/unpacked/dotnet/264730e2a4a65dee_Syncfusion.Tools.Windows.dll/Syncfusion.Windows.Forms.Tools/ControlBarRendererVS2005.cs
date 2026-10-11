using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBarRendererVS2005 : ControlBarRenderer
{
	public ControlBarRendererVS2005(ControlBar controlBar)
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
		Color commandBarLightColor = VS2005Colors.CommandBarLightColor;
		Color commandBarLightColor2 = VS2005Colors.CommandBarLightColor;
		Color commandBarDarkColor = VS2005Colors.CommandBarDarkColor;
		Color barItemHighlightLightColor = VS2005Colors.BarItemHighlightLightColor;
		Color barItemHighlightDarkColor = VS2005Colors.BarItemHighlightDarkColor;
		Rectangle captionRect = base.ControlBar.CaptionRect;
		bool bContainFocus = base.ControlBar.ClientControl != null && base.ControlBar.ClientControl.ContainsFocus;
		CommandBarPainter.PaintControlBarBackground(g, rect, captionRect, bRTL, bContainFocus, commandBarLightColor, commandBarLightColor2, commandBarDarkColor, barItemHighlightLightColor, barItemHighlightDarkColor);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color borderColor = Color.Empty;
		Color fillColor = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			borderColor = VS2005Colors.MenuSelectedItemBorderColor;
			fillColor = VS2005Colors.MenuSelectedItemColor;
			break;
		case CBButtonState.Pressed:
			borderColor = VS2005Colors.FloatPressButtonBorderColor;
			fillColor = VS2005Colors.FloatPressButtonColor;
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
			empty = VS2005Colors.MenuSelectedItemBorderColor;
			empty2 = VS2005Colors.MenuSelectedItemColor;
			break;
		case CBButtonState.Pressed:
			empty = VS2005Colors.BarItemPressBorderColor;
			empty2 = VS2005Colors.BarItemPressLightColor;
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
