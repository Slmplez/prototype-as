using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBarRendererOfficeXP : ControlBarRenderer
{
	public ControlBarRendererOfficeXP(ControlBar controlBar)
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
		if (base.ControlBar.ClientControl != null && base.ControlBar.ClientControl.ContainsFocus)
		{
			Rectangle captionRect = CmdBar.CaptionRect;
			using Brush brush = new SolidBrush(SystemColors.ActiveCaption);
			g.FillRectangle(brush, captionRect);
		}
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		Color borderColor = Color.Empty;
		Color fillColor = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			borderColor = MenuColors.SelBorderColor;
			fillColor = MenuColors.SelColor;
			break;
		case CBButtonState.Pressed:
			borderColor = MenuColors.DropDownBorderColor;
			fillColor = SystemColors.Control;
			break;
		}
		CommandBarPainter.PaintControlBarDropDown(g, rect, bRTL, borderColor, fillColor);
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Color borderColor = Color.Empty;
		Color fillColor = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			borderColor = MenuColors.SelBorderColor;
			fillColor = MenuColors.SelColor;
			break;
		case CBButtonState.Pressed:
			borderColor = MenuColors.DropDownBorderColor;
			fillColor = MenuColors.PressedSelColor;
			break;
		}
		CommandBarPainter.PaintControlBarCloseButton(g, rect, borderColor, fillColor);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Color floatingCommandBarCaptionColor = MenuColors.FloatingCommandBarCaptionColor;
		int controlBarCaptionHeight = base.ControlBar.ControlBarCaptionHeight;
		bool floating = CmdBar.Floating;
		CommandBarPainter.PaintControlBarGripperOfficeXP(g, rect, controlBarCaptionHeight, bRTL, floating, floatingCommandBarCaptionColor);
	}
}
