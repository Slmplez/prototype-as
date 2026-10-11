using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms;

internal class Office2007ButtonRenderer : ButtonRenderer
{
	private const int DEF_BORDERS_RADIUS = 1;

	private const int DEF_VERTICAL_BRUSH_ANGLE = 90;

	private const int DEF_WIDTH_BRUSH = 1;

	private const ButtonAdvState HIGHTLIGHTED = ButtonAdvState.MouseOver | ButtonAdvState.Pressed;

	private Blend m_blButtonSelected;

	private Blend m_blButtonDefault;

	private Blend m_blButtonPressed;

	private Blend m_blButtonDisabled;

	private Office2007Theme m_colorScheme;

	private Office2007Colors m_colorTable;

	public Office2007ButtonRenderer(ButtonAdv button)
		: base(button)
	{
		m_blButtonSelected = new Blend();
		m_blButtonSelected.Positions = new float[4] { 0f, 0.45f, 0.5f, 1f };
		m_blButtonSelected.Factors = new float[4] { 0f, 0.4f, 0.8f, 0.2f };
		m_blButtonDefault = new Blend();
		m_blButtonDefault.Positions = new float[4] { 0f, 0.45f, 0.45f, 1f };
		m_blButtonDefault.Factors = new float[4] { 0f, 0.5f, 1.1f, 0.5f };
		m_blButtonPressed = new Blend();
		m_blButtonPressed.Positions = new float[4] { 0f, 0.5f, 0.55f, 1f };
		m_blButtonPressed.Factors = new float[4] { 0f, 0.6f, 1f, 0.4f };
		m_blButtonDisabled = new Blend();
		m_blButtonDisabled.Positions = new float[4] { 0f, 0.45f, 0.5f, 1f };
		m_blButtonDisabled.Factors = new float[4] { 0f, 0.4f, 1f, 0.6f };
		CreateDrawingObjects();
	}

	private void CreateDrawingObjects()
	{
		m_colorScheme = base.Button.Office2007ColorScheme;
		m_colorTable = Office2007Colors.GetColorTable(m_colorScheme);
	}

	protected override void OnDispose(bool disposing)
	{
		if (disposing)
		{
			m_blButtonSelected = null;
			m_blButtonDefault = null;
			m_blButtonPressed = null;
			m_blButtonDisabled = null;
		}
		base.OnDispose(disposing);
	}

	public override void SetColorScheme(Office2007Theme colorScheme)
	{
		m_colorScheme = colorScheme;
		CreateDrawingObjects();
	}

	private GraphicsPath GetRoundedPath(Rectangle bounds, int iRadius, ButtonAdvState state)
	{
		int x = bounds.X;
		int y = bounds.Y;
		int num = bounds.Right - 1;
		int num2 = bounds.Bottom - 1;
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(x, num2 - iRadius, x, y + iRadius);
		graphicsPath.AddLine(x, y + iRadius, x + iRadius, y);
		graphicsPath.AddLine(x + iRadius, y, num - iRadius, y);
		graphicsPath.AddLine(num - iRadius, y, num, y + iRadius);
		graphicsPath.AddLine(num, y + iRadius, num, num2 - iRadius);
		if (state != ButtonAdvState.Pressed)
		{
			graphicsPath.AddLine(num, num2 - iRadius, num - iRadius, num2);
			graphicsPath.AddLine(num - iRadius, num2, x + iRadius, num2);
			graphicsPath.AddLine(x + iRadius, num2, x, num2 - iRadius);
		}
		return graphicsPath;
	}

	private Rectangle GetButtonBackgroundRect(Rectangle rc, ButtonAdvState state)
	{
		Rectangle result = rc;
		result.Inflate(-1, -1);
		if (state == ButtonAdvState.Pressed)
		{
			result.Y++;
		}
		return result;
	}

