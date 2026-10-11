using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarFloatingRendererOffice2003 : CommandBarFloatingRenderer
{
	public CommandBarFloatingRendererOffice2003(CommandBar commandBar)
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
		Color floatingCommandBarCaptionColor = Office2003Colors.FloatingCommandBarCaptionColor;
		Color menuMarginColorLight = Office2003Colors.MenuMarginColorLight;
		Color menuMarginColorDark = Office2003Colors.MenuMarginColorDark;
		Color menuMarginColorLight2 = Office2003Colors.MenuMarginColorLight;
		Rectangle captionRect = CmdBar.CaptionRect;
		CommandBarPainter.PaintFloatingBackground(barRect: new Rectangle(rect.Left + 1, rect.Top + captionRect.Height + 1, rect.Width - 2, rect.Height - 2), g: g, clientRect: rect, backColor: floatingCommandBarCaptionColor, borderColor: menuMarginColorLight2, startColor: menuMarginColorLight, endColor: menuMarginColorDark);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color empty3 = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			if (Office2003Colors.UseThemedColors)
			{
				empty = Office2003Colors.FloatingCommandBarCaptionColor;
				empty2 = Office2003Colors.SelColor;
				empty3 = SystemColors.ControlText;
			}
			else
			{
				empty = MenuColors.SelBorderColor;
				empty2 = MenuColors.SelColor;
				empty3 = SystemColors.ControlText;
			}
			break;
		case CBButtonState.Pressed:
			if (Office2003Colors.UseThemedColors)
			{
				empty = Office2003Colors.FloatingCommandBarCaptionColor;
				empty2 = Office2003Colors.FloatingCommandBarItemPressedColor;
				empty3 = SystemColors.ControlText;
			}
			else
			{
				empty = MenuColors.DropDownBorderColor;
				empty2 = SystemColors.Control;
				empty3 = SystemColors.ControlText;
			}
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
			empty = Office2003Colors.FloatingCommandBarCaptionColor;
			empty2 = Office2003Colors.SelColor;
			empty3 = SystemColors.ControlText;
			break;
		case CBButtonState.Pressed:
			empty = Office2003Colors.ControlBorderColorDark;
			empty2 = Office2003Colors.PressedSelColor;
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
