using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererWorkbookMode : TabRendererBase
{
	private const int c_iCorrectCloseButtonX = -3;

	private const int DEF_LABELEDIT_OFFSET_Y_BOTTOM = 3;

	public static readonly int OVERLAPX;

	public static readonly int OVERLAPY;

	private static TabPanelPropertyWorkbookMode tabPanelPropertyExtender;

	public static string TabStyleName => "Workbook";

	public static TabPanelPropertyWorkbookMode TabPanelPropertyExtender => tabPanelPropertyExtender;

	public override int LabelEditOffsetY
	{
		get
		{
			int result = 0;
			if (base.TabAlignment == TabAlignment.Bottom)
			{
				result = 3;
			}
			return result;
		}
	}

	protected override Point CorrectCloseButtonPosition
	{
		get
		{
			bool flag = false;
			if (panelRenderer.TabPanelData.SelectedIndex >= 0)
			{
				flag = panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == TabData;
			}
			int num;
			if (flag)
			{
				num = Convert.ToInt32(GetOverlapSize(panelRenderer.TabPanelData.TabSize).Width / 2f);
				if (panelRenderer.IsMirrored)
				{
					num = -num;
				}
			}
			else
			{
				num = 0;
			}
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.TabControl.ThemesEnabled)
			{
				num += (panelRenderer.IsMirrored ? 3 : (-3));
			}
			return new Point(num, 0);
		}
	}

	public override int CloseButtonPadding => base.CloseButtonPadding;

	public override Color TabBorderColor => SystemColors.ControlDarkDark;

	static TabRendererWorkbookMode()
	{
		OVERLAPX = 10;
		OVERLAPY = 0;
		tabPanelPropertyExtender = new TabPanelPropertyWorkbookMode();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererWorkbookMode), TabPanelPropertyExtender);
	}

	public static void RegisterTabType()
	{
		tabPanelPropertyExtender = new TabPanelPropertyWorkbookMode();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererWorkbookMode), TabPanelPropertyExtender);
	}

	public TabRendererWorkbookMode(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return tabPanelPropertyExtender.GetOverlapSize(tabSize);
	}

	public override bool HitTest(PointF mousePosition)
	{
		return GetCurrentBounds().Contains(mousePosition);
	}

	public PointF[] GetPolygonFromBounds(RectangleF bounds)
	{
		float[] array = (panelRenderer.IsMirrored ? new float[4]
		{
			bounds.Right - 1f,
			bounds.Right - (float)(OVERLAPX / 2) - 3f,
			bounds.Left + (float)(OVERLAPX / 2) + 2f,
			bounds.Left
		} : new float[4]
		{
			bounds.Left,
			bounds.Left + (float)(OVERLAPX / 2) + 2f,
			bounds.Right - (float)(OVERLAPX / 2) - 3f,
			bounds.Right - 1f
		});
		if (base.TabControl.ThemesEnabled)
		{
			if (base.TabAlignment == TabAlignment.Top || base.TabAlignment == TabAlignment.Left || base.TabAlignment == TabAlignment.Bottom)
			{
				return new PointF[4]
				{
					new PointF(array[0], bounds.Bottom),
					new PointF(array[1], bounds.Top),
					new PointF(array[2], bounds.Top),
					new PointF(array[3], bounds.Bottom)
				};
			}
			return new PointF[4]
			{
				new PointF(array[0], bounds.Bottom - 2f),
				new PointF(array[1], bounds.Top),
				new PointF(array[2], bounds.Top),
				new PointF(array[3], bounds.Bottom - 2f)
			};
		}
		return new PointF[4]
		{
			new PointF(array[0], bounds.Bottom - 1f),
			new PointF(array[1], bounds.Top),
			new PointF(array[2], bounds.Top),
			new PointF(array[3], bounds.Bottom - 1f)
		};
	}

	public override RectangleF GetCurrentBounds()
	{
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = Bounds;
		result.Inflate(overlapSize.Width / 2f, 0f);
		result.Offset(0f, 0f - overlapSize.Height);
		result.Height += overlapSize.Height;
		return result;
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		if ((drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None && drawItemInfo.BackColor == Color.Empty)
		{
			drawItemInfo.BackColor = SystemColors.Window;
		}
		if (drawItemInfo.BackColor == Color.Empty)
		{
			drawItemInfo.BackColor = panelRenderer.TabPanelData.BackColor;
		}
		PointF[] polygonFromBounds = GetPolygonFromBounds(rectangleF);
		graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), polygonFromBounds);
		graphics.ResetTransform();
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		bool flag = panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == TabData;
		Region clip = graphics.Clip;
		if (!flag && base.TabAlignment == TabAlignment.Top)
		{
			RectangleF rect = rectangleF;
			rect.Height -= 1f;
			graphics.SetClip(rect, CombineMode.Intersect);
		}
		ApplyTransform(graphics);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		PointF[] polygonFromBounds = GetPolygonFromBounds(rectangleF);
		graphics.DrawLines(new Pen(SystemColors.ControlDarkDark), polygonFromBounds);
		if (!flag)
		{
			bool isMirrored = panelRenderer.IsMirrored;
			bool flag2 = isMirrored && (TabAlignment.Left == base.TabAlignment || TabAlignment.Right == base.TabAlignment);
			Color color = (flag2 ? SystemColors.ControlDark : SystemColors.ControlLightLight);
			Color color2 = (flag2 ? SystemColors.ControlLightLight : SystemColors.ControlDark);
			PointF[] array = (isMirrored ? new PointF[2]
			{
				polygonFromBounds[0] + new Size(-1, 0),
				polygonFromBounds[1] + new Size(-1, 1)
			} : new PointF[2]
			{
				polygonFromBounds[0] + new Size(1, 0),
				polygonFromBounds[1] + new Size(1, 1)
			});
			graphics.DrawLine(new Pen(color), array[0], array[1]);
			PointF[] array2 = (isMirrored ? new PointF[2]
			{
				polygonFromBounds[2] + new Size(1, 1),
				polygonFromBounds[3] + new Size(1, 0)
			} : new PointF[2]
			{
				polygonFromBounds[2] + new Size(-1, 1),
				polygonFromBounds[3] + new Size(-1, 0)
			});
			graphics.DrawLine(new Pen(color2), array2[0], array2[1]);
		}
		graphics.SmoothingMode = smoothingMode;
		graphics.ResetTransform();
		if (!flag)
		{
			graphics.Clip = clip;
		}
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		ApplyTransform(graphics);
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, RectangleF.Inflate(Bounds, -1f, -1f), drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		graphics.ResetTransform();
	}
}