	private Rectangle GetInternalBorderRect(Rectangle rc, ButtonAdvState state)
	{
		Rectangle result = rc;
		switch (state)
		{
		case ButtonAdvState.Default:
			result = new Rectangle(rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			break;
		case ButtonAdvState.MouseOver:
			result = new Rectangle(rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			break;
		case ButtonAdvState.Pressed:
			result = new Rectangle(rc.X + 1, rc.Y + 2, rc.Width - 3, rc.Height - 3);
			break;
		}
		return result;
	}

	private LinearGradientBrush GetVerticalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(rc.Left, rc.Top, 1, rc.Height);
		return new LinearGradientBrush(rect, cl1, cl2, 90f);
	}

	private void DrawBackground(Graphics g, Rectangle rc, ButtonAdvState state)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		GraphicsState gstate = g.Save();
		g.SmoothingMode = SmoothingMode.Default;
		if (base.Button.Enabled)
		{
			if (IsPressed(base.Button))
			{
				DrawBackgroundPressed(g, rc);
			}
			else if (IsDefault(base.Button))
			{
				DrawBackgroundDefault(g, rc);
			}
			else if (IsMouseOver(base.Button))
			{
				DrawBackgroundSelected(g, rc);
			}
		}
		else
		{
			DrawBackgroundDisabled(g, rc);
		}
		g.Restore(gstate);
	}

