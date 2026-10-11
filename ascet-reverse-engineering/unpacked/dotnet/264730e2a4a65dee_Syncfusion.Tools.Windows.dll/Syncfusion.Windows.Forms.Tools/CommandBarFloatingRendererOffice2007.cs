using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarFloatingRendererOffice2007 : CommandBarFloatingRenderer
{
	private Office2007Colors ColorTable => CmdBar.Office2007ColorTable;

	public CommandBarFloatingRendererOffice2007(CommandBar commandBar)
		: base(commandBar)
	{
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = CmdBar.Text;
		Color white = Color.White;
		Font floatinCaptionFont = CmdBar.GetFloatinCaptionFont();
		CommandBarPainter.PaintFloatingText(g, rect, text, floatinCaptionFont, white, bRTL);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Color floatBackgroundColor = ColorTable.FloatBackgroundColor;
		Color floatCommandBarLightColor = ColorTable.FloatCommandBarLightColor;
		Color floatCommandBarDarkColor = ColorTable.FloatCommandBarDarkColor;
		Color floatLightBorderColor = ColorTable.FloatLightBorderColor;
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
			empty = ColorTable.FloatHighlightButtonBorderColor;
			empty2 = ColorTable.FloatHighlightButtonColor;
			empty3 = SystemColors.ControlText;
			break;
		case CBButtonState.Pressed:
			empty = ColorTable.FloatPressButtonBorderColor;
			empty2 = ColorTable.FloatPressButtonColor;
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
			empty = ColorTable.FloatHighlightButtonBorderColor;
			empty2 = ColorTable.FloatHighlightButtonColor;
			empty3 = SystemColors.ControlText;
			break;
		case CBButtonState.Pressed:
			empty = ColorTable.FloatPressCloseButtonBorderColor;
			empty2 = ColorTable.FloatPressCloseButtonColor;
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
