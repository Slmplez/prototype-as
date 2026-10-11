using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class MozillaRenderer : BasicRenderer
{
	protected MozillaRenderer()
	{
		if (m_rendererInfo != null)
		{
			m_nGripPadding = 3;
			m_defaultBackgroundColor = new BrushInfo(SystemColors.ControlLight);
			m_defaultHotBackgroundColor = new BrushInfo(Color.FromArgb(204, 204, 255));
			m_defaultExpandFill = new BrushInfo(Color.FromArgb(144, 156, 187));
			m_defaultHotExpandFill = new BrushInfo(Color.FromArgb(49, 49, 99));
			m_defaultExpandLine = Color.FromArgb(144, 156, 187);
			m_defaultHotExpandLine = Color.FromArgb(49, 49, 99);
			m_defaultGripDark = new BrushInfo(SystemColors.Highlight);
			m_defaultHotGripDark = new BrushInfo(SystemColors.Highlight);
			m_defaultGripLight = new BrushInfo(Color.FromArgb(246, 245, 244));
			m_defaultHotGripLight = new BrushInfo(Color.FromArgb(246, 245, 244));
			SetDefaultSettings();
		}
	}

	public override void DrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (ri is BasicRendererInfo basicRendererInfo && !bounds.IsEmpty && !basicRendererInfo.ExpandFill.IsEmpty)
		{
			Size szThumbnail = basicRendererInfo.ThumbnailSize;
			if (szThumbnail != Size.Empty)
			{
				SmoothingMode smoothingMode = e.Graphics.SmoothingMode;
				Pen pen = new Pen(basicRendererInfo.ExpandLine);
				DrawThumbnailRegardlessToHotness(e, ref bounds, basicRendererInfo, ref szThumbnail, smoothingMode, basicRendererInfo.ExpandFill, pen, bHot: false);
				pen.Dispose();
			}
		}
	}

	private void DrawThumbnailRegardlessToHotness(PaintEventArgs e, ref Rectangle bounds, BasicRendererInfo fri, ref Size szThumbnail, SmoothingMode sm, BrushInfo brBackColorBrush, Pen penExpandLine, bool bHot)
	{
		Point point = new Point(bounds.Left + (bounds.Right - bounds.Left) / 2, bounds.Top + (bounds.Bottom - bounds.Top) / 2);
		Rectangle rectThumbnail = ((fri.Orientation != Orientation.Horizontal) ? new Rectangle(point.X - szThumbnail.Width / 2, point.Y - szThumbnail.Height / 2, szThumbnail.Width, szThumbnail.Height) : new Rectangle(point.X - szThumbnail.Height / 2, point.Y - szThumbnail.Width / 2, szThumbnail.Height, szThumbnail.Width));
		DrawArrows(e, brBackColorBrush, penExpandLine, rectThumbnail, fri);
		Point ptGrip = default(Point);
		Point ptNewCenter = point;
		e.Graphics.SmoothingMode = SmoothingMode.Default;
		if (fri.Orientation == Orientation.Horizontal)
		{
			ptNewCenter.Y -= 3;
			ptNewCenter.X--;
		}
		else
		{
			ptNewCenter.X -= 3;
			ptNewCenter.Y--;
		}
		for (int i = 0; i < 8; i++)
		{
			int nPadding = m_nGripPadding * i;
			if (fri.Orientation == Orientation.Horizontal)
			{
				ptGrip.X = ptNewCenter.X;
				DrawGripHorizontalRelativeToPaddingInternal(e, fri, ref ptGrip, ref ptNewCenter, i, nPadding, bHot);
			}
			else
			{
				ptGrip.Y = ptNewCenter.Y;
				DrawGripVerticalRelativeToPaddingInternal(e, fri, ref ptGrip, ref ptNewCenter, i, nPadding, bHot);
			}
		}
		e.Graphics.SmoothingMode = sm;
	}

	private void DrawGripVerticalRelativeToPaddingInternal(PaintEventArgs e, BasicRendererInfo fri, ref Point ptGrip, ref Point ptNewCenter, int i, int nPadding, bool bHot)
	{
		ptGrip.X = ptNewCenter.X + nPadding;
		DrawGrip(e, fri, ptGrip, bHot);
		if (i < 7)
		{
			ptGrip.X = ptNewCenter.X - nPadding;
			DrawGrip(e, fri, ptGrip, bHot);
		}
	}

	private void DrawGripHorizontalRelativeToPaddingInternal(PaintEventArgs e, BasicRendererInfo fri, ref Point ptGrip, ref Point ptNewCenter, int i, int nPadding, bool bHot)
	{
		ptGrip.Y = ptNewCenter.Y + nPadding;
		DrawGrip(e, fri, ptGrip, bHot);
		if (i < 7)
		{
			ptGrip.Y = ptNewCenter.Y - nPadding;
			DrawGrip(e, fri, ptGrip, bHot);
		}
	}

	private void DrawGrip(PaintEventArgs e, BasicRendererInfo fri, Point ptArea, bool bHot)
	{
		Rectangle rect = new Rectangle(ptArea.X, ptArea.Y, 1, 1);
		Rectangle rect2 = new Rectangle(ptArea.X + 1, ptArea.Y + 1, 1, 1);
		Brush brush = new SolidBrush(SystemColors.Control);
		Brush brush2 = new SolidBrush(SystemColors.Control);
		if (!bHot)
		{
			if (!fri.GripLight.IsEmpty && !fri.GripDark.IsEmpty)
			{
				brush = new SolidBrush(fri.GripLight.BackColor);
				brush2 = new SolidBrush(fri.GripDark.BackColor);
			}
		}
		else if (!fri.HotGripLight.IsEmpty && !fri.HotGripDark.IsEmpty)
		{
			brush = new SolidBrush(fri.HotGripLight.BackColor);
			brush2 = new SolidBrush(fri.HotGripDark.BackColor);
		}
		e.Graphics.FillRectangle(brush, rect);
		e.Graphics.FillRectangle(brush2, rect2);
		brush2.Dispose();
		brush.Dispose();
	}

	public override void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (ri is BasicRendererInfo basicRendererInfo && !bounds.IsEmpty && !basicRendererInfo.ExpandFill.IsEmpty)
		{
			Size szThumbnail = basicRendererInfo.ThumbnailSize;
			if (szThumbnail != Size.Empty)
			{
				SmoothingMode smoothingMode = e.Graphics.SmoothingMode;
				Pen pen = new Pen(basicRendererInfo.HotExpandLine);
				DrawThumbnailRegardlessToHotness(e, ref bounds, basicRendererInfo, ref szThumbnail, smoothingMode, basicRendererInfo.HotExpandFill, pen, bHot: true);
				pen.Dispose();
			}
		}
	}

	public new static MozillaRenderer GetInstance()
	{
		return new MozillaRenderer();
	}
}
