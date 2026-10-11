using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class OneNoteStyleRenderer : TabRenderer3D
{
	private const int DEF_LABELEDIT_OFFSET_Y_TOP = 2;

	private const int DEF_LABELEDIT_OFFSET_Y_BOTTOM = 3;

	private const int c_iCorrectCloseButtonX = -3;

	private const int c_iCloseButtonPadding = 5;

	internal static int DefaultOverlapSizeX;

	private static OneNoteStyleRendererProperty tabPropertyExtender;

	public new static OneNoteStyleRendererProperty TabPanelPropertyExtender => tabPropertyExtender;

	public new static string TabStyleName => "OneNoteStyle";

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
				result = 3;
				break;
			}
			return result;
		}
	}

	protected new bool NeedRotateTextWhenVertical
	{
		get
		{
			if (base.TabAlignment == TabAlignment.Left || base.TabAlignment == TabAlignment.Right)
			{
				if (panelRenderer != null && panelRenderer.TabPanelData != null)
				{
					return panelRenderer.TabPanelData.RotateTextWhenVertical;
				}
				return false;
			}
			return false;
		}
	}

	protected virtual bool ShouldDrawHighLightUpper => true;

	protected virtual Color BorderColor => Office2003Colors.SelBorderColor;

	public override int CloseButtonPadding => 5;

	protected override Point CorrectCloseButtonPosition => new Point(-3, 0);

	public override Color TabBorderColor => Office2003Colors.SelBorderColor;

	static OneNoteStyleRenderer()
	{
		DefaultOverlapSizeX = 30;
		tabPropertyExtender = new OneNoteStyleRendererProperty();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(OneNoteStyleRenderer), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		tabPropertyExtender = new OneNoteStyleRendererProperty();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(OneNoteStyleRenderer), TabPanelPropertyExtender);
	}

	public OneNoteStyleRenderer(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return tabPropertyExtender.GetOverlapSize(tabSize);
	}

	public override RectangleF GetBoundsForScrolling()
	{
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		if (NeedRotateTextWhenVertical)
		{
			result.Y -= panelRenderer.TabPanelData.Padding.X;
			result.Height += panelRenderer.TabPanelData.Padding.X;
			result.X -= overlapSize.Width / 2f;
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
		bool needRotateTextWhenVertical = NeedRotateTextWhenVertical;
		bool flag = NeedMirroredBackground();
		if (needRotateTextWhenVertical)
		{
			result.X += overlapSize.Height / 2f;
			result.Y -= overlapSize.Width / 2f;
			result.Height += overlapSize.Width / 2f;
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

	protected override SizeF CorrectPreferredSize(SizeF preferredSize)
	{
		ITabPanelData tabPanelData = null;
		if (panelRenderer != null)
		{
			tabPanelData = panelRenderer.TabPanelData;
			if (tabPanelData != null)
			{
				switch (base.TabAlignment)
				{
				case TabAlignment.Top:
				case TabAlignment.Bottom:
					preferredSize.Width += tabPanelData.Padding.X * 2;
					preferredSize.Height += tabPanelData.Padding.Y * 2;
					break;
				case TabAlignment.Left:
				case TabAlignment.Right:
					if (NeedRotateTextWhenVertical)
					{
						preferredSize.Height += tabPanelData.Padding.X * 2;
						preferredSize.Width += tabPanelData.Padding.Y * 2;
					}
					else
					{
						preferredSize.Width += tabPanelData.Padding.X * 2;
						preferredSize.Height += tabPanelData.Padding.Y * 2;
					}
					break;
				}
			}
		}
		return preferredSize;
	}

	protected override RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		RectangleF rectTextAndImage = currentBounds;
		int x = panelRenderer.TabPanelData.Padding.X;
		bool flag = NeedMirroredBackground();
		if (NeedRotateTextWhenVertical && base.TabControl != null)
		{
			if (flag)
			{
				rectTextAndImage.Y -= x;
			}
			rectTextAndImage.X += 1f;
		}
		else if (flag)
		{
			rectTextAndImage.X -= x;
			rectTextAndImage.Width += x - 1;
		}
		else
		{
			rectTextAndImage.X += x;
			rectTextAndImage.Width += x;
		}
		rectTextAndImage = CorrectInteriorBounds(rectTextAndImage);
		return RectangleF.Inflate(rectTextAndImage, 0f, -panelRenderer.TabPanelData.Padding.Y);
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
				value.Inflate(0f - (float)Math.Ceiling(overlapSize.Width / 2f), 0f);
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

	public override bool HitTest(PointF mousePosition)
	{
		RectangleF rect = GetCurrentBounds();
		if (NeedRotateTextWhenVertical && base.TabControl != null)
		{
			Control control = base.TabControl.GetControl();
			if (control != null)
			{
				using Graphics graphics = control.CreateGraphics();
				mousePosition = TabUtils.ApplyTransform(rect: new RectangleF(mousePosition, SizeF.Empty), g: graphics, align: base.TabAlignment, apply: false).Location;
				GraphicsState gstate = graphics.Save();
				rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, rect, apply: false);
				graphics.Restore(gstate);
				graphics.ResetTransform();
			}
		}
		GraphicsPath borderPathFromBounds = GetBorderPathFromBounds(rect);
		int selectedIndex = panelRenderer.TabPanelData.SelectedIndex;
		ITabData tabData = panelRenderer.TabPanelData.TabsData[selectedIndex] as ITabData;
		if (tabData != TabData)
		{
			borderPathFromBounds.CloseFigure();
		}
		Region region = new Region(borderPathFromBounds);
		if (region.IsVisible(mousePosition))
		{
			return true;
		}
		return false;
	}

	protected virtual GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		float height = bounds.Height;
		int num = (int)(height * 1.1f);
		int num2 = (int)(height / 4f);
		int num3 = (int)(height / 10f);
		num -= 4 + num2;
		bool flag = NeedMirroredBackground();
		PointF[] points = (flag ? new PointF[4]
		{
			new PointF(bounds.Right, bounds.Bottom - 1f),
			new PointF(bounds.Right - 4f, bounds.Bottom - 3f),
			new PointF(bounds.Right - (float)(4 + num), bounds.Top + (float)num3),
			new PointF(bounds.Right - (float)(4 + num + num2), bounds.Top)
		} : new PointF[4]
		{
			new PointF(bounds.Left, bounds.Bottom - 1f),
			new PointF(bounds.Left + 4f, bounds.Bottom - 3f),
			new PointF(bounds.Left + (float)(4 + num), bounds.Top + (float)num3),
			new PointF(bounds.Left + (float)(4 + num + num2), bounds.Top)
		});
		graphicsPath.AddCurve(points, 0.25f);
		PointF[] points2 = (flag ? new PointF[3]
		{
			new PointF(bounds.Left + 4f, bounds.Top),
			new PointF(bounds.Left + 1f, bounds.Top + 4f),
			new PointF(bounds.Left + 1f, bounds.Bottom)
		} : new PointF[3]
		{
			new PointF(bounds.Right - 4f, bounds.Top),
			new PointF(bounds.Right - 1f, bounds.Top + 4f),
			new PointF(bounds.Right - 1f, bounds.Bottom)
		});
		graphicsPath.AddLines(points2);
		return graphicsPath;
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width != 0 && drawItemInfo.Bounds.Height != 0)
		{
			Graphics graphics = drawItemInfo.Graphics;
			RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
			ApplyTransform(graphics);
			SaveGraphicsState(graphics, ref curBounds);
			Color color = drawItemInfo.BackColor;
			Color color2 = ControlPaint.LightLight(color);
			GraphicsPath graphicsPath = null;
			if ((drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None)
			{
				graphicsPath = GetBorderPathFromBounds(curBounds);
			}
			else
			{
				graphicsPath = GetBorderPathFromBounds(curBounds);
				graphicsPath.CloseFigure();
			}
			if ((drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None && panelRenderer.TabPanelData.ActiveTabColor == Color.Empty)
			{
				color2 = Office2003Colors.SelColor;
				color2 = ChevronPainter.BlendColor(MenuColors.SelColor, color2);
				color = Office2003Colors.MenuItemHotColorDark;
			}
			Brush brush = new LinearGradientBrush(curBounds, color2, color, LinearGradientMode.Vertical);
			graphics.FillPath(brush, graphicsPath);
			RestoreGraphicsState(graphics);
			graphics.ResetTransform();
		}
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		bool flag = NeedMirroredBackground();
		RectangleF rectangleF = curBounds;
		rectangleF.Inflate(-1f, -1f);
		if (flag)
		{
			if ((drawItemInfo.State & DrawItemState.Selected) <= DrawItemState.None)
			{
				rectangleF.X -= 1f;
				rectangleF.Width += 1f;
			}
		}
		else
		{
			if ((drawItemInfo.State & DrawItemState.Selected) <= DrawItemState.None)
			{
				rectangleF.Width += 1f;
			}
			rectangleF.X += 1f;
			rectangleF.Width -= 1f;
		}
		GraphicsPath borderPathFromBounds = GetBorderPathFromBounds(rectangleF);
		if (ShouldDrawHighLightUpper)
		{
			drawItemInfo.Graphics.DrawPath(new Pen(Color.White, 1f), borderPathFromBounds);
		}
		drawItemInfo.Graphics.DrawPath(new Pen(BorderColor, 1f), GetBorderPathFromBounds(curBounds));
		graphics.SmoothingMode = smoothingMode;
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected virtual RectangleF CorrectInteriorBounds(RectangleF bounds, RectangleF interriorBounds)
	{
		bool flag = base.TabAlignment == TabAlignment.Left || base.TabAlignment == TabAlignment.Right;
		float num = (flag ? bounds.Width : bounds.Height);
		bool flag2 = NeedMirroredBackground();
		if (flag)
		{
			if (!base.TabControl.Renderer.TabPanelData.RotateTextWhenVertical)
			{
				if (!flag2)
				{
					bounds.Offset(0f, num);
				}
				else
				{
					bounds.Height += panelRenderer.TabPanelData.Padding.X;
				}
				if (base.ShowCloseButton)
				{
					int num2 = CloseButtonSize + CloseButtonPadding;
					if (flag2)
					{
						bounds.Offset(0f, num2 - CorrectCloseButtonPosition.X);
					}
					bounds.Height -= num2 - CorrectCloseButtonPosition.X;
				}
				bounds.Height -= num;
			}
		}
		else
		{
			if (!flag2)
			{
				bounds.Offset(num, 0f);
			}
			else
			{
				bounds.Width += panelRenderer.TabPanelData.Padding.X;
			}
			if (base.ShowCloseButton)
			{
				int num3 = CloseButtonSize + CloseButtonPadding;
				if (flag2)
				{
					bounds.Offset(num3 - CorrectCloseButtonPosition.X, 0f);
				}
				bounds.Width -= num3 - CorrectCloseButtonPosition.X;
			}
			bounds.Width -= num;
		}
		interriorBounds = RectangleF.Intersect(bounds, interriorBounds);
		return interriorBounds;
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
			if (!NeedRotateTextWhenVertical)
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
		DrawTextAndImage(graphics, rectangleF, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		int x = panelRenderer.TabPanelData.Padding.X;
		int y = panelRenderer.TabPanelData.Padding.Y;
		TabControlAdv tabControlAdv = base.TabControl as TabControlAdv;
		NeedMirroredBackground();
		if (NeedRotateTextWhenVertical)
		{
			interiorBounds.X += x + 1;
			num = interiorBounds.Width - (float)x;
			height = interiorBounds.Height - (float)(y * 2);
			if (tabControlAdv.Alignment == TabAlignment.Right)
			{
				interiorBounds.Y -= y * 2;
			}
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
}