	private void DrawBorder(Graphics g, Rectangle rc, ButtonAdvState state, bool enabled)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		GraphicsState gstate = g.Save();
		g.SmoothingMode = SmoothingMode.AntiAlias;
		Office2007Colors colorTable = Office2007Colors.GetColorTable(Office2007Theme.Silver);
		if (enabled)
		{
			switch (state)
			{
			case ButtonAdvState.Default:
				if (!base.Button.OverrideFormManagedColor)
				{
					g.DrawPath(new Pen(m_colorTable.ButtonDefaultBorderColor), GetRoundedPath(rc, 1, state));
					g.DrawRectangle(new Pen(m_colorTable.ButtonDefaultInternalBorderColor), GetInternalBorderRect(rc, state));
				}
				else
				{
					g.DrawPath(new Pen(MergeColors(colorTable.ButtonDefaultBorderColor, base.Button.CustomManagedColor)), GetRoundedPath(rc, 1, state));
					g.DrawRectangle(new Pen(MergeColors(colorTable.ButtonDefaultInternalBorderColor, base.Button.CustomManagedColor)), GetInternalBorderRect(rc, state));
				}
				break;
			case ButtonAdvState.MouseOver:
				g.DrawPath(new Pen(Office2007Colors.Default.ButtonSelectedBorderColor), GetRoundedPath(rc, 1, state));
				g.DrawRectangle(new Pen(m_colorTable.ButtonSelectedInternalBorderColor), GetInternalBorderRect(rc, state));
				break;
			case ButtonAdvState.Pressed:
			{
				g.DrawPath(new Pen(Office2007Colors.Default.ButtonPressedBorderColor), GetRoundedPath(rc, 1, state));
				g.DrawRectangle(new Pen(m_colorTable.ButtonPressedInternalBorderColor), GetInternalBorderRect(rc, state));
				Color color = Color.FromArgb(255, m_colorTable.ButtonPressedInternalBorderColor);
				Pen pen = new Pen(color);
				g.DrawLine(pen, rc.X + 1, rc.Y + 1, rc.Right - 2, rc.Y + 1);
				pen.Dispose();
				break;
			}
			}
		}
		else
		{
			g.DrawPath(new Pen(Office2007Colors.Default.ButtonDisabledBorderColor), GetRoundedPath(rc, 1, state));
			g.DrawRectangle(new Pen(m_colorTable.ButtonDefaultInternalBorderColor), GetInternalBorderRect(rc, state));
		}
		g.Restore(gstate);
	}

	internal static Color MergeColors(Color baseColor, Color blendColor)
	{
		int red = MergeChannels(baseColor.R, blendColor.R);
		int green = MergeChannels(baseColor.G, blendColor.G);
		int blue = MergeChannels(baseColor.B, blendColor.B);
		return Color.FromArgb(red, green, blue);
	}

	private static int MergeChannels(int baseChannel, int blendChannel)
	{
		int num = baseChannel * blendChannel / 255;
		int num2 = 255 - (255 - baseChannel) * (255 - blendChannel) / 255;
		return (byte)(num + baseChannel * (num2 - num) / 255);
	}

	private void DrawBackgroundDefault(Graphics g, Rectangle rc)
	{
		Office2007Colors colorTable = Office2007Colors.GetColorTable(Office2007Theme.Silver);
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			if (!base.Button.OverrideFormManagedColor)
			{
				empty = m_colorTable.ButtonDefaultTopColor;
				empty2 = m_colorTable.ButtonDefaultBottomColor;
			}
			else
			{
				empty = MergeColors(colorTable.ButtonDefaultTopColor, base.Button.CustomManagedColor);
				empty2 = MergeColors(colorTable.ButtonDefaultBottomColor, base.Button.CustomManagedColor);
			}
			PaintGradientDefault(g, GetButtonBackgroundRect(rc, ButtonAdvState.Default), empty, empty2);
			DrawBorder(g, rc, ButtonAdvState.Default, enabled: true);
		}
	}

	private void DrawBackgroundPressed(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color buttonPressedTopColor = Office2007Colors.Default.ButtonPressedTopColor;
			Color buttonPressedBottomColor = Office2007Colors.Default.ButtonPressedBottomColor;
			PaintGradientPressed(g, GetButtonBackgroundRect(rc, ButtonAdvState.Pressed), buttonPressedTopColor, buttonPressedBottomColor);
			DrawBorder(g, rc, ButtonAdvState.Pressed, enabled: true);
		}
	}

	private void DrawBackgroundSelected(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color buttonSelectedTopColor = Office2007Colors.Default.ButtonSelectedTopColor;
			Color buttonSelectedBottomColor = Office2007Colors.Default.ButtonSelectedBottomColor;
			PaintGradientSelected(g, GetButtonBackgroundRect(rc, ButtonAdvState.MouseOver), buttonSelectedTopColor, buttonSelectedBottomColor);
			DrawBorder(g, rc, ButtonAdvState.MouseOver, enabled: true);
		}
	}

	private void DrawBackgroundDisabled(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color buttonDisabledTopColor = Office2007Colors.Default.ButtonDisabledTopColor;
			Color buttonDisabledBottomColor = Office2007Colors.Default.ButtonDisabledBottomColor;
			PaintGradientDisabled(g, GetButtonBackgroundRect(rc, ButtonAdvState.Default), buttonDisabledTopColor, buttonDisabledBottomColor);
			DrawBorder(g, rc, ButtonAdvState.MouseOver, enabled: false);
		}
	}

	private void PaintGradientDefault(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd))
			{
				linearGradientBrush.Blend = m_blButtonDefault;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				g.FillRectangle(linearGradientBrush, rc);
			}
		}
	}

	private void PaintGradientPressed(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd))
			{
				linearGradientBrush.Blend = m_blButtonPressed;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				g.FillRectangle(linearGradientBrush, rc);
			}
		}
	}

	private void PaintGradientSelected(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd))
			{
				linearGradientBrush.Blend = m_blButtonSelected;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				g.FillRectangle(linearGradientBrush, rc);
			}
		}
	}

	private void PaintGradientDisabled(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd))
			{
				linearGradientBrush.Blend = m_blButtonDisabled;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				g.FillRectangle(linearGradientBrush, rc);
			}
		}
	}

	public override void Render(Graphics g)
	{
		DrawBackground(g, bounds, base.Button.State);
		DrawTextAndImage(g);
	}

	public override Region GetRegion(Rectangle bounds)
	{
		Region region = new Region(bounds);
		region.Exclude(new Rectangle(bounds.X, bounds.Y, 1, 1));
		region.Exclude(new Rectangle(bounds.Width - 1, bounds.Y, 1, 1));
		region.Exclude(new Rectangle(bounds.X, bounds.Height - 1, 1, 1));
		region.Exclude(new Rectangle(bounds.Width - 1, bounds.Height - 1, 1, 1));
		return region;
	}

	public override void DrawText(Graphics g, Color textColor)
	{
		ButtonAdv button = base.Button;
		if (!button.ShouldSerializeForeColor() && m_colorScheme == Office2007Theme.Black && (button.State & (ButtonAdvState.MouseOver | ButtonAdvState.Pressed)) == 0)
		{
			textColor = Color.White;
		}
		base.DrawText(g, textColor);
	}
}
