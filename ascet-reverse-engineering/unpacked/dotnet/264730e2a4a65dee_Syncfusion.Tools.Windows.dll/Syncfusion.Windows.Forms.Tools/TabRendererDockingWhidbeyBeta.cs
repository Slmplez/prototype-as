using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererDockingWhidbeyBeta : TabRendererWhidbey
{
	private const string DEF_RENDERER_NAME = "VS2005DockingStyleBeta";

	private const int DEF_CURVE_OFFSET = 4;

	private const float DEF_CURVE_COEF = 0.25f;

	private const int DEF_CURVE_OFFSET_BOTTOM = 3;

	private const float DEF_CURVE_COEF_1 = 1.1f;

	private const float DEF_CURVE_COEF_2 = 4f;

	private const float DEF_CURVE_COEF_3 = 10f;

	private const float DEF_CURVE_SHRINK_TO_FIT_OFFSET = 1.5f;

	private const int c_iCorrectCloseButtonXThemes = 3;

	private const int c_iCloseButtonPadding = 0;

	private static StyleRendererPropertyWhidbey m_tabPropertyExtender;

	public new static string TabStyleName => "VS2005DockingStyleBeta";

	public new static StyleRendererPropertyWhidbey TabPanelPropertyExtender => m_tabPropertyExtender;

	public override int CloseButtonPadding => 0;

	protected override Point CorrectCloseButtonPosition => new Point(panelRenderer.IsMirrored ? (-3) : 3, 0);

	static TabRendererDockingWhidbeyBeta()
	{
		m_tabPropertyExtender = new StyleRendererPropertyWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererDockingWhidbeyBeta), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyWhidbey();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererDockingWhidbeyBeta), TabPanelPropertyExtender);
	}

	public TabRendererDockingWhidbeyBeta(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Width *= 2f;
		return overlapSize;
	}

	public override RectangleF GetBoundsForScrolling()
	{
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		if (base.NeedRotateTextWhenVertical)
		{
			result.X += overlapSize.Height / 4f;
			result.Y -= overlapSize.Width / 2f;
			result.Width += overlapSize.Width / 4f;
			result.Height += overlapSize.Width / 2f;
		}
		else
		{
			result.Width += overlapSize.Width / 2f;
		}
		return result;
	}

	public override RectangleF GetCurrentBounds()
	{
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		bool needRotateTextWhenVertical = base.NeedRotateTextWhenVertical;
		if (panelRenderer.IsMirrored)
		{
			if (needRotateTextWhenVertical)
			{
				result.X += overlapSize.Height / 4f;
				result.Y -= overlapSize.Width / 2f;
				result.Height += overlapSize.Width / 2f;
			}
			else
			{
				result.Width += overlapSize.Width / 2f;
			}
		}
		else if (needRotateTextWhenVertical)
		{
			result.Y -= overlapSize.Width / 4f;
			result.Height += overlapSize.Width / 2f;
		}
		else
		{
			result.X -= overlapSize.Width / 4f;
			result.Width += overlapSize.Width / 2f;
		}
		return result;
	}

	protected override GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		_ = panelRenderer.IsMirrored;
		PointF[] verticalBorder = GetVerticalBorder(bounds, left: true);
		graphicsPath.AddCurve(verticalBorder, 0.25f);
		verticalBorder = GetVerticalBorder(bounds, left: false);
		graphicsPath.AddCurve(verticalBorder, 0.25f);
		return graphicsPath;
	}

	protected override RectangleF GetCloseButtonBounds(DrawTabEventArgs drawItemInfo)
	{
		_ = panelRenderer.TabPanelData;
		RectangleF result = Rectangle.Empty;
		if (base.ShowCloseButton)
		{
			Graphics graphics = drawItemInfo.Graphics;
			SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
			RectangleF value = drawItemInfo.BoundsInterior;
			if (!base.ShouldDrawRotatedWhenVertical)
			{
				value = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
				value.Inflate(0f - (float)Math.Ceiling(overlapSize.Width / 3f), 0f);
			}
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
						result.Location = new PointF(value.Right - 1f, value.Top);
					}
					else
					{
						result.Location = new PointF(value.Left, value.Top);
					}
				}
				else if (base.TabAlignment == TabAlignment.Left)
				{
					if (panelRenderer.IsMirrored)
					{
						result.Location = new PointF(value.Left, value.Top);
					}
					else
					{
						result.Location = new PointF(value.Right - 1f, value.Top);
					}
				}
				empty = Rectangle.Ceiling(value);
			}
			else
			{
				if (panelRenderer.IsMirrored)
				{
					result.Location = value.Location;
					result.Offset(-(CloseButtonSize + CloseButtonPadding), 0f);
				}
				else
				{
					result.Location = new PointF(value.Right + (float)CloseButtonPadding, value.Top);
				}
				empty = Rectangle.Ceiling(value);
			}
			result.Height = Math.Min(result.Height, empty.Height);
			result.Y = ((float)empty.Height - result.Height) / 2f + (float)empty.Y;
			result.Intersect(rectangle);
		}
		return result;
	}

	protected override RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		RectangleF rectTextAndImage = currentBounds;
		int x = panelRenderer.TabPanelData.Padding.X;
		_ = panelRenderer.TabPanelData.Padding.Y;
		NeedMirroredBackground();
		if (!base.NeedRotateTextWhenVertical)
		{
			rectTextAndImage.Width += x;
		}
		rectTextAndImage = CorrectInteriorBounds(rectTextAndImage);
		return RectangleF.Inflate(rectTextAndImage, 0f, -panelRenderer.TabPanelData.Padding.Y);
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
			rectangleF = RectangleF.Inflate(rectangleF, 0f - (float)Math.Ceiling(overlapSize.Width / 3f), 0f);
			break;
		case TabAlignment.Left:
		case TabAlignment.Right:
			if (!base.NeedRotateTextWhenVertical)
			{
				rectangleF = RectangleF.Inflate(rectangleF, 0f, 0f - (float)Math.Ceiling(overlapSize.Width / 3f));
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
		DrawTextAndImage(graphics, rectangleF, drawItemInfo);
		int x = panelRenderer.TabPanelData.Padding.X;
		int y = panelRenderer.TabPanelData.Padding.Y;
		TabControlAdv tabControlAdv = base.TabControl as TabControlAdv;
		NeedMirroredBackground();
		if (base.NeedRotateTextWhenVertical)
		{
			interiorBounds.X += x / 2;
			interiorBounds.Y -= y * 2;
			num = interiorBounds.Width - (float)x;
			height = interiorBounds.Height - (float)(y * 4);
		}
		else if (tabControlAdv.RightToLeft == RightToLeft.Yes)
		{
			interiorBounds.X += x * 4;
		}
		else
		{
			interiorBounds.X += x;
		}
		RectangleF focusRect = new RectangleF(interiorBounds.X, interiorBounds.Y, num, height);
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, focusRect, drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		graphics.ResetTransform();
	}

	protected override RectangleF CorrectInteriorBounds(RectangleF bounds, RectangleF interriorBounds)
	{
		bool flag = base.TabAlignment == TabAlignment.Left || base.TabAlignment == TabAlignment.Right;
		float num = (flag ? (bounds.Width * 1.5f) : (bounds.Height * 1.5f));
		bool flag2 = NeedMirroredBackground();
		if (flag)
		{
			if (!base.TabControl.Renderer.TabPanelData.RotateTextWhenVertical)
			{
				bounds.Offset(0f, num / 2f);
				if (base.ShowCloseButton)
				{
					int num2 = CloseButtonSize + CloseButtonPadding;
					if (flag2)
					{
						bounds.Offset(0f, num2 + CorrectCloseButtonPosition.X);
					}
					bounds.Height -= num2 + CorrectCloseButtonPosition.X;
				}
				bounds.Height -= num;
			}
		}
		else
		{
			bounds.Offset(num / 2f, 0f);
			if (base.ShowCloseButton)
			{
				int num3 = CloseButtonSize + CloseButtonPadding;
				if (flag2)
				{
					bounds.Offset(num3 + CorrectCloseButtonPosition.X, 0f);
				}
				bounds.Width -= num3 + CorrectCloseButtonPosition.X;
			}
			bounds.Width -= num;
		}
		interriorBounds = RectangleF.Intersect(bounds, interriorBounds);
		return interriorBounds;
	}

	protected override RectangleF CorrectInteriorBounds(RectangleF rectTextAndImage)
	{
		_ = panelRenderer.TabPanelData;
		if (base.ShowCloseButton)
		{
			int num = CloseButtonSize * 2 + CloseButtonPadding + CorrectCloseButtonPosition.X;
			bool shouldDrawRotatedWhenVertical = base.ShouldDrawRotatedWhenVertical;
			if (shouldDrawRotatedWhenVertical)
			{
				rectTextAndImage.Height -= num;
			}
			else
			{
				rectTextAndImage.Width -= num;
			}
			if (panelRenderer.IsMirrored)
			{
				if (shouldDrawRotatedWhenVertical)
				{
					rectTextAndImage.Offset(0f, num);
				}
				else
				{
					rectTextAndImage.Offset(num, 0f);
				}
			}
		}
		return rectTextAndImage;
	}

	protected override SizeF GetItemPreferredSize(Graphics g)
	{
		SizeF itemPreferredSize = base.GetItemPreferredSize(g);
		if (!base.ShouldDrawRotatedWhenVertical)
		{
			itemPreferredSize.Width += CloseButtonSize + CorrectCloseButtonPosition.X;
		}
		else
		{
			itemPreferredSize.Height += CloseButtonSize + CorrectCloseButtonPosition.X;
		}
		return itemPreferredSize;
	}

	private PointF[] GetVerticalBorder(RectangleF bounds, bool left)
	{
		PointF[] result = null;
		if (bounds != RectangleF.Empty)
		{
			float height = bounds.Height;
			int num = (int)(height * 1.1f);
			int num2 = (int)(height / 4f);
			int num3 = (int)(height / 10f);
			num -= 4 + num2;
			result = (left ? new PointF[4]
			{
				new PointF(bounds.Right, bounds.Bottom - 1f),
				new PointF(bounds.Right - 4f, bounds.Bottom - 3f),
				new PointF(bounds.Right - (float)(4 + num), bounds.Top + (float)num3),
				new PointF(bounds.Right - (float)(4 + num + num2), bounds.Top)
			} : new PointF[4]
			{
				new PointF(bounds.Left + (float)(4 + num + num2), bounds.Top),
				new PointF(bounds.Left + (float)(4 + num), bounds.Top + (float)num3),
				new PointF(bounds.Left + 4f, bounds.Bottom - 3f),
				new PointF(bounds.Left, bounds.Bottom - 1f)
			});
		}
		return result;
	}
}
