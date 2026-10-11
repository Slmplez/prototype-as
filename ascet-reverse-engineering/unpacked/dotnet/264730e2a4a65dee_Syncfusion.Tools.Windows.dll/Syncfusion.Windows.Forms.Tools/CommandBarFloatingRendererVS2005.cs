using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarFloatingRendererVS2005 : CommandBarFloatingRenderer
{
	public CommandBarFloatingRendererVS2005(CommandBar commandBar)
		: base(commandBar)
	{
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = CmdBar.Text;
		Color floatCaptionColor = VS2005Colors.FloatCaptionColor;
		Font floatinCaptionFont = CmdBar.GetFloatinCaptionFont();
		CommandBarPainter.PaintFloatingText(g, rect, text, floatinCaptionFont, floatCaptionColor, bRTL);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Color floatBackgroundColor = VS2005Colors.FloatBackgroundColor;
		Color floatCommandBarLightColor = VS2005Colors.FloatCommandBarLightColor;
		Color floatCommandBarDarkColor = VS2005Colors.FloatCommandBarDarkColor;
		Color floatLightBorderColor = VS2005Colors.FloatLightBorderColor;
		Rectangle captionRect = CmdBar.CaptionRect;
		CommandBarPainter.PaintFloatingBackground(barRect: new Rectangle(rect.Left + 1, rect.Top + captionRect.Height + 1, rect.Width - 2, rect.Height - 2), g: g, clientRect: rect, backColor: floatBackgroundColor, borderColor: floatLightBorderColor, startColor: floatCommandBarLightColor, endColor: floatCommandBarDarkColor);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color empty3 = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = VS2005Colors.MenuSelectedItemBorderColor;
			empty2 = VS2005Colors.MenuSelectedItemColor;
			empty3 = SystemColors.ControlText;
			break;
		case CBButtonState.Pressed:
			empty = VS2005Colors.FloatPressButtonBorderColor;
			empty2 = VS2005Colors.FloatPressButtonColor;
			empty3 = SystemColors.ControlText;
			break;
		default:
			empty = Color.Empty;
			empty2 = Color.Empty;
			empty3 = Color.White;
			break;
		}
		CommandBarPainter.PaintFloatingDropDownButton(g, rect, empty, empty2, empty3);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color empty3 = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = VS2005Colors.MenuSelectedItemBorderColor;
			empty2 = VS2005Colors.MenuSelectedItemColor;
			empty3 = SystemColors.ControlText;
			break;
		case CBButtonState.Pressed:
			empty = VS2005Colors.BarItemPressBorderColor;
			empty2 = VS2005Colors.BarItemPressLightColor;
			empty3 = SystemColors.ControlText;
			break;
		default:
			empty = Color.Empty;
			empty2 = Color.Empty;
			empty3 = Color.White;
			break;
		}
		CommandBarPainter.PaintFloatingCloseButton(g, rect, empty, empty2, empty3);
	}
}
