using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class CommandBarRendererThemed : CommandBarRenderer
{
	protected ThemedControlDrawing m_tdRebar;

	protected ThemedControlDrawing m_tdToolbar;

	public CommandBarRendererThemed(CommandBar commandBar)
		: base(commandBar)
	{
		m_tdRebar = new ThemedControlDrawing("REBAR");
		m_tdToolbar = new ThemedControlDrawing("TOOLBAR");
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
		Rectangle rectangle = rect;
		IntPtr hdc = g.GetHdc();
		try
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT prc = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(rect);
			Syncfusion.Runtime.InteropServices.NativeMethods.DrawThemeParentBackground(CmdBar.Handle, hdc, ref prc);
		}
		finally
		{
			g.ReleaseHdc(hdc);
		}
		Pen pen = new Pen(ControlPaint.LightLight(SystemColors.ControlDark), 1f);
		Pen pen2 = new Pen(SystemColors.ControlLightLight, 1f);
		if (bVertical)
		{
			if (bRTL)
			{
				g.DrawLine(pen, rectangle.Left + 2, rectangle.Top + 1, rectangle.Right - 3, rectangle.Top + 1);
				g.DrawLine(pen2, rectangle.Left + 2, rectangle.Top, rectangle.Right - 3, rectangle.Top);
			}
			else
			{
				g.DrawLine(pen, rectangle.Left + 2, rectangle.Bottom - 2, rectangle.Right - 3, rectangle.Bottom - 2);
				g.DrawLine(pen2, rectangle.Left + 2, rectangle.Bottom - 1, rectangle.Right - 3, rectangle.Bottom - 1);
			}
		}
		else if (bRTL)
		{
			g.DrawLine(pen, rectangle.Left + 1, rectangle.Top + 2, rectangle.Left + 1, rectangle.Bottom - 3);
			g.DrawLine(pen2, rectangle.Left, rectangle.Top + 2, rectangle.Left, rectangle.Bottom - 3);
		}
		else
		{
			g.DrawLine(pen, rectangle.Right - 2, rectangle.Top + 2, rectangle.Right - 2, rectangle.Bottom - 3);
			g.DrawLine(pen2, rectangle.Right - 1, rectangle.Top + 2, rectangle.Right - 1, rectangle.Bottom - 3);
		}
		pen.Dispose();
		pen2.Dispose();
	}

	protected override void DrawDropDown(Graphics g, Rectangle rect, bool bRTL, bool bVertical, CBButtonState state, bool bShowChevron, bool bShowArrow)
	{
		int stateID = 1;
		switch (state)
		{
		case CBButtonState.Hot:
			stateID = 2;
			break;
		case CBButtonState.Pressed:
			stateID = 3;
			break;
		}
		m_tdToolbar.DrawThemeBackground(g, 1, stateID, rect);
		Color chevronColor = CmdBar.ChevronColor;
		CommandBarPainter.PaintDropDownArrowsThemed(g, rect, bRTL, bVertical, bShowChevron, chevronColor, bShowArrow);
	}

	protected override void DrawGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		int num = 2;
		int width = CmdBar.Width;
		int height = CmdBar.Height;
		if (bRTL)
		{
			if (bVertical)
			{
				m_tdRebar.DrawThemeBackground(g, 2, 0, new Rectangle(2, rect.Bottom - 8, width - 4, 6));
			}
			else
			{
				m_tdRebar.DrawThemeBackground(g, 1, 0, new Rectangle(rect.Right - 8, 2, 6, height - 4));
			}
		}
		else if (bVertical)
		{
			m_tdRebar.DrawThemeBackground(g, 2, 0, new Rectangle(2, num, width - 4, 6));
		}
		else
		{
			m_tdRebar.DrawThemeBackground(g, 1, 0, new Rectangle(num, 2, 6, height - 4));
		}
	}

	protected override Rectangle GetDropDownRect()
	{
		Rectangle dropDownRect = CmdBar.DropDownRect;
		if (IsVertical())
		{
			dropDownRect.Y -= 2;
		}
		else
		{
			dropDownRect.X += (CmdBar.IsRTL ? 1 : 2);
		}
		return dropDownRect;
	}

	protected override void OnDispose(bool diposing)
	{
		if (diposing)
		{
			m_tdRebar.Dispose();
			m_tdToolbar.Dispose();
		}
		base.OnDispose(diposing);
	}
}
