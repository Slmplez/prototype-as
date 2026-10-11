using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererOffice2003 : OneNoteStyleRenderer
{
	private const int DEF_LABELEDIT_OFFSET_Y_TOP = 2;

	private const int DEF_LABELEDIT_OFFSET_Y_BOTTOM = 6;

	protected internal const int DEF_SELECTION_LINE_WIDTH = 5;

	protected internal const int c_defaultOverlapSizeX = 26;

	private const string DEF_RENDERER_NAME = "Office2003Style";

	public const int DEF_BORDER_WIDTH = 1;

	private const int DEF_ITEM_BOUNDS_OFFSET = 15;

	private const int DEF_RIGHT_CORNER_OFFSET = 1;

	private const int DEF_SHADOW_WIDTH = 3;

	private const int DEF_SHADOW_CORNER_OFFSET = 2;

	private static readonly Color DEF_SHADOW_COLOR_DARK;

	private static readonly Color DEF_SHADOW_COLOR_LIGHT;

	private static StyleRendererPropertyOffice2003 m_tabPropertyExtender;

	private bool m_bIgnoreBoundsCorrection;

	public new static string TabStyleName => "Office2003Style";

	public new static StyleRendererPropertyOffice2003 TabPanelPropertyExtender => m_tabPropertyExtender;

	public override int LabelEditOffsetY
	{
		get
		{
			int result = 0;
			switch (base.TabAlignment)
			{
			case TabAlignment.Top:
				result = 2;
				break;
			case TabAlignment.Bottom:
				result = 6;
				break;
			}
			return result;
		}
	}

	static TabRendererOffice2003()
	{
		DEF_SHADOW_COLOR_DARK = Color.FromArgb(70, Color.Black);
		DEF_SHADOW_COLOR_LIGHT = Color.FromArgb(20, Color.Black);
		m_tabPropertyExtender = new StyleRendererPropertyOffice2003();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererOffice2003), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyOffice2003();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererOffice2003), TabPanelPropertyExtender);
	}

	public TabRendererOffice2003(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		int x = panelRenderer.TabPanelData.Padding.X;
		int y = panelRenderer.TabPanelData.Padding.Y;
		RectangleF rectangleF = drawItemInfo.BoundsInterior;
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		switch (base.TabAlignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			if (!NeedMirroredBackground())
			{
				rectangleF.X += overlapSize.Width / 2f;
			}
			rectangleF.Width -= overlapSize.Width / 2f - 3f;
			break;
		case TabAlignment.Left:
			if (!base.NeedRotateTextWhenVertical)
			{
				if (!NeedMirroredBackground())
				{
					rectangleF.Y += overlapSize.Width / 2f;
				}
				rectangleF.Height -= overlapSize.Width / 2f;
			}
			else
			{
				if (!NeedMirroredBackground())
				{
					rectangleF.X += overlapSize.Width / 2f;
				}
				rectangleF.Width -= overlapSize.Width / 2f;
			}
			break;
		case TabAlignment.Right:
			if (!base.NeedRotateTextWhenVertical)
			{
				if (!NeedMirroredBackground())
				{
					rectangleF.Y += overlapSize.Width / 2f;
				}
				rectangleF.Height -= overlapSize.Width / 2f;
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
		float num = interiorBounds.Width;
		float height = interiorBounds.Height;
		if (NeedMirroredBackground())
		{
			interiorBounds.X -= overlapSize.Width / 2f;
		}
		if (rectangleF.Width > num && panelRenderer.TabPanelData.SizeMode == TabSizeMode.Fixed)
		{
			rectangleF.Inflate((num - rectangleF.Width) / 2f, 0f);
		}
		DrawTextAndImage(graphics, rectangleF, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
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

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width <= 0 || drawItemInfo.Bounds.Height <= 0)
		{
			return;
		}
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.HighQuality;
		bool flag = IsSelectedState(drawItemInfo.State);
		using (Pen pen = new Pen(Office2003Colors.SelBorderColor, 1f))
		{
			bool isMirrored = panelRenderer.IsMirrored;
			rectangleF = CorrectItemBounds(rectangleF);
			switch (base.TabAlignment)
			{
			case TabAlignment.Top:
				if (flag)
				{
					rectangleF.Height -= 1f;
				}
				break;
			case TabAlignment.Bottom:
				if (flag)
				{
					rectangleF.Height -= 2f;
				}
				break;
			case TabAlignment.Left:
				if (flag)
				{
					rectangleF.Height -= 1f;
				}
				if (isMirrored)
				{
					rectangleF.Height -= 1f;
				}
				break;
			case TabAlignment.Right:
				if (flag)
				{
					rectangleF.Height -= 1f;
				}
				else if (!isMirrored)
				{
					rectangleF.Height += 1f;
				}
				break;
			}
			if (flag)
			{
				if (isMirrored)
				{
					graphics.DrawLine(pen, rectangleF.Left + 1f, rectangleF.Top, rectangleF.Right, rectangleF.Top);
				}
				else
				{
					graphics.DrawLine(pen, rectangleF.Left, rectangleF.Top, rectangleF.Right - 1f, rectangleF.Top);
				}
			}
			bool flag2 = true;
			flag2 = flag || !IsFirstTab(bIsRightToLeft: true);
			float num = (flag ? rectangleF.Top : (rectangleF.Top + 1f));
			int num2 = 0;
			if (flag2)
			{
				num2 = (isMirrored ? ((int)num) : ((int)rectangleF.Top + 1));
				graphics.DrawLine(pen, rectangleF.Right, num2, rectangleF.Right, rectangleF.Bottom);
			}
			if (flag || !IsFirstTab(bIsRightToLeft: false))
			{
				num2 = (isMirrored ? ((int)rectangleF.Top + 1) : ((int)num));
				graphics.DrawLine(pen, rectangleF.Left, rectangleF.Bottom, rectangleF.Left, num2);
			}
		}
		graphics.SmoothingMode = smoothingMode;
		if (flag)
		{
			RectangleF shadowBounds = GetShadowBounds(rectangleF);
			DrawShadow(graphics, shadowBounds);
		}
		graphics.ResetTransform();
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width <= 0 || drawItemInfo.Bounds.Height <= 0 || !IsSelectedState(drawItemInfo.State))
		{
			return;
		}
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		using GraphicsPath path = GetBorderPathFromBounds(rect);
		base.ApplyTransform(graphics);
		Color selColor = Office2003Colors.SelColor;
		selColor = ChevronPainter.BlendColor(MenuColors.SelColor, selColor);
		Color menuItemHotColorDark = Office2003Colors.MenuItemHotColorDark;
		using (Brush brush = new LinearGradientBrush(rect, selColor, menuItemHotColorDark, LinearGradientMode.Vertical))
		{
			graphics.FillPath(brush, path);
		}
		graphics.ResetTransform();
	}

	public override RectangleF GetTextPosition(Graphics g, string text, Font font, RectangleF rectLayout, StringFormat stringformat)
	{
		if (base.NeedRotateTextWhenVertical)
		{
			rectLayout = Bounds;
		}
		return base.GetTextPosition(g, text, font, rectLayout, stringformat);
	}

	public override bool HitTest(PointF mousePosition)
	{
		m_bIgnoreBoundsCorrection = true;
		bool result = base.HitTest(mousePosition);
		m_bIgnoreBoundsCorrection = false;
		return result;
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		RectangleF result = base.CorrectBounds(bounds);
		result.Height -= 5f;
		return result;
	}

	protected override GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		if (m_bIgnoreBoundsCorrection)
		{
			return base.GetBorderPathFromBounds(bounds);
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		bool isMirrored = panelRenderer.IsMirrored;
		bounds = CorrectItemBounds(bounds);
		if (base.TabAlignment == TabAlignment.Bottom || base.TabAlignment == TabAlignment.Right)
		{
			bounds.Height -= 1f;
		}
		if (isMirrored)
		{
			graphicsPath.AddLine(bounds.Left + 1f, bounds.Top, bounds.Right, bounds.Top);
		}
		else
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		}
		int num = ((!isMirrored) ? 1 : 0);
		graphicsPath.AddLine(bounds.Right, bounds.Top + (float)num, bounds.Right, bounds.Bottom);
		graphicsPath.AddLine(bounds.Right, bounds.Bottom, bounds.Left, bounds.Bottom);
		num = (isMirrored ? 1 : 0);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom, bounds.Left, bounds.Top + (float)num);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = base.GetPreferredSize(g);
		preferredSize.Height += 2f;
		return preferredSize;
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(26f, 6f);
	}

	protected override RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		RectangleF rectangleF = currentBounds;
		if (!base.NeedRotateTextWhenVertical)
		{
			rectangleF = RectangleF.Inflate(rectangleF, -panelRenderer.TabPanelData.Padding.X, -panelRenderer.TabPanelData.Padding.Y);
		}
		else
		{
			rectangleF.X += panelRenderer.TabPanelData.Padding.Y;
		}
		rectangleF = CorrectInteriorBounds(rectangleF);
		rectangleF.X -= 1f;
		return rectangleF;
	}

	protected override RectangleF CorrectInteriorBounds(RectangleF bounds, RectangleF interriorBounds)
	{
		bool flag = base.TabAlignment == TabAlignment.Left || base.TabAlignment == TabAlignment.Right;
		bool flag2 = NeedMirroredBackground();
		if (flag)
		{
			if (!base.TabControl.Renderer.TabPanelData.RotateTextWhenVertical && base.ShowCloseButton)
			{
				int num = CloseButtonSize + CloseButtonPadding;
				if (flag2)
				{
					bounds.Offset(0f, num - CorrectCloseButtonPosition.X);
				}
				bounds.Height -= num - CorrectCloseButtonPosition.X;
			}
		}
		else if (base.ShowCloseButton)
		{
			int num2 = CloseButtonSize + CloseButtonPadding;
			if (flag2)
			{
				bounds.Offset(num2 - CorrectCloseButtonPosition.X, 0f);
			}
			bounds.Width -= num2 - CorrectCloseButtonPosition.X;
		}
		interriorBounds = RectangleF.Intersect(bounds, interriorBounds);
		return interriorBounds;
	}

	protected override RectangleF GetCloseButtonBounds(DrawTabEventArgs drawItemInfo)
	{
		_ = panelRenderer.TabPanelData;
		RectangleF result = Rectangle.Empty;
		if (base.ShowCloseButton)
		{
			Graphics graphics = drawItemInfo.Graphics;
			SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
			RectangleF rect = drawItemInfo.BoundsInterior;
			switch (base.TabAlignment)
			{
			case TabAlignment.Top:
			case TabAlignment.Bottom:
				if (!NeedMirroredBackground())
				{
					rect.X += overlapSize.Width / 2f;
				}
				rect.Width -= overlapSize.Width / 2f;
				break;
			case TabAlignment.Left:
			case TabAlignment.Right:
				if (!base.NeedRotateTextWhenVertical)
				{
					if (!NeedMirroredBackground())
					{
						rect.Y += overlapSize.Width / 2f;
					}
					rect.Height -= overlapSize.Width / 2f;
				}
				break;
			}
			rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, rect, apply: true);
			result.Size = new SizeF(CloseButtonSize, CloseButtonSize);
			Rectangle rectangle = Rectangle.Round(TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true));
			if (base.ShouldDrawRotatedWhenVertical)
			{
				rectangle = drawItemInfo.Bounds;
			}
			Rectangle empty = Rectangle.Empty;
			if (base.ShouldDrawRotatedWhenVertical)
			{
				if (base.TabAlignment == TabAlignment.Right)
				{
					if (panelRenderer.IsMirrored)
					{
						result.Location = new PointF(rect.Right - 1f, rect.Top);
					}
					else
					{
						result.Location = new PointF(rect.Left, rect.Top);
					}
				}
				else if (base.TabAlignment == TabAlignment.Left)
				{
					if (panelRenderer.IsMirrored)
					{
						result.Location = new PointF(rect.Left, rect.Top);
					}
					else
					{
						result.Location = new PointF(rect.Right - 1f, rect.Top);
					}
				}
				empty = Rectangle.Ceiling(rect);
			}
			else
			{
				if (panelRenderer.IsMirrored)
				{
					result.Location = rect.Location;
					result.Offset(-(CloseButtonSize + CloseButtonPadding), 0f);
				}
				else
				{
					result.Location = new PointF(rect.Right + (float)CloseButtonPadding, rect.Top);
				}
				empty = Rectangle.Ceiling(rect);
			}
			result.Height = Math.Min(result.Height, empty.Height);
			result.Y = ((float)empty.Height - result.Height) / 2f + (float)empty.Y;
			result.Intersect(rectangle);
		}
		return result;
	}

	private bool IsFirstTab(bool bIsRightToLeft)
	{
		bool result = true;
		if (base.TabControl != null && base.TabControl.Renderer != null && base.TabControl.Renderer.Renderers != null)
		{
			ArrayList renderers = base.TabControl.Renderer.Renderers;
			if (renderers.Count > 0)
			{
				TabRendererBase tabRendererBase = null;
				RectangleF currentBounds = GetCurrentBounds();
				int i = 0;
				for (int count = renderers.Count; i < count; i++)
				{
					if (!(renderers[i] is TabRendererBase tabRendererBase2) || tabRendererBase2 == this)
					{
						continue;
					}
					RectangleF currentBounds2 = tabRendererBase2.GetCurrentBounds();
					if (bIsRightToLeft)
					{
						if (currentBounds2.Right > currentBounds.Right)
						{
							result = false;
							break;
						}
					}
					else if (currentBounds2.Left < currentBounds.Left)
					{
						result = false;
						break;
					}
				}
			}
		}
		return result;
	}

	private RectangleF CorrectItemBounds(RectangleF bounds)
	{
		if (!base.NeedRotateTextWhenVertical)
		{
			if (!panelRenderer.IsMirrored)
			{
				bounds.Offset(15f, 0f);
			}
			bounds.Width -= 15f;
		}
		return bounds;
	}

	protected GraphicsPath GetBorderPathFromBounds(RectangleF bounds, bool bIsSelected)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		bounds = CorrectItemBounds(bounds);
		if (bIsSelected)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right - 1f, bounds.Top);
		}
		graphicsPath.AddLine(bounds.Right, bounds.Top + 1f, bounds.Right, bounds.Bottom);
		float y = (bIsSelected ? bounds.Top : (bounds.Top + 1f));
		graphicsPath.AddLine(bounds.Left, bounds.Bottom, bounds.Left, y);
		return graphicsPath;
	}

	private GraphicsPath GetShadowPath(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (panelRenderer.IsMirrored)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top + 2f, bounds.Right, bounds.Top);
			graphicsPath.AddLine(bounds.Right, bounds.Top, bounds.Right, bounds.Bottom);
			graphicsPath.AddLine(bounds.Right, bounds.Bottom, bounds.Left, bounds.Bottom);
			graphicsPath.AddLine(bounds.Left, bounds.Bottom, bounds.Left, bounds.Top + 2f);
		}
		else
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top + 2f);
			graphicsPath.AddLine(bounds.Right, bounds.Top + 2f, bounds.Right, bounds.Bottom);
			graphicsPath.AddLine(bounds.Right, bounds.Bottom, bounds.Left, bounds.Bottom);
			graphicsPath.AddLine(bounds.Left, bounds.Bottom, bounds.Left, bounds.Top);
		}
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	private RectangleF GetShadowBounds(RectangleF bounds)
	{
		bool isMirrored = panelRenderer.IsMirrored;
		bounds = CorrectItemBounds(bounds);
		if (isMirrored)
		{
			bounds.Offset(-3f, 1f);
		}
		else
		{
			bounds.Offset(bounds.Width, 1f);
		}
		bounds.Height -= 1f;
		bounds.Width = 3f;
		return bounds;
	}

	protected virtual void DrawShadow(Graphics g, RectangleF shadowRectangle)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		using Brush brush = new LinearGradientBrush(shadowRectangle, DEF_SHADOW_COLOR_DARK, DEF_SHADOW_COLOR_LIGHT, LinearGradientMode.Horizontal);
		GraphicsPath shadowPath = GetShadowPath(shadowRectangle);
		g.FillPath(brush, shadowPath);
	}
}
