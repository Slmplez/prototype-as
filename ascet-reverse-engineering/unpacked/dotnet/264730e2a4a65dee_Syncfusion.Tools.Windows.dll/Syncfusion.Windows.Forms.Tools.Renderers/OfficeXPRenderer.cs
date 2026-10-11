using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class OfficeXPRenderer : BasicRenderer
{
	protected OfficeXPRenderer()
	{
		if (m_rendererInfo != null)
		{
			m_defaultBackgroundColor = new BrushInfo(Color.FromArgb(218, 234, 253));
			m_defaultExpandFill = new BrushInfo(Color.FromArgb(39, 65, 108));
			m_defaultExpandLine = Color.Transparent;
			m_defaultHotExpandFill = new BrushInfo(Color.FromArgb(39, 65, 158));
			m_defaultHotExpandLine = Color.FromArgb(100, 100, 220);
			m_defaultGripDark = new BrushInfo(Color.FromArgb(39, 65, 118));
			m_defaultGripLight = new BrushInfo(Color.FromArgb(255, 255, 255));
			m_defaultHotGripDark = new BrushInfo(Color.FromArgb(39, 65, 118));
			m_defaultHotGripLight = new BrushInfo(Color.FromArgb(146, 146, 255));
			m_defaultHotBackgroundColor = new BrushInfo(Color.FromArgb(200, 214, 255));
			SetDefaultSettings();
		}
	}

	public override void DrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (!(ri is BasicRendererInfo basicRendererInfo) || bounds.IsEmpty || basicRendererInfo.ExpandFill.IsEmpty)
		{
			return;
		}
		Size thumbnailSize = basicRendererInfo.ThumbnailSize;
		if (!(thumbnailSize != Size.Empty))
		{
			return;
		}
		Pen pen = new Pen(basicRendererInfo.ExpandLine);
		Point point = new Point(bounds.Left + (bounds.Right - bounds.Left) / 2, bounds.Top + (bounds.Bottom - bounds.Top) / 2);
		if (basicRendererInfo.Orientation == Orientation.Horizontal)
		{
			DrawArrows(rectThumbnail: new Rectangle(point.X - thumbnailSize.Height / 2, point.Y - thumbnailSize.Width / 2, thumbnailSize.Height, thumbnailSize.Width), e: e, brBackColorBrush: basicRendererInfo.ExpandFill, penExpandLine: pen, bri: basicRendererInfo);
			Point ptArea = new Point
			{
				X = point.X - 1
			};
			for (int i = 0; i < 5; i++)
			{
				ptArea.Y = point.Y + m_nGripPadding * i;
				DrawGrip(e, basicRendererInfo, ptArea, bHot: false);
				if (i > 0)
				{
					ptArea.Y = point.Y - m_nGripPadding * i;
					DrawGrip(e, basicRendererInfo, ptArea, bHot: false);
				}
			}
		}
		else
		{
			DrawArrows(rectThumbnail: new Rectangle(point.X - thumbnailSize.Width / 2, point.Y - thumbnailSize.Height / 2, thumbnailSize.Width, thumbnailSize.Height), e: e, brBackColorBrush: basicRendererInfo.ExpandFill, penExpandLine: pen, bri: basicRendererInfo);
			Point ptArea2 = new Point
			{
				Y = point.Y - 1
			};
			for (int j = 0; j < 5; j++)
			{
				ptArea2.X = point.X + m_nGripPadding * j;
				DrawGrip(e, basicRendererInfo, ptArea2, bHot: false);
				if (j > 0)
				{
					ptArea2.X = point.X - m_nGripPadding * j;
					DrawGrip(e, basicRendererInfo, ptArea2, bHot: false);
				}
			}
		}
		pen.Dispose();
	}

	private void DrawGrip(PaintEventArgs e, BasicRendererInfo fri, Point ptArea, bool bHot)
	{
		Rectangle rect = new Rectangle(ptArea.X, ptArea.Y, 2, 2);
		Rectangle rect2 = new Rectangle(ptArea.X + 1, ptArea.Y + 1, 2, 2);
		Color color = (bHot ? fri.HotGripLight.BackColor : fri.GripLight.BackColor);
		Color color2 = (bHot ? fri.HotGripDark.BackColor : fri.GripDark.BackColor);
		if (!fri.GripLight.IsEmpty && !fri.GripDark.IsEmpty)
		{
			Brush brush = new SolidBrush(color);
			Brush brush2 = new SolidBrush(color2);
			e.Graphics.SmoothingMode = SmoothingMode.None;
			e.Graphics.FillRectangle(brush, rect2);
			e.Graphics.FillRectangle(brush2, rect);
			brush2.Dispose();
			brush.Dispose();
		}
	}

	public override void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (!(ri is BasicRendererInfo basicRendererInfo) || bounds.IsEmpty || basicRendererInfo.HotExpandFill.IsEmpty)
		{
			return;
		}
		Size thumbnailSize = basicRendererInfo.ThumbnailSize;
		if (!(thumbnailSize != Size.Empty))
		{
			return;
		}
		Pen pen = new Pen(basicRendererInfo.HotExpandLine);
		Point point = new Point(bounds.Left + (bounds.Right - bounds.Left) / 2, bounds.Top + (bounds.Bottom - bounds.Top) / 2);
		if (basicRendererInfo.Orientation == Orientation.Horizontal)
		{
			DrawArrows(rectThumbnail: new Rectangle(point.X - thumbnailSize.Height / 2, point.Y - thumbnailSize.Width / 2, thumbnailSize.Height, thumbnailSize.Width), e: e, brBackColorBrush: basicRendererInfo.HotExpandFill, penExpandLine: pen, bri: basicRendererInfo);
			Point ptArea = new Point
			{
				X = point.X - 1
			};
			for (int i = 0; i < 5; i++)
			{
				ptArea.Y = point.Y + m_nGripPadding * i;
				DrawGrip(e, basicRendererInfo, ptArea, bHot: true);
				if (i > 0)
				{
					ptArea.Y = point.Y - m_nGripPadding * i;
					DrawGrip(e, basicRendererInfo, ptArea, bHot: true);
				}
			}
		}
		else
		{
			DrawArrows(rectThumbnail: new Rectangle(point.X - thumbnailSize.Width / 2, point.Y - thumbnailSize.Height / 2, thumbnailSize.Width, thumbnailSize.Height), e: e, brBackColorBrush: basicRendererInfo.HotExpandFill, penExpandLine: pen, bri: basicRendererInfo);
			Point ptArea2 = new Point
			{
				Y = point.Y - 1
			};
			for (int j = 0; j < 5; j++)
			{
				ptArea2.X = point.X + m_nGripPadding * j;
				DrawGrip(e, basicRendererInfo, ptArea2, bHot: true);
				if (j > 0)
				{
					ptArea2.X = point.X - m_nGripPadding * j;
					DrawGrip(e, basicRendererInfo, ptArea2, bHot: true);
				}
			}
		}
		pen.Dispose();
	}

	public new static OfficeXPRenderer GetInstance()
	{
		return new OfficeXPRenderer();
	}
}
