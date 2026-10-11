using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarRendererOffice2003 : CommandBarRenderer
{
	public CommandBarRendererOffice2003(CommandBar commandBar)
		: base(commandBar)
	{
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = CmdBar.Text;
		Font font = CmdBar.Font;
		Color foreColor = CmdBar.ForeColor;
		CommandBarPainter.PaintDockedText(g, rect, text, font, foreColor, bRTL, bVertical);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		if (!IsMainCommandBar())
		{
			CommandBarPainter.PaintDockedBackground(g, bRTL, bVertical, rect, Office2003Colors.MenuMarginColorLight, Office2003Colors.MenuMarginColorDark, Office2003Colors.ControlBorderColorDark);
		}
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color chevronColor = CmdBar.ChevronColor;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			empty = ((bVertical && bRTL) ? Office2003Colors.MenuItemHotColorDark : Office2003Colors.MenuItemHotColorLight);
			empty2 = ((bVertical && bRTL) ? Office2003Colors.MenuItemHotColorLight : Office2003Colors.MenuItemHotColorDark);
			break;
		case CBButtonState.Pressed:
			empty = ((bVertical && bRTL) ? Office2003Colors.MenuItemPressedColorLight : Office2003Colors.MenuItemPressedColorDark);
			empty2 = ((bVertical && bRTL) ? Office2003Colors.MenuItemPressedColorDark : Office2003Colors.MenuItemPressedColorLight);
			break;
		default:
			empty = ((bVertical && bRTL) ? Office2003Colors.CommandBarDropDownColorDark : Office2003Colors.CommandBarDropDownColorLight);
			empty2 = ((bVertical && bRTL) ? Office2003Colors.CommandBarDropDownColorLight : Office2003Colors.CommandBarDropDownColorDark);
			break;
		}
		CommandBarPainter.PaintDropDownButton(g, rect, bRTL, bVertical, bShowChevron, empty, empty2, chevronColor, bShowArrow);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		CommandBarPainter.PaintGripper(g, rect, bRTL, bVertical, Color.White, Office2003Colors.ControlGripperColor);
	}
}
