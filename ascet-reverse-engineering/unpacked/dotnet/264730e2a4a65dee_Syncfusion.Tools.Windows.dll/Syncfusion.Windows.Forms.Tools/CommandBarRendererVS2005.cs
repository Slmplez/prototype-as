using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarRendererVS2005 : CommandBarRenderer
{
	public CommandBarRendererVS2005(CommandBar commandBar)
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
			CommandBarPainter.PaintDockedBackground(g, bRTL, bVertical, rect, VS2005Colors.CommandBarLightColor, VS2005Colors.CommandBarDarkColor, VS2005Colors.CommandBarBorderColor);
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
			empty = ((bVertical && bRTL) ? VS2005Colors.DropDownHighlightDarkColor : VS2005Colors.DropDownHighlightLightColor);
			empty2 = ((bVertical && bRTL) ? VS2005Colors.DropDownHighlightLightColor : VS2005Colors.DropDownHighlightDarkColor);
			break;
		case CBButtonState.Pressed:
			empty = ((bVertical && bRTL) ? VS2005Colors.DropDownPressedDarkColor : VS2005Colors.DropDownPressedLightColor);
			empty2 = ((bVertical && bRTL) ? VS2005Colors.DropDownPressedLightColor : VS2005Colors.DropDownPressedDarkColor);
			break;
		default:
			empty = ((bVertical && bRTL) ? VS2005Colors.CommandBarDropDownDarkColor : VS2005Colors.CommandBarDropDownLightColor);
			empty2 = ((bVertical && bRTL) ? VS2005Colors.CommandBarDropDownLightColor : VS2005Colors.CommandBarDropDownDarkColor);
			break;
		}
		CommandBarPainter.PaintDropDownButton(g, rect, bRTL, bVertical, bShowChevron, empty, empty2, chevronColor, bShowArrow);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		CommandBarPainter.PaintGripper(g, rect, bRTL, bVertical, Color.White, Office2003Colors.ControlGripperColor);
	}
}
