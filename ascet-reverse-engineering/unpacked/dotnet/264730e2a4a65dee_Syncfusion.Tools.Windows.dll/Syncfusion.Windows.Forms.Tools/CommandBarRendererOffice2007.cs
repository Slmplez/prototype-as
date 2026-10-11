using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarRendererOffice2007 : CommandBarRenderer
{
	private Office2007Colors ColorTable => CmdBar.Office2007ColorTable;

	public CommandBarRendererOffice2007(CommandBar commandBar)
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
			CommandBarPainter.PaintDockedBackground(g, bRTL, bVertical, rect, ColorTable.CommandBarLightColor, ColorTable.CommandBarDarkColor, ColorTable.CommandBarBorderColor);
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
			empty = ((bVertical && bRTL) ? ColorTable.DropDownHighlightDarkColor : ColorTable.DropDownHighlightLightColor);
			empty2 = ((bVertical && bRTL) ? ColorTable.DropDownHighlightLightColor : ColorTable.DropDownHighlightDarkColor);
			break;
		case CBButtonState.Pressed:
			empty = ((bVertical && bRTL) ? ColorTable.DropDownPressedDarkColor : ColorTable.DropDownPressedLightColor);
			empty2 = ((bVertical && bRTL) ? ColorTable.DropDownPressedLightColor : ColorTable.DropDownPressedDarkColor);
			break;
		default:
			empty = ((bVertical && bRTL) ? ColorTable.DropDownDarkColor : ColorTable.DropDownLightColor);
			empty2 = ((bVertical && bRTL) ? ColorTable.DropDownLightColor : ColorTable.DropDownDarkColor);
			break;
		}
		CommandBarPainter.PaintDropDownButton(g, rect, bRTL, bVertical, bShowChevron, empty, empty2, chevronColor, bShowArrow);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		CommandBarPainter.PaintGripper(g, rect, bRTL, bVertical, Color.White, ColorTable.CommandBarBorderColor);
	}
}
