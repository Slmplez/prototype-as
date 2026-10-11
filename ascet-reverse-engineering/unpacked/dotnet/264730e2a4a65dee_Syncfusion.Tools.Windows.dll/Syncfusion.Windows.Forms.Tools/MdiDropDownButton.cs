using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class MdiDropDownButton
{
	private const int WIDTH = 16;

	private const int HEIGHT = 15;

	private const int INDENT = 3;

	private static readonly Color c_cHotBackColor = Color.FromArgb(242, 210, 101);

	private static readonly Color c_cPressedBackColor = Color.FromArgb(255, 238, 194);

	private static readonly Color c_cBorderColor = Color.FromArgb(72, 72, 109);

	private static readonly Color c_cNormalForeColor = Color.Black;

	private static readonly Color c_cPressedForeColor = Color.White;

	private bool m_bRightToLeft;

	private Size m_szButton = new Size(16, 15);

	private Rectangle m_rcBounds = Rectangle.Empty;

	private bool m_bIsPressed;

	private bool m_bIsHighlighted;

	private bool m_bIsPushed;

	private bool m_bIsScrollNeeded;

	private TabAlignment m_mdiTabAlignment;

	public Size Size => m_szButton;

	public Point Location => m_rcBounds.Location;

	public bool RightToLeft
	{
		get
		{
			return m_bRightToLeft;
		}
		set
		{
			m_bRightToLeft = value;
		}
	}

	public Rectangle Bounds => m_rcBounds;

	public bool IsPressed => m_bIsPressed;

	public bool IsHighlighted => m_bIsHighlighted;

	public bool IsPushed
	{
		get
		{
			return m_bIsPushed;
		}
		set
		{
			m_bIsPushed = value;
		}
	}

	public bool IsScrollNeeded
	{
		get
		{
			return m_bIsScrollNeeded;
		}
		set
		{
			m_bIsScrollNeeded = value;
		}
	}

	public TabAlignment TabAlignment
	{
		get
		{
			return m_mdiTabAlignment;
		}
		set
		{
			m_mdiTabAlignment = value;
		}
	}

	public bool IsVerticalAlignment
	{
		get
		{
			if (m_mdiTabAlignment != TabAlignment.Left)
			{
				return m_mdiTabAlignment == TabAlignment.Right;
			}
			return true;
		}
	}

	public event EventHandler Click;

	internal RectangleF HandleAdjustTabPanelBounds(RectangleF pTabPanelBounds)
	{
		if (!IsVerticalAlignment)
		{
			pTabPanelBounds.Width -= m_szButton.Width + 6;
			if (m_bRightToLeft)
			{
				pTabPanelBounds.Offset(m_szButton.Width + 6, 0f);
			}
		}
		else
		{
			pTabPanelBounds.Height -= m_szButton.Height + 6;
			if (m_bRightToLeft)
			{
				pTabPanelBounds.Offset(0f, m_szButton.Height + 6);
			}
		}
		return pTabPanelBounds;
	}

	internal void HandleOnPaint(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.None;
		DrawBackground(graphics);
		DrawForeground(graphics);
		graphics.SmoothingMode = smoothingMode;
	}

	internal bool HandleOnMouseDown(MouseEventArgs e)
	{
		bool result = false;
		if (!m_bIsPressed && e.Button == MouseButtons.Left)
		{
			Point pt = new Point(e.X, e.Y);
			if (m_rcBounds.Contains(pt))
			{
				m_bIsPressed = true;
				result = true;
			}
		}
		return result;
	}

	internal bool HandleOnMouseUp(MouseEventArgs e)
	{
		bool result = false;
		if (m_bIsPressed)
		{
			Point pt = new Point(e.X, e.Y);
			if (m_rcBounds.Contains(pt))
			{
				m_bIsPushed = true;
				OnClick();
			}
			m_bIsPressed = false;
			result = true;
		}
		return result;
	}

	internal bool HandleOnMouseMove(MouseEventArgs e)
	{
		bool result = false;
		Point pt = new Point(e.X, e.Y);
		if (m_rcBounds.Contains(pt))
		{
			if (!m_bIsHighlighted)
			{
				m_bIsHighlighted = true;
				result = true;
			}
		}
		else if (m_bIsHighlighted)
		{
			m_bIsHighlighted = false;
			result = true;
		}
		return result;
	}

	internal bool HandleOnMouseLeave(EventArgs e)
	{
		bool result = false;
		if (m_bIsHighlighted)
		{
			m_bIsHighlighted = false;
			result = true;
		}
		return result;
	}

	protected virtual void OnClick()
	{
		if (this.Click != null)
		{
			this.Click(this, new EventArgs());
		}
	}

	private void DrawBackground(Graphics g)
	{
		bool flag = m_bIsPressed || m_bIsPushed;
		if (flag || m_bIsHighlighted)
		{
			Color color = (flag ? c_cHotBackColor : c_cPressedBackColor);
			using (Brush brush = new SolidBrush(color))
			{
				g.FillRectangle(brush, m_rcBounds);
			}
			using Pen pen = new Pen(c_cBorderColor);
			Rectangle rect = new Rectangle(m_rcBounds.X, m_rcBounds.Y, m_rcBounds.Width - 1, m_rcBounds.Height - 1);
			g.DrawRectangle(pen, rect);
		}
	}

	private void DrawForeground(Graphics g)
	{
		Rectangle rcBounds = m_rcBounds;
		if (IsVerticalAlignment)
		{
			Matrix matrix = new Matrix();
			matrix.RotateAt((m_mdiTabAlignment == TabAlignment.Left) ? (-90) : 90, new PointF(rcBounds.X + rcBounds.Width / 2, rcBounds.Y + rcBounds.Height / 2));
			g.Transform = matrix;
		}
		Size size = new Size(rcBounds.Width / 2, rcBounds.Width / 4);
		Point point = new Point(rcBounds.X + (rcBounds.Height - size.Width) / 2 + 1, rcBounds.Y + rcBounds.Height / 2);
		using (GraphicsPath graphicsPath = new GraphicsPath())
		{
			int num = size.Width / 2;
			graphicsPath.AddLine(num + point.X, size.Height + point.Y, point.X, point.Y);
			graphicsPath.AddLine(point.X, point.Y, size.Width + point.X, point.Y);
			graphicsPath.AddLine(size.Width + point.X, point.Y, num + point.X, size.Height + point.Y);
			using Brush brush = new SolidBrush(IsPressed ? c_cPressedForeColor : c_cNormalForeColor);
			g.FillPath(brush, graphicsPath);
		}
		if (m_bIsScrollNeeded)
		{
			Size size2 = new Size(size.Width, size.Height / 2);
			Point location = new Point(point.X, rcBounds.Y + rcBounds.Height / 4);
			using Brush brush2 = new SolidBrush(IsPressed ? c_cPressedForeColor : c_cNormalForeColor);
			g.FillRectangle(brush2, new Rectangle(location, size2));
		}
		g.Transform.Reset();
	}

	public void Layout(Rectangle pClientRect)
	{
		Point empty = Point.Empty;
		if (!IsVerticalAlignment)
		{
			empty.X = pClientRect.Width - m_szButton.Width - 3;
			empty.Y = (pClientRect.Height - m_szButton.Height) / 2;
			if (m_bRightToLeft)
			{
				empty.X = pClientRect.Width - empty.X + 3;
			}
		}
		else
		{
			empty.X = (pClientRect.Width - m_szButton.Width) / 2;
			empty.Y = pClientRect.Height - m_szButton.Height - 3;
			if (m_bRightToLeft)
			{
				empty.Y = pClientRect.Height - empty.Y + 3;
			}
		}
		m_rcBounds = new Rectangle(empty, m_szButton);
	}
}
