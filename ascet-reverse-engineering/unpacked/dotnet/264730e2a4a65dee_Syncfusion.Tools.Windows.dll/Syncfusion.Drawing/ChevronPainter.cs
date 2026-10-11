using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Drawing;

public class ChevronPainter
{
	public const int DEF_BORDER_WIDTH = 1;

	private const int DEF_ARROWS_COUNT = 2;

	private const int DEF_ARROWS_SPACE_X = 4;

	private const int DEF_CHEVRON_OFFSET_X_OFFICEXP = 2;

	private const int DEF_CHEVRON_OFFSET_X_OFFICE2003 = 2;

	private const int DEF_CHEVRON_OFFSET_Y_OFFICE2003 = 5;

	private const int DEF_CHEVRON_OFFSET_X_COMMON = 1;

	private const int DEF_CHEVRON_OFFSET_X_COMMON_RIGHT = 3;

	private const int DEF_CHEVRON_OFFSET_Y_COMMON = 3;

	private const int DEF_ARROWS_WIDTH = 4;

	private const int DEF_ARROWS_HEIGHT = 5;

	private const float DEF_SELECTIONCOLOR_PERCENT = 0.3f;

	private const float DEF_BACKCOLOR_PERCENT = 1.3f;

	private static ThemedControlDrawing m_themedPainter = new ThemedControlDrawing("TOOLBAR");

