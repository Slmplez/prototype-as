using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarFloatingRendererOfficeXP : CommandBarFloatingRenderer
{
	public CommandBarFloatingRendererOfficeXP(CommandBar commandBar)
		: base(commandBar)
	{
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = CmdBar.Text;
		Color controlText = SystemColors.ControlText;
		Font floatinCaptionFont = CmdBar.GetFloatinCaptionFont();
		CommandBarPainter.PaintFloatingText(g, rect, text, floatinCaptionFont, controlText, bRTL);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Color floatingCommandBarCaptionColor = MenuColors.FloatingCommandBarCaptionColor;
		Color commandBarBackColor = MenuColors.CommandBarBackColor;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Rectangle captionRect = CmdBar.CaptionRect;
		CommandBarPainter.PaintFloatingBackground(barRect: new Rectangle(rect.Left + 1, rect.Top + captionRect.Height + 1, rect.Width - 2, rect.Height - 2), g: g, clientRect: rect, backColor: floatingCommandBarCaptionColor, borderColor: commandBarBackColor, startColor: empty, endColor: empty2);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color controlText = SystemColors.ControlText;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = MenuColors.SelBorderColor;
			empty2 = MenuColors.SelColor;
			break;
		case CBButtonState.Pressed:
			empty = MenuColors.DropDownBorderColor;
			empty2 = CmdBar.BackColor;
			break;
		default:
			empty = Color.Empty;
			empty2 = Color.Empty;
			break;
		}
		CommandBarPainter.PaintFloatingDropDownButton(g, rect, empty, empty2, controlText);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color controlText = SystemColors.ControlText;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = MenuColors.SelBorderColor;
			empty2 = MenuColors.SelColor;
			break;
		case CBButtonState.Pressed:
			empty = MenuColors.DropDownBorderColor;
			empty2 = MenuColors.PressedSelColor;
			break;
		default:
			empty = Color.Empty;
			empty2 = Color.Empty;
			break;
		}
		CommandBarPainter.PaintFloatingCloseButton(g, rect, empty, empty2, controlText);
	}
}
