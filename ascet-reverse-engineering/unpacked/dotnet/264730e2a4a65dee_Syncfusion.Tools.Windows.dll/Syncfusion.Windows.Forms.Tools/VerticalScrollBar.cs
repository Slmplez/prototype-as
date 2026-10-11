using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class VerticalScrollBar : Panel
{
	private Timer m_timerScroll;

	private bool m_bUpScroll;

	private bool m_mouseOver;

	private Brush m_brushMouseOver;

	private Brush m_brushDefault;

	private Pen m_penBorder;

	private Brush MouseOverBrush
	{
		get
		{
			if (m_brushMouseOver == null)
			{
				m_brushMouseOver = Brushes.Orange;
			}
			return m_brushMouseOver;
		}
		set
		{
			if (m_brushMouseOver != value)
			{
				m_brushMouseOver = value;
			}
		}
	}

	private Brush DefaultBrush
	{
		get
		{
			if (m_brushDefault == null)
			{
				m_brushDefault = Brushes.Gray;
			}
			return m_brushDefault;
		}
		set
		{
			if (m_brushDefault != value)
			{
				m_brushDefault = value;
			}
		}
	}

	private Pen BorderPen
	{
		get
		{
			if (m_penBorder == null)
			{
				m_penBorder = Pens.Black;
			}
			return m_penBorder;
		}
		set
		{
			if (m_penBorder != value)
			{
				m_penBorder = value;
			}
		}
	}

	private bool MouseOver
	{
		get
		{
			return m_mouseOver;
		}
		set
		{
			m_mouseOver = value;
		}
	}

	private int ScrollSpeed
	{
		get
		{
			XPTaskPane xPTaskPane = base.Parent as XPTaskPane;
			return xPTaskPane.ScrollSpeed;
		}
	}

	private Timer ScrollTimer
	{
		get
		{
			if (m_timerScroll == null)
			{
				m_timerScroll = new Timer();
			}
			return m_timerScroll;
		}
		set
		{
			if (m_timerScroll != value)
			{
				m_timerScroll = value;
			}
		}
	}

	private bool UpScroll => m_bUpScroll;

	public VerticalScrollBar(bool bUpScroll)
	{
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		UpdateDrawingObjects();
		MouseOverBrush = new SolidBrush(ButtonOffice2003Colors.MouseOverColor);
		m_bUpScroll = bUpScroll;
		base.VisibleChanged += VerticalScrollBar_VisibleChanged;
		XPThemes.ThemeChanged += XPThemes_ThemeChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.VisibleChanged -= VerticalScrollBar_VisibleChanged;
			XPThemes.ThemeChanged -= XPThemes_ThemeChanged;
			base.Parent = null;
			if (m_timerScroll != null)
			{
				m_timerScroll.Dispose();
				m_timerScroll = null;
			}
			if (m_brushMouseOver != null)
			{
				m_brushMouseOver.Dispose();
				m_brushMouseOver = null;
			}
			if (m_brushDefault != null)
			{
				m_brushDefault.Dispose();
				m_brushDefault = null;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (MouseOver)
		{
			e.Graphics.FillRectangle(MouseOverBrush, 1, 1, base.Width - 2, base.Height - 2);
		}
		else
		{
			e.Graphics.FillRectangle(DefaultBrush, 1, 1, base.Width - 2, base.Height - 2);
		}
		e.Graphics.DrawRectangle(BorderPen, 0, 0, base.Width - 1, base.Height - 1);
		DrawUpDownButton(e.Graphics);
		base.OnPaint(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		MouseOver = true;
		base.OnMouseEnter(e);
		Invalidate();
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		MouseOver = false;
		StopTimer();
		base.OnMouseLeave(e);
		Invalidate();
	}

	protected override void OnMouseHover(EventArgs e)
	{
		StartTimer();
		base.OnMouseHover(e);
	}

	private void VerticalScrollBar_VisibleChanged(object sender, EventArgs e)
	{
		if (base.Created)
		{
			if (!base.Visible)
			{
				StopTimer();
				((XPTaskPane)base.Parent).CardLayout.RestoreChildPosition -= RestoreChildPosition_eventHandler;
			}
			else
			{
				BringToFront();
				((XPTaskPane)base.Parent).CardLayout.RestoreChildPosition += RestoreChildPosition_eventHandler;
			}
		}
	}

	private void RestoreChildPosition_eventHandler(object sender, CancelEventArgs evtArgs)
	{
		evtArgs.Cancel = true;
	}

	private void ScrollTimer_Tick(object sender, EventArgs e)
	{
		XPTaskPane xPTaskPane = base.Parent as XPTaskPane;
		int num = 1;
		if (!UpScroll)
		{
			num = -num;
		}
		if (xPTaskPane.SelectedPage == null)
		{
			return;
		}
		Rectangle bounds = xPTaskPane.SelectedPage.Bounds;
		Rectangle bounds2 = xPTaskPane.Bounds;
		if (xPTaskPane.Header != null && xPTaskPane.Header.Visible)
		{
			bounds2.Height -= xPTaskPane.Header.Height;
		}
		if (UpScroll && bounds.Y + num > 0)
		{
			base.Visible = false;
			return;
		}
		if (!UpScroll && bounds.Bottom + num < bounds2.Bottom)
		{
			base.Visible = false;
			return;
		}
		if (UpScroll && !xPTaskPane.DownScroll.Visible && bounds.Bottom > bounds2.Bottom)
		{
			xPTaskPane.DownScroll.Visible = true;
		}
		if (!UpScroll && !xPTaskPane.UpScroll.Visible && bounds.Top < bounds2.Top)
		{
			xPTaskPane.UpScroll.Visible = true;
		}
		xPTaskPane.SelectedPage.SetBounds(bounds.X, bounds.Y + num, bounds.Width, bounds.Height);
	}

	private void XPThemes_ThemeChanged(object sender, EventArgs e)
	{
		UpdateDrawingObjects();
		Invalidate();
	}

	private void UpdateDrawingObjects()
	{
		if (XPThemes.IsDefaultBlueThemeOn)
		{
			DefaultBrush = new SolidBrush(WindowsXPColors.DefaultBlueBottomColor);
			BorderPen = new Pen(WindowsXPColors.DefaultBlueBorderColor);
		}
		else if (XPThemes.IsOliveGreenThemeOn)
		{
			DefaultBrush = new SolidBrush(WindowsXPColors.OliveGreenBottomColor);
			BorderPen = new Pen(WindowsXPColors.OliveGreenBorderColor);
		}
		else if (XPThemes.IsSilverThemeOn)
		{
			DefaultBrush = new SolidBrush(WindowsXPColors.SilverBottomColor);
			BorderPen = new Pen(WindowsXPColors.SilverBorderColor);
		}
		else if (!XPThemes.IsThemeActive)
		{
			DefaultBrush = new SolidBrush(BackColor);
			BorderPen = Pens.Black;
		}
	}

	public void DrawUpDownButton(Graphics g)
	{
		float num = 7f;
		float num2 = 4f;
		float num3 = ((float)base.Width - num) / 2f;
		float num4 = ((float)base.Height - num2) / 2f;
		float num5 = num3;
		float num6 = num4;
		if (UpScroll)
		{
			g.FillRectangle(Brushes.Black, num5 + 3f, num6, 1f, 1f);
			g.FillRectangle(Brushes.Black, num5 + 2f, num6 + 1f, 3f, 1f);
			g.FillRectangle(Brushes.Black, num5 + 1f, num6 + 2f, 5f, 1f);
			g.FillRectangle(Brushes.Black, num5, num6 + 3f, 7f, 1f);
		}
		else
		{
			g.FillRectangle(Brushes.Black, num5, num6, 7f, 1f);
			g.FillRectangle(Brushes.Black, num5 + 1f, num6 + 1f, 5f, 1f);
			g.FillRectangle(Brushes.Black, num5 + 2f, num6 + 2f, 3f, 1f);
			g.FillRectangle(Brushes.Black, num5 + 3f, num6 + 3f, 1f, 1f);
		}
	}

	private void StartTimer()
	{
		ScrollTimer.Interval = ScrollSpeed;
		ScrollTimer.Tick += ScrollTimer_Tick;
		ScrollTimer.Start();
	}

	private void StopTimer()
	{
		if (ScrollTimer != null && ScrollTimer.Enabled)
		{
			ScrollTimer.Stop();
			ScrollTimer.Tick -= ScrollTimer_Tick;
		}
	}
}
