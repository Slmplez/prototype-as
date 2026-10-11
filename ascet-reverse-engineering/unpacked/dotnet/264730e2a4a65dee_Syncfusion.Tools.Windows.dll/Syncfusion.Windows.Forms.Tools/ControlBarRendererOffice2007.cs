using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBarRendererOffice2007 : ControlBarRenderer
{
	private Office2007Colors ColorTable => CmdBar.Office2007ColorTable;

	public ControlBarRendererOffice2007(ControlBar controlBar)
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
		Color commandBarLightColor = ColorTable.CommandBarLightColor;
		Color commandBarLightColor2 = ColorTable.CommandBarLightColor;
		Color commandBarDarkColor = ColorTable.CommandBarDarkColor;
		Color menuItemLightColor = ColorTable.MenuItemLightColor;
		Color menuItemDarkColor = ColorTable.MenuItemDarkColor;
		Rectangle captionRect = base.ControlBar.CaptionRect;
		bool bContainFocus = base.ControlBar.ClientControl != null && base.ControlBar.ClientControl.ContainsFocus;
		CommandBarPainter.PaintControlBarBackground(g, rect, captionRect, bRTL, bContainFocus, commandBarLightColor, commandBarLightColor2, commandBarDarkColor, menuItemLightColor, menuItemDarkColor);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color borderColor = Color.Empty;
		Color fillColor = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			borderColor = ColorTable.FloatHighlightButtonBorderColor;
			fillColor = ColorTable.FloatHighlightButtonColor;
			break;
		case CBButtonState.Pressed:
			borderColor = ColorTable.FloatPressButtonBorderColor;
			fillColor = ColorTable.FloatPressButtonColor;
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
			empty = ColorTable.FloatHighlightButtonBorderColor;
			empty2 = ColorTable.FloatHighlightButtonColor;
			break;
		case CBButtonState.Pressed:
			empty = ColorTable.FloatPressCloseButtonBorderColor;
			empty2 = ColorTable.FloatPressCloseButtonColor;
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
		CommandBarPainter.PaintGripper(g, rect, bRTL, bVertical: false, Color.White, ColorTable.CommandBarBorderColor);
	}
}
