using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRenderer3D : TabRendererBase
{
	private const int DEF_LABELEDIT_OFFSET_Y_BOTTOM = 3;

	private const int c_iCloseButtonPaddingThemes = 10;

	private const int c_iCloseButtonPadding = 5;

	private const int c_iCorrectCloseButtonX = -3;

	public static readonly int OVERLAPX;

	public static readonly int OVERLAPY;

	private static TabPanelProperty3D tabPanelPropertyExtender;

	public static TabPanelProperty3D TabPanelPropertyExtender => tabPanelPropertyExtender;

	public static string TabStyleName => "3D";

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

	public override int CloseButtonPadding
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.TabControl.ThemesEnabled)
			{
				return 10;
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

	static TabRenderer3D()
	{
		OVERLAPX = 6;
		OVERLAPY = 3;
		tabPanelPropertyExtender = new TabPanelProperty3D();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRenderer3D), TabPanelPropertyExtender);
	}

	public static void RegisterTabType()
	{
		tabPanelPropertyExtender = new TabPanelProperty3D();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRenderer3D), TabPanelPropertyExtender);
	}

	public TabRenderer3D(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return tabPanelPropertyExtender.GetOverlapSize(tabSize);
	}

	protected RectangleF AdjustBoundsAndGraphicsForAlignment(Graphics g, RectangleF oldBounds, TabAlignment align)
	{
		RectangleF result = oldBounds;
		switch (align)
		{
		case TabAlignment.Top:
			result.Height += 3f;
			break;
		case TabAlignment.Right:
			result.Offset(-3f, 0f);
			result.Width += 3f;
			break;
		case TabAlignment.Left:
			result.Width += 3f;
			break;
		case TabAlignment.Bottom:
			result.Offset(0f, -3f);
			result.Height += 3f;
			break;
		}
		g.SetClip(new Region(oldBounds), CombineMode.Intersect);
		return result;
	}

	public PointF[] GetPolygonFromBounds(RectangleF bounds)
	{
		float[] array = (panelRenderer.IsMirrored ? new float[4]
		{
			bounds.Right - 1f,
			bounds.Right - 3f,
			bounds.Left + 2f,
			bounds.Left
		} : new float[4]
		{
			bounds.Left,
			bounds.Left + 2f,
			bounds.Right - 3f,
			bounds.Right - 1f
		});
		return new PointF[8]
		{
			new PointF(array[0], bounds.Bottom - 3f),
			new PointF(array[0], bounds.Top + 2f),
			new PointF(array[1], bounds.Top),
			new PointF(array[2], bounds.Top),
			new PointF(array[3], bounds.Top + 2f),
			new PointF(array[3], bounds.Bottom - 3f),
			new PointF(array[2], bounds.Bottom - 1f),
			new PointF(array[1], bounds.Bottom - 1f)
		};
	}

	public PointF[] GetShadePolygonFromBounds(RectangleF bounds)
	{
		float[] array = (panelRenderer.IsMirrored ? new float[2]
		{
			bounds.Left + 1f,
			bounds.Right - 2f
		} : new float[2]
		{
			bounds.Right - 2f,
			bounds.Left + 1f
		});
		return new PointF[3]
		{
			new PointF(array[0], bounds.Top + 1f),
			new PointF(array[0], bounds.Bottom - 2f),
			new PointF(array[1], bounds.Bottom - 2f)
		};
	}

	private void GetRotateTypes(ref RotateFlipType rotateForward, ref RotateFlipType rotateBack)
	{
		rotateForward = RotateFlipType.RotateNoneFlipNone;
		switch (base.TabAlignment)
		{
		case TabAlignment.Right:
			rotateForward = RotateFlipType.Rotate270FlipNone;
			rotateBack = RotateFlipType.Rotate90FlipNone;
			break;
		case TabAlignment.Bottom:
			rotateBack = (rotateForward = RotateFlipType.Rotate180FlipNone);
			break;
		case TabAlignment.Left:
			rotateForward = RotateFlipType.Rotate90FlipNone;
			rotateBack = RotateFlipType.Rotate270FlipNone;
			break;
		}
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF oldBounds = drawItemInfo.Bounds;
		Region clip = graphics.Clip;
		oldBounds = AdjustBoundsAndGraphicsForAlignment(graphics, oldBounds, base.TabAlignment);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.TabControl.ThemesEnabled)
		{
			bool selectedTab = panelRenderer.TabPanelData.SelectedIndex != -1 && panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == TabData;
			Rectangle rect = Rectangle.Ceiling(oldBounds);
			if (base.TabAlignment != TabAlignment.Top)
			{
				Point location = rect.Location;
				using Bitmap bitmap = new Bitmap(rect.Width, rect.Height);
				RotateFlipType rotateForward = RotateFlipType.RotateNoneFlipNone;
				RotateFlipType rotateBack = RotateFlipType.RotateNoneFlipNone;
				GetRotateTypes(ref rotateForward, ref rotateBack);
				bitmap.RotateFlip(rotateForward);
				using (Graphics g = Graphics.FromImage(bitmap))
				{
					rect = Rectangle.Empty;
					rect.Size = bitmap.Size;
					base.TabControl.ThemedDrawing.DrawTabBackground(g, this, selectedTab, rect);
				}
				bitmap.RotateFlip(rotateBack);
				graphics.DrawImage(bitmap, location);
			}
			else
			{
				base.TabControl.ThemedDrawing.DrawTabBackground(graphics, this, selectedTab, rect);
			}
		}
		else
		{
			PointF[] polygonFromBounds = GetPolygonFromBounds(oldBounds);
			graphics.FillPolygon(new SolidBrush(drawItemInfo.BackColor), polygonFromBounds);
		}
		graphics.SetClip(clip, CombineMode.Replace);
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !base.TabControl.ThemesEnabled)
		{
			Graphics graphics = drawItemInfo.Graphics;
			RectangleF oldBounds = drawItemInfo.Bounds;
			Region clip = graphics.Clip;
			oldBounds = AdjustBoundsAndGraphicsForAlignment(graphics, oldBounds, base.TabAlignment);
			PointF[] polygonFromBounds = GetPolygonFromBounds(oldBounds);
			_ = panelRenderer.IsMirrored;
			Color controlLightLight = SystemColors.ControlLightLight;
			PointF[] points = new PointF[4]
			{
				polygonFromBounds[0],
				polygonFromBounds[1],
				polygonFromBounds[2],
				polygonFromBounds[3]
			};
			graphics.DrawLines(new Pen(controlLightLight), points);
			Color controlDarkDark = SystemColors.ControlDarkDark;
			PointF[] points2 = new PointF[4]
			{
				polygonFromBounds[4],
				polygonFromBounds[5],
				polygonFromBounds[6],
				polygonFromBounds[7]
			};
			graphics.DrawLines(new Pen(controlDarkDark), points2);
			Color darkGray = Color.DarkGray;
			PointF[] shadePolygonFromBounds = GetShadePolygonFromBounds(oldBounds);
			graphics.DrawLines(new Pen(darkGray), shadePolygonFromBounds);
			graphics.SetClip(clip, CombineMode.Replace);
		}
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		ApplyTransform(graphics);
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		_ = panelRenderer.TabPanelData;
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, Bounds, drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		graphics.ResetTransform();
	}
}
