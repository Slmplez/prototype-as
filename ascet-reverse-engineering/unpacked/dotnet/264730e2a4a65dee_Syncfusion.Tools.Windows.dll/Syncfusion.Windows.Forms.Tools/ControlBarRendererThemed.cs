using System;
using System.Drawing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBarRendererThemed : ControlBarRenderer
{
	protected ThemedControlDrawing m_tdRebar;

	protected ThemedControlDrawing m_tdWindow;

	public ControlBarRendererThemed(ControlBar controlBar)
		: base(controlBar)
	{
		m_tdRebar = new ThemedControlDrawing("REBAR");
		m_tdWindow = new ThemedControlDrawing("WINDOW");
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
		using (CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(g, rect, bRTL))
		{
			Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
			IntPtr hdc = virtualGfx.GetHdc();
			try
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.RECT prc = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(cMirroredDrawer.VirtualBounds);
				Syncfusion.Runtime.InteropServices.NativeMethods.DrawThemeParentBackground(CmdBar.Handle, hdc, ref prc);
			}
			finally
			{
				virtualGfx.ReleaseHdc(hdc);
			}
		}
		if (base.ControlBar.ClientControl != null && base.ControlBar.ClientControl.ContainsFocus)
		{
			Rectangle captionRect = CmdBar.CaptionRect;
			Brush brush = (brush = new SolidBrush(SystemColors.ActiveCaption));
			g.FillRectangle(brush, captionRect);
			brush.Dispose();
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
			fillColor = CmdBar.BackColor;
			break;
		}
		CommandBarPainter.PaintControlBarDropDownThemed(g, rect, borderColor, fillColor);
		int captionHeight = CommandBar.CaptionHeight;
		Rectangle rect2 = new Rectangle(bRTL ? rect.Left : (rect.Right - captionHeight), rect.Top, captionHeight, captionHeight);
		int stateID = 1;
		if (CmdBar.CmdBarHilight == CBButtons.DropDown)
		{
			stateID = 2;
		}
		else if (CmdBar.CmdBarHilight == (CBButtons.DropDown | CBButtons.Pressed))
		{
			stateID = 3;
		}
		m_tdWindow.DrawThemeBackground(g, 15, stateID, Rectangle.Inflate(rect2, -1, -1));
		RectangleF clipBounds = g.ClipBounds;
		g.SetClip(Rectangle.Inflate(rect2, -3, -3));
		m_tdWindow.DrawThemeBackground(g, 15, stateID, new Rectangle(rect2.Left, rect2.Top, rect2.Width, rect2.Height + 10));
		g.SetClip(clipBounds);
		if (bShowArrow)
		{
			CommandBarPainter.PaintFloatingDropDownArrowsThemed(g, rect2, bRTL);
		}
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Rectangle closeButtonRect = base.ControlBar.CloseButtonRect;
		Color color = Color.Empty;
		switch (state)
		{
		case CBButtonState.Hot:
			color = MenuColors.SelBorderColor;
			break;
		case CBButtonState.Pressed:
			color = Office2003Colors.PressedSelColor;
			break;
		}
		CommandBarPainter.PaintControlBarDropDownThemed(g, rect, color, color);
		int stateID = 1;
		if (base.ControlBar.CmdBarHilight == CBButtons.Close)
		{
			stateID = 2;
		}
		else if (base.ControlBar.CmdBarHilight == (CBButtons.Close | CBButtons.Pressed))
		{
			stateID = 3;
		}
		m_tdWindow.DrawThemeBackground(g, 19, stateID, Rectangle.Inflate(closeButtonRect, -1, -1));
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		int right = CmdBar.ClientRectangle.Right;
		int num = 2;
		m_tdRebar.DrawMirrored = bRTL;
		m_tdRebar.DrawThemeBackground(g, 1, 0, new Rectangle(bRTL ? (right - num - 2 - 6) : (num + 2), 2, 6, base.ControlBar.ControlBarCaptionHeight - 3));
	}

	protected override void OnDispose(bool diposing)
	{
		if (diposing)
		{
			m_tdRebar.Dispose();
			m_tdWindow.Dispose();
		}
		base.OnDispose(diposing);
	}
}
