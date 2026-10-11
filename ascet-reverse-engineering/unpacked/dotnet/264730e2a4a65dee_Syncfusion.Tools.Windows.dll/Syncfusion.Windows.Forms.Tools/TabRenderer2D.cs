using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRenderer2D : TabRendererBase
{
	protected enum BorderSide
	{
		left,
		top,
		right,
		bottom
	}

	private const int DEF_LABELEDIT_OFFSET_Y = 2;

	private const int c_iCloseButtonPaddingThemes = 8;

	private const int c_iCloseButtonPadding = 5;

	private const int c_iCorrectCloseButtonX = -3;

	private static TabPanelProperty2D tabPanelPropertyExtender;

	protected static Color[] buttonBorderColors;

	public static readonly int OVERLAPX;

	public static string TabStyleName => "2D";

	public static TabPanelProperty2D TabPanelPropertyExtender => tabPanelPropertyExtender;

	public override int LabelEditOffsetY => 2;

	public override int CloseButtonPadding
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.TabControl.ThemesEnabled)
			{
				return 8;
			}
			return 5;
		}
	}

	protected override Point CorrectCloseButtonPosition
	{
		get
		{
			Point result = ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !base.TabControl.ThemesEnabled) ? new Point(0, 0) : new Point(panelRenderer.IsMirrored ? 3 : (-3), 0));
			return result;
		}
	}

	protected static Color BorderColors(BorderSide border, TabAlignment curAlign)
	{
		int num = (int)border;
		switch (curAlign)
		{
		case TabAlignment.Right:
			num++;
			break;
		case TabAlignment.Left:
			num += 3;
			if (border == BorderSide.left || border == BorderSide.right)
			{
				num += 2;
			}
			break;
		case TabAlignment.Bottom:
			if (border == BorderSide.top || border == BorderSide.bottom)
			{
				num += 2;
			}
			break;
		}
		while (num > 3)
		{
			num -= 4;
		}
		return buttonBorderColors[num];
	}

	static TabRenderer2D()
	{
		buttonBorderColors = new Color[4]
		{
			SystemColors.ControlLightLight,
			SystemColors.ControlLightLight,
			SystemColors.ControlDarkDark,
			SystemColors.ControlDarkDark
		};
		OVERLAPX = 2;
		tabPanelPropertyExtender = new TabPanelProperty2D();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRenderer2D), TabPanelPropertyExtender);
	}

	public static void RegisterTabType()
	{
		tabPanelPropertyExtender = new TabPanelProperty2D();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRenderer2D), TabPanelPropertyExtender);
	}

	public TabRenderer2D(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return tabPanelPropertyExtender.GetOverlapSize(tabSize);
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (panelRenderer.TabPanelBackColor != drawItemInfo.BackColor || !panelRenderer.IsBackgroundSolid())
		{
			Graphics graphics = drawItemInfo.Graphics;
			graphics.FillRectangle(new SolidBrush(drawItemInfo.BackColor), drawItemInfo.Bounds);
		}
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectangleF = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		float num = 0f;
		bool isMirrored = panelRenderer.IsMirrored;
		bool flag = isMirrored && (base.TabAlignment == TabAlignment.Right || base.TabAlignment == TabAlignment.Left);
		if ((drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None)
		{
			num = (isMirrored ? (rectangleF.Right - 1f) : rectangleF.Left);
			Color color = BorderColors(flag ? BorderSide.right : BorderSide.left, base.TabAlignment);
			graphics.DrawLine(new Pen(color), new PointF(num, rectangleF.Bottom - 1f), new PointF(num, rectangleF.Top));
			Color color2 = BorderColors((!flag) ? BorderSide.top : BorderSide.bottom, base.TabAlignment);
			graphics.DrawLine(new Pen(color2), new PointF(rectangleF.Left, rectangleF.Top), new PointF(rectangleF.Right - 1f, rectangleF.Top));
			num = (isMirrored ? rectangleF.Left : (rectangleF.Right - 1f));
			Color color3 = BorderColors((!flag) ? BorderSide.right : BorderSide.left, base.TabAlignment);
			graphics.DrawLine(new Pen(color3), new PointF(num, rectangleF.Top), new PointF(num, rectangleF.Bottom - 1f));
		}
		else
		{
			num = ((isMirrored && !flag) ? rectangleF.Left : (rectangleF.Right - 1f));
			graphics.DrawLine(new Pen(Color.FromArgb(128, drawItemInfo.ForeColor)), num, rectangleF.Top + 2f, num, rectangleF.Bottom - 3f);
		}
		graphics.ResetTransform();
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		ApplyTransform(graphics);
		if (drawItemInfo.TextBrush == null)
		{
			if ((drawItemInfo.State & DrawItemState.Selected) <= DrawItemState.None)
			{
				drawItemInfo.TextBrush = new SolidBrush(Color.FromArgb(192, drawItemInfo.ForeColor));
			}
			else
			{
				drawItemInfo.TextBrush = new SolidBrush(drawItemInfo.ForeColor);
			}
		}
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