	public static void DrawChevronButton(Graphics g, Rectangle chevronBounds, VisualStyle style, ButtonsState state, bool isRightToLeft)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		DrawDropDownButtonHighlight(g, chevronBounds, style, state);
		DrawChevron(g, chevronBounds, style, isRightToLeft);
	}

	public static void DrawDropDownButtonHighlight(Graphics g, Rectangle chevronBounds, VisualStyle style, ButtonsState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (state != ButtonsState.None)
		{
			switch (style)
			{
			case VisualStyle.Office2003:
				DrawHighlightOffice2003(g, chevronBounds, state);
				break;
			case VisualStyle.VS2005:
				DrawHighlightVS2005(g, chevronBounds, state);
				break;
			case VisualStyle.OfficeXP:
				DrawHighlightThemed(g, chevronBounds, state);
				break;
			default:
				DrawHightlightCommon(g, chevronBounds, state);
				break;
			}
		}
	}

	public static void DrawChevron(Graphics g, Rectangle chevronButtonBounds, VisualStyle style, bool isRightToLeft)
	{
		switch (style)
		{
		case VisualStyle.Office2003:
			DrawChevronOffice2003(g, chevronButtonBounds, isRightToLeft);
			break;
		case VisualStyle.VS2005:
			DrawChevronOffice2003(g, chevronButtonBounds, isRightToLeft);
			break;
		default:
			DrawChevronCommon(g, chevronButtonBounds, style, isRightToLeft);
			break;
		}
	}

	public static Color BlendColor(Color selectionColor, Color backColor)
	{
		return Color.FromArgb((int)((0.3f * (float)(int)selectionColor.R + (float)(int)backColor.R) / 1.3f), (int)((0.3f * (float)(int)selectionColor.G + (float)(int)backColor.G) / 1.3f), (int)((0.3f * (float)(int)selectionColor.B + (float)(int)backColor.B) / 1.3f));
	}

	private static void DrawHighlightOffice2003(Graphics g, Rectangle chevronBounds, ButtonsState state)
	{
		Color selColor = MenuColors.SelColor;
		Color backColor = Color.Empty;
		switch (state)
		{
		case ButtonsState.DropDownButtonHot:
			backColor = Office2003Colors.SelColor;
			break;
		case ButtonsState.DropDownButtonPushed:
			backColor = Office2003Colors.PressedSelColor;
			break;
		}
		backColor = BlendColor(selColor, backColor);
		Color menuItemHotColorDark = Office2003Colors.MenuItemHotColorDark;
		using (Brush brush = new LinearGradientBrush(chevronBounds, backColor, menuItemHotColorDark, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush, chevronBounds);
		}
		Color floatingCommandBarCaptionColor = Office2003Colors.FloatingCommandBarCaptionColor;
		using Pen pen = new Pen(floatingCommandBarCaptionColor, 1f);
		g.DrawRectangle(pen, chevronBounds);
	}

	private static void DrawHighlightVS2005(Graphics g, Rectangle chevronBounds, ButtonsState state)
	{
		Color menuSelectedItemBorderColor = VS2005Colors.MenuSelectedItemBorderColor;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		if (state == ButtonsState.DropDownButtonPushed)
		{
			empty = VS2005Colors.DropDownPressedLightColor;
			empty2 = VS2005Colors.DropDownPressedDarkColor;
		}
		else
		{
			empty = VS2005Colors.DropDownHighlightLightColor;
			empty2 = VS2005Colors.DropDownHighlightDarkColor;
		}
		using (Brush brush = new LinearGradientBrush(chevronBounds, empty, empty2, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush, chevronBounds);
		}
		using Pen pen = new Pen(menuSelectedItemBorderColor, 1f);
		g.DrawRectangle(pen, chevronBounds);
	}

	private static void DrawHighlightThemed(Graphics g, Rectangle chevronBounds, ButtonsState state)
	{
		int stateID = 1;
		switch (state)
		{
		case ButtonsState.DropDownButtonHot:
			stateID = 2;
			break;
		case ButtonsState.DropDownButtonPushed:
			stateID = 3;
			break;
		}
		lock (m_themedPainter)
		{
			m_themedPainter.DrawThemeBackground(g, 1, stateID, chevronBounds);
		}
	}

	private static void DrawHightlightCommon(Graphics g, Rectangle chevronBounds, ButtonsState state)
	{
		Color color = Color.Empty;
		Color color2 = Color.Empty;
		switch (state)
		{
		case ButtonsState.DropDownButtonHot:
			color = MenuColors.SelBorderColor;
			color2 = MenuColors.SelColor;
			break;
		case ButtonsState.DropDownButtonPushed:
			color = MenuColors.DropDownBorderColor;
			break;
		}
		if (color2 != Color.Empty)
		{
			using SolidBrush brush = new SolidBrush(color2);
			g.FillRectangle(brush, chevronBounds);
		}
		if (color != Color.Empty)
		{
			using (Pen pen = new Pen(color, 1f))
			{
				g.DrawRectangle(pen, chevronBounds);
			}
		}
	}

	private static void DrawChevronOffice2003(Graphics g, Rectangle chevronBounds, bool isRightToLeft)
	{
		using Pen pen = new Pen(Color.White);
		Point pt = new Point(chevronBounds.X + 2, chevronBounds.Y + 5);
		using (isRightToLeft ? new GraphicsAutoMirrorX(g, chevronBounds.Width - chevronBounds.X + 2 + 3) : null)
		{
			for (int i = 0; i < 2; i++)
			{
				g.DrawLine(SystemPens.ControlText, pt, new Point(pt.X, pt.Y + 2));
				g.DrawLine(SystemPens.ControlText, new Point(pt.X, pt.Y + 1), new Point(pt.X + 1, pt.Y + 1));
				g.DrawLine(pen, new Point(pt.X + 1, pt.Y + 2), new Point(pt.X + 1, pt.Y + 3));
				g.DrawLine(pen, new Point(pt.X + 1, pt.Y + 2), new Point(pt.X + 2, pt.Y + 2));
				pt.Offset(4, 0);
			}
		}
	}

	private static void DrawChevronCommon(Graphics g, Rectangle chevronButtonBounds, VisualStyle style, bool isRightToLeft)
	{
		int x = ((style != VisualStyle.OfficeXP) ? 1 : 2);
		chevronButtonBounds.Offset(x, 3);
		chevronButtonBounds.Width = 4;
		chevronButtonBounds.Height = 5;
		int num = chevronButtonBounds.Left;
		using (isRightToLeft ? new GraphicsAutoMirrorX(g, chevronButtonBounds.Right + chevronButtonBounds.Width + 3) : null)
		{
			for (int i = 0; i < 2; i++)
			{
				g.DrawLine(SystemPens.ControlText, new Point(num, chevronButtonBounds.Top), new Point(num + 1, chevronButtonBounds.Top));
				g.DrawLine(SystemPens.ControlText, new Point(num + 1, chevronButtonBounds.Top + 1), new Point(num + 2, chevronButtonBounds.Top + 1));
				g.DrawLine(SystemPens.ControlText, new Point(num + 2, chevronButtonBounds.Top + 2), new Point(num + 3, chevronButtonBounds.Top + 2));
				g.DrawLine(SystemPens.ControlText, new Point(num + 1, chevronButtonBounds.Top + 3), new Point(num + 2, chevronButtonBounds.Top + 3));
				g.DrawLine(SystemPens.ControlText, new Point(num, chevronButtonBounds.Top + 4), new Point(num + 1, chevronButtonBounds.Top + 4));
				num = chevronButtonBounds.Left + 4;
			}
		}
	}
}
