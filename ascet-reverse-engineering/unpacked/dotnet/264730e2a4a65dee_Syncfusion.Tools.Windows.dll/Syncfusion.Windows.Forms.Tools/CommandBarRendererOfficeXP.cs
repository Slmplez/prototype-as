using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarRendererOfficeXP : CommandBarRenderer
{
	public CommandBarRendererOfficeXP(CommandBar commandBar)
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
		Color backColor = CmdBar.cdbParent.BackColor;
		DockStyle dockState = ((CmdBar.cdbParent == null) ? DockStyle.Top : CmdBar.cdbParent.Dock);
		bool bDrawTopLine = CmdBar.nRCIndex != 0 || !CmdBar.bFullRow || !CmdBar.bDisableFloating || !CmdBar.bHideChevron || !CmdBar.bHideDropDown || !CmdBar.bHideGripper;
		CommandBarPainter.PaintDockedBackgroundOfficeXP(g, bRTL, dockState, rect, backColor, bDrawTopLine);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color chevronColor = CmdBar.ChevronColor;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
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
		CommandBarPainter.PaintDropDownButtonOfficeXP(g, rect, bRTL, bVertical, bShowChevron, empty, empty2, chevronColor, bShowArrow);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Color floatingCommandBarCaptionColor = MenuColors.FloatingCommandBarCaptionColor;
		DockStyle dockState = ((CmdBar.cdbParent == null) ? DockStyle.Top : CmdBar.cdbParent.Dock);
		CommandBarPainter.PaintGripperOfficeXP(g, rect, bRTL, dockState, floatingCommandBarCaptionColor);
	}

	protected override Rectangle GetDropDownRect()
	{
		return CmdBar.DropDownRect;
	}
}
