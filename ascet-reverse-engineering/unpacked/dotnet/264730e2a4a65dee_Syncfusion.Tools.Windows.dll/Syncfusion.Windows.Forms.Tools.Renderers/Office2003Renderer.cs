using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class Office2003Renderer : BasicRenderer
{
	protected Office2003Renderer()
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
		BasicDrawThumbnail(e, ri, bounds, bHot: false);
	}

	private void DrawGripInternal(BasicRendererInfo fri, PaintEventArgs e, Point ptCenter, Point ptGrip)
	{
		for (int i = 0; i < 5; i++)
		{
			if (fri.Orientation == Orientation.Vertical)
			{
				ptGrip.X = ptCenter.X + m_nGripPadding * i;
			}
			else
			{
				ptGrip.Y = ptCenter.Y + m_nGripPadding * i;
			}
			DrawGrip(e, fri, ptGrip, bHot: false);
			if (i > 0)
			{
				if (fri.Orientation == Orientation.Vertical)
				{
					ptGrip.X = ptCenter.X - m_nGripPadding * i;
				}
				else
				{
					ptGrip.Y = ptCenter.Y - m_nGripPadding * i;
				}
				DrawGrip(e, fri, ptGrip, bHot: false);
			}
		}
	}

	private void DrawGrip(PaintEventArgs e, BasicRendererInfo fri, Point ptArea, bool bHot)
	{
		Rectangle rect = new Rectangle(ptArea.X, ptArea.Y, 2, 2);
		Rectangle rect2 = new Rectangle(ptArea.X + 1, ptArea.Y + 1, 2, 2);
		bool flag = !fri.GripLight.IsEmpty && !fri.GripDark.IsEmpty;
		Brush brush = ((!bHot && flag) ? new SolidBrush(fri.GripLight.BackColor) : null);
		Brush brush2 = ((!bHot && flag) ? new SolidBrush(fri.GripDark.BackColor) : null);
		e.Graphics.SmoothingMode = SmoothingMode.None;
		if (brush != null && brush2 != null)
		{
			e.Graphics.FillRectangle(brush, rect2);
			brush.Dispose();
		}
		if (brush2 != null)
		{
			e.Graphics.FillRectangle(brush2, rect);
			brush2.Dispose();
		}
	}

	public override void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		BasicDrawThumbnail(e, ri, bounds, bHot: true);
	}

	public new static Office2003Renderer GetInstance()
	{
		return new Office2003Renderer();
	}

	private void BasicDrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds, bool bHot)
	{
		if (!(ri is BasicRendererInfo basicRendererInfo) || bounds.IsEmpty || basicRendererInfo.ExpandFill.IsEmpty)
		{
			return;
		}
		Size thumbnailSize = basicRendererInfo.ThumbnailSize;
		if (thumbnailSize != Size.Empty)
		{
			BrushInfo brBackColorBrush = (bHot ? basicRendererInfo.HotExpandFill : basicRendererInfo.ExpandFill);
			Color color = (bHot ? basicRendererInfo.HotExpandLine : basicRendererInfo.ExpandLine);
			Pen pen = new Pen(color);
			Point ptGrip = default(Point);
			Point ptCenter = new Point(bounds.Left + (bounds.Right - bounds.Left) / 2, bounds.Top + (bounds.Bottom - bounds.Top) / 2);
			Rectangle rectThumbnail;
			if (basicRendererInfo.Orientation == Orientation.Vertical)
			{
				rectThumbnail = new Rectangle(ptCenter.X - thumbnailSize.Width / 2, ptCenter.Y - thumbnailSize.Height / 2, thumbnailSize.Width, thumbnailSize.Height);
				ptGrip.Y = ptCenter.Y - 1;
			}
			else
			{
				rectThumbnail = new Rectangle(ptCenter.X - thumbnailSize.Height / 2, ptCenter.Y - thumbnailSize.Width / 2, thumbnailSize.Height, thumbnailSize.Width);
				ptGrip.X = ptCenter.X - 1;
			}
			DrawArrows(e, brBackColorBrush, pen, rectThumbnail, basicRendererInfo);
			DrawGripInternal(basicRendererInfo, e, ptCenter, ptGrip);
			pen.Dispose();
		}
	}
}
