using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class OneNoteStyleFlatTabsRenderer : TabRenderer3D
{
	private const int c_iCloseButtonPaddingThemes = 8;

	private const int c_iCloseButtonPadding = 5;

	private const int c_iCorrectCloseButtonX = -3;

	private static OneNoteStyleFlatTabPanelProperty tabPropertyExtender;

	public new static OneNoteStyleFlatTabPanelProperty TabPanelPropertyExtender => tabPropertyExtender;

	public new static string TabStyleName => "OneNoteFlatStyle";

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

	static OneNoteStyleFlatTabsRenderer()
	{
		tabPropertyExtender = new OneNoteStyleFlatTabPanelProperty();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(OneNoteStyleFlatTabsRenderer), TabPanelPropertyExtender);
	}

	public OneNoteStyleFlatTabsRenderer(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return tabPropertyExtender.GetOverlapSize(tabSize);
	}

	public override bool HitTest(PointF mousePosition)
	{
		GraphicsPath graphicsPath = null;
		bool selectedTab = panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == TabData;
		graphicsPath = GetBorderPathFromBounds(GetCurrentBounds(), selectedTab);
		graphicsPath.CloseFigure();
		Region region = new Region(graphicsPath);
		if (region.IsVisible(mousePosition))
		{
			return true;
		}
		return false;
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rect = new RectangleF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top, drawItemInfo.Bounds.Width, drawItemInfo.Bounds.Height);
		rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, rect, apply: true);
		ApplyTransform(graphics);
		Color color = drawItemInfo.BackColor;
		GraphicsPath graphicsPath = null;
		graphicsPath = GetBorderPathFromBounds(rect, (drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None);
		graphicsPath.CloseFigure();
		if ((drawItemInfo.State & DrawItemState.HotLight) > DrawItemState.None)
		{
			color = Office2003Colors.SelColor;
		}
		Brush brush = new LinearGradientBrush(rect, ControlPaint.LightLight(color), color, LinearGradientMode.Vertical);
		graphics.FillPath(brush, graphicsPath);
		graphics.ResetTransform();
	}

	private GraphicsPath GetBorderPathFromBounds(RectangleF bounds, bool selectedTab)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		bool isMirrored = panelRenderer.IsMirrored;
		if (selectedTab)
		{
			float[] array = (isMirrored ? new float[9]
			{
				bounds.Right,
				bounds.Right - 1f,
				bounds.Right - 3f,
				bounds.Right - 5f,
				bounds.Left + 6f,
				bounds.Left + 7f,
				bounds.Left + 2f,
				bounds.Left + 1f,
				bounds.Left
			} : new float[9]
			{
				bounds.Left,
				bounds.Left + 1f,
				bounds.Left + 3f,
				bounds.Left + 5f,
				bounds.Right - 6f,
				bounds.Right - 7f,
				bounds.Right - 2f,
				bounds.Right - 1f,
				bounds.Right
			});
			graphicsPath.AddLine(new PointF(array[0], bounds.Bottom - 1f), new PointF(array[0], bounds.Top + 5f));
			graphicsPath.AddBezier(new PointF(array[0], bounds.Top + 5f), new PointF(array[1], bounds.Top + 3f), new PointF(array[2], bounds.Top + 1f), new PointF(array[3], bounds.Top));
			graphicsPath.AddLine(new PointF(array[3], bounds.Top), new PointF(array[4], bounds.Top));
			graphicsPath.AddBezier(new PointF(array[5], bounds.Top), new PointF(array[6], bounds.Top + 1f), new PointF(array[7], bounds.Top + 4f), new PointF(array[7], bounds.Top + 5f));
			graphicsPath.AddLine(new PointF(array[8], bounds.Top + 5f), new PointF(array[8], bounds.Bottom));
		}
		else
		{
			float[] array2 = (isMirrored ? new float[4]
			{
				bounds.Right,
				bounds.Right - 2f,
				bounds.Left + 2f,
				bounds.Left
			} : new float[4]
			{
				bounds.Left,
				bounds.Left + 2f,
				bounds.Right - 2f,
				bounds.Right
			});
			graphicsPath.AddLine(new PointF(array2[0], bounds.Bottom - 1f), new PointF(array2[0], bounds.Top + 2f));
			graphicsPath.AddLine(new PointF(array2[0], bounds.Top + 2f), new PointF(array2[1], bounds.Top));
			graphicsPath.AddLine(new PointF(array2[1], bounds.Top), new PointF(array2[2], bounds.Top));
			graphicsPath.AddLine(new PointF(array2[2], bounds.Top), new PointF(array2[3], bounds.Top + 2f));
			graphicsPath.AddLine(new PointF(array2[3], bounds.Top + 2f), new PointF(array2[3], bounds.Bottom));
		}
		return graphicsPath;
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		RectangleF rect = new RectangleF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top, drawItemInfo.Bounds.Width, drawItemInfo.Bounds.Height);
		Graphics graphics = drawItemInfo.Graphics;
		rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, rect, apply: true);
		ApplyTransform(graphics);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		drawItemInfo.Graphics.DrawPath(new Pen(Office2003Colors.SelBorderColor, 1f), GetBorderPathFromBounds(rect, (drawItemInfo.State & DrawItemState.Selected) > DrawItemState.None));
		graphics.SmoothingMode = smoothingMode;
		graphics.ResetTransform();
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Rectangle boundsInterior = drawItemInfo.BoundsInterior;
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, RectangleF.FromLTRB(boundsInterior.Left, boundsInterior.Top, boundsInterior.Right, boundsInterior.Bottom), apply: true);
		ApplyTransform(graphics);
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		graphics.ResetTransform();
	}
}
