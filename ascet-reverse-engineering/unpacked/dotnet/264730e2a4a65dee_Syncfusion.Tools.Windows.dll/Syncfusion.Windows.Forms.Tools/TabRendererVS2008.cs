using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererVS2008 : OneNoteStyleRenderer
{
	private const string DEF_RENDERER_NAME = "VS2008Style";

	protected internal const int DEF_SELECTION_LINE_WIDTH = 2;

	private const int DEF_CLOSE_BUTTON_PADDING = 3;

	private const int DEF_DEFAULT_BORDER_WIDTH = 5;

	private const int c_cornerCut = 3;

	protected internal static readonly Color DEF_SELECTED_BORDER_COLOR;

	private Color m_borderColor = m_tabPropertyExtender.DefaultBorderColor;

	private static StyleRendererPropertyVS2008 m_tabPropertyExtender;

	private RectangleF m_panelBounds = RectangleF.Empty;

	private bool m_borderPathForBackground;

	public new static string TabStyleName => "VS2008Style";

	public new static StyleRendererPropertyVS2008 TabPanelPropertyExtender => m_tabPropertyExtender;

	public override Color TabBorderColor
	{
		get
		{
			Color empty = Color.Empty;
			if (IsVistaOS)
			{
				return Color.FromArgb(127, 157, 185);
			}
			return WindowsXPThemeColors.TabControlAdvActiveBorderColor;
		}
	}

	protected override Color BorderColor => m_borderColor;

	public override int CloseButtonPadding => 3;

	private bool IsVerticalTabAlignment
	{
		get
		{
			if (base.TabAlignment != TabAlignment.Top)
			{
				return base.TabAlignment == TabAlignment.Bottom;
			}
			return true;
		}
	}

	internal bool IsVistaOS => Environment.OSVersion.Version.Major >= 6;

	static TabRendererVS2008()
	{
		DEF_SELECTED_BORDER_COLOR = Color.FromArgb(127, 157, 185);
		m_tabPropertyExtender = new StyleRendererPropertyVS2008();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererVS2008), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyVS2008();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererVS2008), TabPanelPropertyExtender);
	}

	public TabRendererVS2008(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override RectangleF GetCurrentBounds()
	{
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		bool needRotateTextWhenVertical = base.NeedRotateTextWhenVertical;
		bool flag = NeedMirroredBackground();
		if (needRotateTextWhenVertical)
		{
			result.Y -= panelRenderer.TabPanelData.Padding.X;
			result.Height += panelRenderer.TabPanelData.Padding.X;
		}
		if (flag)
		{
			if (!needRotateTextWhenVertical)
			{
				result.Width += overlapSize.Width / 2f;
			}
		}
		else if (!needRotateTextWhenVertical)
		{
			bool flag2 = true;
			if (panelRenderer.IsMirrored && base.TabControl is TabControlAdv { RotateTabsWhenRTL: false })
			{
				flag2 = false;
			}
			if (flag2)
			{
				result.X -= overlapSize.Width / 2f;
			}
			result.Width += overlapSize.Width / 2f;
		}
		return result;
	}

	protected override RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		RectangleF rectTextAndImage = currentBounds;
		int x = panelRenderer.TabPanelData.Padding.X;
		int y = panelRenderer.TabPanelData.Padding.Y;
		bool flag = NeedMirroredBackground();
		if (base.NeedRotateTextWhenVertical)
		{
			if (base.TabAlignment == TabAlignment.Left)
			{
				if (flag)
				{
					rectTextAndImage.Y -= x + 1;
				}
				else
				{
					rectTextAndImage.Y += x;
				}
			}
			else if (base.TabAlignment == TabAlignment.Right)
			{
				if (flag)
				{
					rectTextAndImage.Y += x + 1;
				}
				else
				{
					rectTextAndImage.Y -= x;
				}
			}
		}
		else if (flag)
		{
			rectTextAndImage.X -= x + parent.BorderWidth;
			rectTextAndImage.Width += x - 1;
		}
		else
		{
			rectTextAndImage.X += x;
			rectTextAndImage.Width += x;
		}
		rectTextAndImage = CorrectInteriorBounds(rectTextAndImage);
		return RectangleF.Inflate(rectTextAndImage, 0f, -y);
	}

	protected virtual GraphicsPath GetTabBorderPath(RectangleF panelBounds, RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = ((base.TabControl.BorderWidth > 2) ? base.TabControl.BorderWidth : 3);
		float height = bounds.Height;
		bool flag = NeedMirroredBackground();
		float bottom = bounds.Bottom;
		PointF[] array = null;
		array = (flag ? new PointF[3]
		{
			new PointF(panelBounds.Right - 1f, bottom),
			new PointF(panelBounds.Right - 1f, bottom - 3f + 1f),
			new PointF(panelBounds.Right - 3f, bottom - (float)(num - 3 + 1))
		} : new PointF[3]
		{
			new PointF(panelBounds.Left, bottom),
			new PointF(panelBounds.Left, bottom - 3f + 1f),
			new PointF(panelBounds.Left + 3f - 1f, bottom - (float)(num - 3 + 1))
		});
		graphicsPath.AddLines(array);
		PointF[] points = (flag ? new PointF[4]
		{
			new PointF(bounds.Right - 3f, bottom - (float)(num - 3 + 1)),
			new PointF(bounds.Right - (float)num - 3f + 4f, bounds.Bottom - (float)(num - 3 + 1)),
			new PointF(bounds.Right - height + 1f, bounds.Top + 2f),
			new PointF(bounds.Right - height - 5f, bounds.Top)
		} : new PointF[4]
		{
			new PointF(bounds.Left + 3f - 1f, bounds.Bottom - (float)(num - 3 + 1)),
			new PointF(bounds.Left + (float)num - 3f + 1f, bounds.Bottom - (float)(num - 3 + 1)),
			new PointF(bounds.Left + height - 2f, bounds.Top + 2f),
			new PointF(bounds.Left + height + 4f, bounds.Top)
		});
		graphicsPath.AddLines(points);
		array = (flag ? new PointF[3]
		{
			new PointF(bounds.Left + 2f, bounds.Top),
			new PointF(bounds.Left, bounds.Top + 2f),
			new PointF(bounds.Left, bounds.Bottom - (float)num + 2f)
		} : new PointF[3]
		{
			new PointF(bounds.Right - 2f, bounds.Top),
			new PointF(bounds.Right, bounds.Top + 2f),
			new PointF(bounds.Right, bounds.Bottom - (float)num + 2f)
		});
		graphicsPath.AddLines(array);
		array = (((!IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Width > panelBounds.Width)) && (IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Height > panelBounds.Width))) ? (flag ? new PointF[3]
		{
			new PointF(panelBounds.Left + 3f - 1f, bottom - (float)(num - 3 + 1)),
			new PointF(panelBounds.Left, bottom - 3f + 1f),
			new PointF(panelBounds.Left, bottom)
		} : new PointF[3]
		{
			new PointF(panelBounds.Right - 3f, bottom - (float)(num - 3 + 1)),
			new PointF(panelBounds.Right - 1f, bottom - 3f + 1f),
			new PointF(panelBounds.Right - 1f, bottom)
		}) : ((!flag) ? new PointF[1]
		{
			new PointF(panelBounds.Right, panelBounds.Bottom - (float)num)
		} : new PointF[1]
		{
			new PointF(panelBounds.Left - 1f, panelBounds.Bottom - (float)num)
		}));
		graphicsPath.AddLines(array);
		return graphicsPath;
	}

	protected override GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = ((base.TabControl.BorderWidth > 2) ? base.TabControl.BorderWidth : 3);
		float height = bounds.Height;
		bool flag = NeedMirroredBackground();
		int num2 = 0;
		if (!m_borderPathForBackground)
		{
			num2 = 1;
		}
		PointF[] array = null;
		PointF[] points = (flag ? new PointF[5]
		{
			new PointF(bounds.Right - 3f, bounds.Bottom - (float)num2),
			new PointF(bounds.Right - 3f, bounds.Bottom - 2f),
			new PointF(bounds.Right - (float)num - 1f, bounds.Bottom - (float)num),
			new PointF(bounds.Right - height + 1f, bounds.Top + 2f),
			new PointF(bounds.Right - height - 5f, bounds.Top + 1f)
		} : new PointF[5]
		{
			new PointF(bounds.Left + 2f, bounds.Bottom - (float)num2),
			new PointF(bounds.Left + 2f, bounds.Bottom - 2f),
			new PointF(bounds.Left + (float)num, bounds.Bottom - (float)num),
			new PointF(bounds.Left + height - 3f, bounds.Top + 3f),
			new PointF(bounds.Left + height + 2f, bounds.Top + 1f)
		});
		graphicsPath.AddLines(points);
		array = (flag ? new PointF[3]
		{
			new PointF(bounds.Left + 2f, bounds.Top + 1f),
			new PointF(bounds.Left, bounds.Top + 3f),
			new PointF(bounds.Left, bounds.Bottom - (float)num2)
		} : new PointF[3]
		{
			new PointF(bounds.Right - 2f, bounds.Top + 1f),
			new PointF(bounds.Right, bounds.Top + 3f),
			new PointF(bounds.Right, bounds.Bottom - (float)num2)
		});
		graphicsPath.AddLines(array);
		return graphicsPath;
	}

	protected virtual GraphicsPath GetLowerTabBorderPath()
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = ((base.TabControl.BorderWidth > 2) ? base.TabControl.BorderWidth : 3);
		bool flag = NeedMirroredBackground();
		int num2 = 3;
		int num3 = 3;
		PointF[] array = null;
		if ((flag && IsVerticalTabAlignment && (float)base.TabControl.ClientRectangle.Width > m_panelBounds.Width) || (!IsVerticalTabAlignment && (float)base.TabControl.ClientRectangle.Height > m_panelBounds.Width))
		{
			num3 = 0;
		}
		array = new PointF[3]
		{
			new PointF(m_panelBounds.Left, m_panelBounds.Bottom),
			new PointF(m_panelBounds.Left, m_panelBounds.Bottom - (float)(num - num3 + 1)),
			new PointF(m_panelBounds.Left + (float)num3, m_panelBounds.Bottom - (float)num)
		};
		graphicsPath.AddLines(array);
		if ((!flag && IsVerticalTabAlignment && (float)base.TabControl.ClientRectangle.Width > m_panelBounds.Width) || (!IsVerticalTabAlignment && (float)base.TabControl.ClientRectangle.Height > m_panelBounds.Width))
		{
			num2 = 0;
		}
		array = new PointF[3]
		{
			new PointF(m_panelBounds.Right - (float)num2, m_panelBounds.Bottom - (float)num),
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom - (float)(num - num2 + 1)),
			new PointF(m_panelBounds.Right, m_panelBounds.Bottom)
		};
		graphicsPath.AddLines(array);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Height -= 2f;
		return bounds;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = base.GetPreferredSize(g);
		preferredSize.Height += 2f;
		Font font = null;
		Font font2 = null;
		if (TabData != null)
		{
			font = TabData.Font;
		}
		if (font == null)
		{
			font = GetTabFont(isInactive: true);
		}
		if (panelRenderer != null && panelRenderer.TabPanelData != null)
		{
			font2 = panelRenderer.TabPanelData.ActiveTabFont;
		}
		if (font2 == null)
		{
			font2 = GetTabFont(isInactive: false);
		}
		if (!base.NeedRotateTextWhenVertical)
		{
			preferredSize.Height += base.TabControl.BorderWidth - 5;
			if (font.Size >= 12f || font2.Size >= 12f)
			{
				preferredSize.Width += preferredSize.Height / 4f;
			}
			int num = 5;
			preferredSize.Width += parent.BorderWidth - num;
		}
		else if (font.Size >= 12f || font2.Size >= 12f)
		{
			preferredSize.Height += preferredSize.Width / 4f;
		}
		return preferredSize;
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		if (IsVistaOS)
		{
			m_borderColor = Color.FromArgb(127, 157, 185);
		}
		else
		{
			m_borderColor = ((IsSelectedState(drawItemInfo.State) || IsHotLightState(drawItemInfo.State)) ? WindowsXPThemeColors.TabControlAdvActiveBorderColor : WindowsXPThemeColors.TabControlAdvInactiveBorderColor);
		}
		Color color = WindowsXPThemeColors.TabControlAdvLightBorderColor;
		if (IsVistaOS)
		{
			color = Color.White;
		}
		RectangleF rect = drawItemInfo.Bounds;
		Graphics graphics = drawItemInfo.Graphics;
		int num = ((base.TabControl.BorderWidth > 2) ? base.TabControl.BorderWidth : 3);
		bool flag = NeedMirroredBackground();
		m_panelBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, panelRenderer.Bounds, apply: true);
		if (base.TabAlignment == TabAlignment.Right && IsSelectedState(drawItemInfo.State))
		{
			rect.Height -= 1f;
		}
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, rect, apply: true);
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		if (IsSelectedState(drawItemInfo.State) && !NeedRotateText())
		{
			int num2 = 0;
			if (flag)
			{
				num2 = 1;
			}
			using (GraphicsPath path = GetTabBorderPath(new RectangleF(m_panelBounds.X, m_panelBounds.Y + 1f, m_panelBounds.Width, m_panelBounds.Height), new RectangleF(curBounds.X + (float)num2, curBounds.Y + 1f, curBounds.Width - 1f, curBounds.Height)))
			{
				using Pen pen = new Pen(color);
				graphics.DrawPath(pen, path);
			}
			using GraphicsPath path2 = GetTabBorderPath(m_panelBounds, curBounds);
			using Pen pen2 = new Pen(BorderColor);
			graphics.DrawPath(pen2, path2);
		}
		else
		{
			using GraphicsPath path3 = GetBorderPathFromBounds(curBounds);
			using Pen pen3 = new Pen(BorderColor);
			graphics.DrawPath(pen3, path3);
		}
		using (Pen pen4 = new Pen(BorderColor))
		{
			float num3 = m_panelBounds.Left;
			float num4 = m_panelBounds.Right;
			float bottom = m_panelBounds.Bottom;
			_ = m_panelBounds.Top;
			switch (base.TabAlignment)
			{
			case TabAlignment.Top:
			case TabAlignment.Bottom:
				num3 = base.TabControl.ClientRectangle.Left;
				num4 = base.TabControl.ClientRectangle.Right;
				break;
			case TabAlignment.Left:
			case TabAlignment.Right:
				num3 = base.TabControl.ClientRectangle.Top;
				num4 = base.TabControl.ClientRectangle.Bottom;
				break;
			}
			if (base.TabControl.BorderVisible)
			{
				num3 += (float)num;
				num4 -= (float)num;
			}
			if (!NeedRotateText())
			{
				graphics.DrawLine(pen4, num3 - 1f, bottom - 1f, num4, bottom - 1f);
			}
		}
		using (Pen pen5 = new Pen(color))
		{
			if (!flag || ((!IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Width > m_panelBounds.Width)) && (IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Height > m_panelBounds.Width))))
			{
				graphics.DrawLine(pen5, m_panelBounds.Left + 1f, m_panelBounds.Bottom, m_panelBounds.Left + 1f, m_panelBounds.Bottom - (float)num + 2f);
			}
			if (flag || ((!IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Width > m_panelBounds.Width)) && (IsVerticalTabAlignment || !((float)base.TabControl.ClientRectangle.Height > m_panelBounds.Width))))
			{
				graphics.DrawLine(pen5, m_panelBounds.Right - 2f, m_panelBounds.Bottom, m_panelBounds.Right - 2f, m_panelBounds.Bottom - (float)num + 2f);
			}
		}
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width <= 0 || drawItemInfo.Bounds.Height <= 0)
		{
			return;
		}
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		if (base.TabControl.BorderWidth > 2)
		{
			_ = base.TabControl.BorderWidth;
		}
		ApplyTransform(graphics);
		base.SaveGraphicsState(graphics, ref curBounds);
		if (IsHotLightState(drawItemInfo.State) && !IsSelectedState(drawItemInfo.State))
		{
			if (IsVistaOS)
			{
				empty2 = Color.FromArgb(252, 253, 254);
				empty = Color.FromArgb(131, 209, 242);
			}
			else
			{
				empty2 = WindowsXPThemeColors.TabControlAdvHighLightedTopTabColor;
				empty = WindowsXPThemeColors.TabControlAdvHighLightedBottomTabColor;
			}
		}
		else if (IsSelectedState(drawItemInfo.State))
		{
			if (IsVistaOS)
			{
				empty2 = Color.FromArgb(252, 253, 254);
				empty = m_tabPropertyExtender.DefaultActiveTabColor(panelRenderer.TabPanelData, base.TabControl);
			}
			else
			{
				empty2 = WindowsXPThemeColors.TabControlAdvActiveTopTabColor;
				empty = WindowsXPThemeColors.TabControlAdvActiveBottomTabColor;
			}
		}
		else if (IsVistaOS)
		{
			empty2 = Color.FromArgb(252, 253, 254);
			empty = m_tabPropertyExtender.DefaultInactiveTabColor(panelRenderer.TabPanelData, base.TabControl);
		}
		else
		{
			empty2 = WindowsXPThemeColors.TabControlAdvInactiveTopTabColor;
			empty = WindowsXPThemeColors.TabControlAdvInactiveBottomTabColor;
		}
		m_borderPathForBackground = true;
		using (GraphicsPath path = GetBorderPathFromBounds(curBounds))
		{
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(curBounds, empty2, empty, LinearGradientMode.Vertical);
			if (IsSelectedState(drawItemInfo.State))
			{
				Blend blend = new Blend();
				blend.Positions = new float[4] { 0f, 0.6f, 0.6f, 1f };
				blend.Factors = new float[4] { 0f, 0.85f, 0.85f, 1f };
				linearGradientBrush.Blend = blend;
			}
			graphics.FillPath(linearGradientBrush, path);
		}
		using (GraphicsPath path2 = GetLowerTabBorderPath())
		{
			using Brush brush = new SolidBrush(empty);
			if (!NeedRotateText())
			{
				graphics.FillPath(brush, path2);
			}
		}
		m_borderPathForBackground = false;
		base.RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected override void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = drawItemInfo.BoundsInterior;
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		switch (base.TabAlignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			rectangleF = RectangleF.Inflate(rectangleF, 0f - (float)Math.Ceiling(overlapSize.Width / 2f), 0f);
			break;
		case TabAlignment.Left:
		case TabAlignment.Right:
			if (!base.NeedRotateTextWhenVertical)
			{
				rectangleF = RectangleF.Inflate(rectangleF, 0f, 0f - (float)Math.Ceiling(overlapSize.Width / 2f));
			}
			break;
		}
		if (base.TabControl.Renderer.TabPanelData.SizeMode == TabSizeMode.ShrinkToFit)
		{
			rectangleF = CorrectInteriorBounds(drawItemInfo.Bounds, rectangleF);
		}
		rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, rectangleF, apply: true);
		ApplyTransform(graphics);
		RectangleF interiorBounds = GetInteriorBounds(Bounds, selectedTab: true);
		float num = interiorBounds.Width - 15f;
		float height = interiorBounds.Height;
		if (rectangleF.Width > num && panelRenderer.TabPanelData.SizeMode == TabSizeMode.Fixed)
		{
			rectangleF.Inflate((num - rectangleF.Width) / 2f, 0f);
		}
		if (!base.NeedRotateTextWhenVertical)
		{
			int num2 = 5;
			rectangleF.X += (parent.BorderWidth - num2) / 2;
		}
		DrawTextAndImage(graphics, rectangleF, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		int x = panelRenderer.TabPanelData.Padding.X;
		int y = panelRenderer.TabPanelData.Padding.Y;
		TabControlAdv tabControlAdv = base.TabControl as TabControlAdv;
		NeedMirroredBackground();
		if (base.NeedRotateTextWhenVertical)
		{
			interiorBounds.X += x / 2;
			interiorBounds.Y += y / 2;
			num = interiorBounds.Width - (float)x;
			height = interiorBounds.Height - (float)(y * 2);
		}
		else if (tabControlAdv.RightToLeft == RightToLeft.Yes)
		{
			interiorBounds.X += x * 2 + 1;
		}
		RectangleF focusRect = new RectangleF(interiorBounds.X, interiorBounds.Y, num, height);
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, focusRect, drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		graphics.ResetTransform();
	}

	protected override Color GetForeColor()
	{
		return Color.Black;
	}

	private bool NeedRotateText()
	{
		if (base.TabAlignment == TabAlignment.Right || base.TabAlignment == TabAlignment.Left)
		{
			return panelRenderer.TabPanelData.RotateTextWhenVertical;
		}
		return false;
	}
}
