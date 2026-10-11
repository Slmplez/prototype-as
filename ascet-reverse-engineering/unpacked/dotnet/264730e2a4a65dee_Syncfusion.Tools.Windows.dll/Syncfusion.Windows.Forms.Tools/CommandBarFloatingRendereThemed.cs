using System;
using System.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarFloatingRendereThemed : CommandBarFloatingRenderer
{
	protected ThemedControlDrawing m_tdWindow;

	public CommandBarFloatingRendereThemed(CommandBar commandBar)
		: base(commandBar)
	{
		m_tdWindow = new ThemedControlDrawing("WINDOW");
	}

	protected override void DrawText(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		string text = CmdBar.Text;
		Color themedCaptionColor = GetThemedCaptionColor();
		Font themedCaptionFont = GetThemedCaptionFont();
		CommandBarPainter.PaintFloatingText(g, rect, text, themedCaptionFont, themedCaptionColor, bRTL);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		Region clip = g.Clip;
		Region region = new Region(CmdBar.ClientRectangle);
		region.Exclude(CmdBar.CaptionRect);
		g.ExcludeClip(region);
		IntPtr hdc = g.GetHdc();
		try
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT prc = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(CmdBar.ClientRectangle);
			Syncfusion.Runtime.InteropServices.NativeMethods.DrawThemeParentBackground(CmdBar.Handle, hdc, ref prc);
		}
		finally
		{
			g.ReleaseHdc(hdc);
		}
		g.Clip = clip;
		Rectangle textRectangle = GetTextRectangle();
		textRectangle.X = rect.X + 1;
		textRectangle.Width = rect.Width - 2;
		m_tdWindow.DrawThemeBackground(g, 2, 2, textRectangle);
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		int stateID = 1;
		Rectangle rect2 = rect;
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
		CommandBarPainter.PaintFloatingDropDownArrowsThemed(g, rect, bRTL);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
	}

	protected override void DrawCloseButton(Graphics g, Rectangle rect, CBButtonState state)
	{
		Rectangle closeButtonRect = CmdBar.CloseButtonRect;
		int stateID = 1;
		if (CmdBar.CmdBarHilight == CBButtons.Close)
		{
			stateID = 2;
		}
		else if (CmdBar.CmdBarHilight == (CBButtons.Close | CBButtons.Pressed))
		{
			stateID = 3;
		}
		m_tdWindow.DrawThemeBackground(g, 19, stateID, Rectangle.Inflate(closeButtonRect, -1, -1));
	}

	protected override void OnDispose(bool diposing)
	{
		if (diposing)
		{
			m_tdWindow.Dispose();
		}
		base.OnDispose(diposing);
	}

	private Color GetThemedCaptionColor()
	{
		ulong color = 0uL;
		Syncfusion.Runtime.InteropServices.NativeMethods.GetThemeColor(m_tdWindow.HTheme, 3, 2, 3803, ref color);
		int rgb = Syncfusion.Runtime.InteropServices.NativeMethods.COLORREFToRGB((int)color);
		Color color2 = Color.FromArgb(Syncfusion.Runtime.InteropServices.NativeMethods.GetRValue(rgb), Syncfusion.Runtime.InteropServices.NativeMethods.GetGValue(rgb), Syncfusion.Runtime.InteropServices.NativeMethods.GetBValue(rgb));
		if (color2 == Color.Empty)
		{
			color2 = CmdBar.ForeColor;
		}
		return color2;
	}

	private Font GetThemedCaptionFont()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.LOGFONT lf = default(Syncfusion.Runtime.InteropServices.NativeMethods.LOGFONT);
		Syncfusion.Runtime.InteropServices.NativeMethods.GetThemeSysFont(m_tdWindow.HTheme, 801, ref lf);
		Font font = Font.FromLogFont(lf);
		if (font == null)
		{
			font = CmdBar.GetFloatinCaptionFont();
		}
		return font;
	}
}
