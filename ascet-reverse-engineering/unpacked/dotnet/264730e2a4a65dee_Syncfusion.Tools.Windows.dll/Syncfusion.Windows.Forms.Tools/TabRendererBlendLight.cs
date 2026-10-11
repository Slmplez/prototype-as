using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererBlendLight : TabRendererBase
{
	private const int c_iCloseButtonPaddingThemes = 8;

	private const int c_iCloseButtonPadding = 5;

	private const int c_iCorrectCloseButtonX = -3;

	private static BlendLightRendererProperty tabPanelPropertyExtender;

	public static string TabStyleName => "BlendLight";

	public static BlendLightRendererProperty TabPanelPropertyExtender => tabPanelPropertyExtender;

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

	static TabRendererBlendLight()
	{
		tabPanelPropertyExtender = new BlendLightRendererProperty();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererBlendLight), TabPanelPropertyExtender);
	}

	public static void RegisterTabType()
	{
		tabPanelPropertyExtender = new BlendLightRendererProperty();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererBlendLight), TabPanelPropertyExtender);
	}

	public TabRendererBlendLight(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		bool flag = (drawItemInfo.State & DrawItemState.Selected) == DrawItemState.Selected;
		bool flag2 = (drawItemInfo.State & DrawItemState.HotLight) == DrawItemState.HotLight;
		if (flag)
		{
			DrawSelectedBackground(drawItemInfo);
		}
		else
		{
			DrawUnSelectedBackground(drawItemInfo);
		}
		if (flag2)
		{
			DrawHotLightBackground(drawItemInfo);
		}
	}

	private void DrawUnSelectedBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		if (panelRenderer.TabPanelData.Alignment == TabAlignment.Top)
		{
			PointF[] points = new PointF[11]
			{
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top + 6),
				new PointF(drawItemInfo.Bounds.Left + 1, drawItemInfo.Bounds.Top + 5),
				new PointF(drawItemInfo.Bounds.Left + 2, drawItemInfo.Bounds.Top + 4),
				new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top + 3),
				new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Top + 3),
				new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Top + 4),
				new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Top + 5),
				new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top + 6),
				new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1)
			};
			graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points);
			drawItemInfo.ForeColor = Color.Black;
		}
		else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Left)
		{
			PointF[] points2 = new PointF[9]
			{
				new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 3),
				new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top + 3),
				new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Top + 1),
				new PointF(drawItemInfo.Bounds.Left + 6, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
				new PointF(drawItemInfo.Bounds.Left + 6, drawItemInfo.Bounds.Bottom - 1),
				new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Bottom - 2),
				new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 3)
			};
			graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points2);
			drawItemInfo.ForeColor = Color.Black;
		}
		else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Bottom)
		{
			PointF[] points3 = new PointF[11]
			{
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 6),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Bottom - 6),
				new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Bottom - 5),
				new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Bottom - 4),
				new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Bottom - 3),
				new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Bottom - 3),
				new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 4),
				new PointF(drawItemInfo.Bounds.Left + 2, drawItemInfo.Bounds.Bottom - 5),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 6)
			};
			graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points3);
			drawItemInfo.ForeColor = Color.Black;
		}
		else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Right)
		{
			PointF[] points4 = new PointF[9]
			{
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right - 7, drawItemInfo.Bounds.Top),
				new PointF(drawItemInfo.Bounds.Right - 5, drawItemInfo.Bounds.Top + 2),
				new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Top + 4),
				new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Bottom - 4),
				new PointF(drawItemInfo.Bounds.Right - 5, drawItemInfo.Bounds.Bottom - 2),
				new PointF(drawItemInfo.Bounds.Right - 7, drawItemInfo.Bounds.Bottom),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom),
				new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top)
			};
			graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points4);
			drawItemInfo.ForeColor = Color.Black;
		}
	}

	private void DrawSelectedBackground(DrawTabEventArgs drawItemInfo)
	{
		if (panelRenderer.TabPanelBackColor != drawItemInfo.BackColor || !panelRenderer.IsBackgroundSolid())
		{
			Graphics graphics = drawItemInfo.Graphics;
			if (panelRenderer.TabPanelData.Alignment == TabAlignment.Top)
			{
				PointF[] points = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top + 6),
					new PointF(drawItemInfo.Bounds.Left + 1, drawItemInfo.Bounds.Top + 4),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top + 2),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Top + 2),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Top + 4),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top + 6),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1)
				};
				graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points);
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Left)
			{
				PointF[] points2 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 3),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top + 3),
					new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Top + 1),
					new PointF(drawItemInfo.Bounds.Left + 6, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left + 6, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 3)
				};
				graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points2);
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Bottom)
			{
				PointF[] points3 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 6),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Bottom - 6),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Left + 2, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 6)
				};
				graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points3);
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Right)
			{
				PointF[] points4 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 7, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 5, drawItemInfo.Bounds.Top + 2),
					new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Top + 4),
					new PointF(drawItemInfo.Bounds.Right - 3, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Right - 5, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Right - 7, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top)
				};
				graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), points4);
			}
		}
	}

	private void DrawHotLightBackground(DrawTabEventArgs drawItemInfo)
	{
		if ((drawItemInfo.State & DrawItemState.Selected) != DrawItemState.Selected)
		{
			Graphics graphics = drawItemInfo.Graphics;
			if (panelRenderer.TabPanelData.Alignment == TabAlignment.Top)
			{
				PointF[] points = new PointF[10]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top + 3),
					new PointF(drawItemInfo.Bounds.Left + 1, drawItemInfo.Bounds.Top + 1),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Top + 1),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top + 3),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 1)
				};
				graphics.FillPolygon(new SolidBrush(Color.FromArgb(166, 166, 166)), points);
				drawItemInfo.ForeColor = Color.Black;
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Left)
			{
				PointF[] points2 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 3),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top + 3),
					new PointF(drawItemInfo.Bounds.Left + 1, drawItemInfo.Bounds.Top + 1),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 1, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left + 3, drawItemInfo.Bounds.Bottom - 1),
					new PointF(drawItemInfo.Bounds.Left + 1, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 3)
				};
				graphics.FillPolygon(new SolidBrush(Color.FromArgb(166, 166, 166)), points2);
				drawItemInfo.ForeColor = Color.Black;
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Bottom)
			{
				PointF[] points3 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left + 4, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left + 2, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom - 4)
				};
				graphics.FillPolygon(new SolidBrush(Color.FromArgb(166, 166, 166)), points3);
				drawItemInfo.ForeColor = Color.Black;
			}
			else if (panelRenderer.TabPanelData.Alignment == TabAlignment.Right)
			{
				PointF[] points4 = new PointF[9]
				{
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Top),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Top + 2),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Top + 4),
					new PointF(drawItemInfo.Bounds.Right, drawItemInfo.Bounds.Bottom - 4),
					new PointF(drawItemInfo.Bounds.Right - 2, drawItemInfo.Bounds.Bottom - 2),
					new PointF(drawItemInfo.Bounds.Right - 4, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Bottom),
					new PointF(drawItemInfo.Bounds.Left, drawItemInfo.Bounds.Top)
				};
				graphics.FillPolygon(new SolidBrush(Color.FromArgb(166, 166, 166)), points4);
				drawItemInfo.ForeColor = Color.Black;
			}
		}
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
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
