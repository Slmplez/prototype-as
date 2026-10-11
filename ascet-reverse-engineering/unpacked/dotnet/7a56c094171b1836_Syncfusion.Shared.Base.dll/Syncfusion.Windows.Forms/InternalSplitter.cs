using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class InternalSplitter : IDisposable
{
	internal InternalSplitterState state;

	internal InternalSplitterKind kind;

	internal bool dirty;

	internal Control parent;

	internal Rectangle bounds;

	internal string tooltip = "Resize";

	internal int tooltipID = -1;

	internal Point cachedMousePos;

	internal ArrayList controlList = new ArrayList();

	private ThemedScrollBarDrawing themedDrawing;

	private bool m_bMouseDoubleClicked;

	private Office2007Theme m_colorScheme;

	private TabBarSplitterStyle m_style;

	private Office2007Colors m_office2007ColorTable;

	internal ControlToolTip TooltipProvider
	{
		get
		{
			if (parent is IControlToolTipProvider controlToolTipProvider)
			{
				return controlToolTipProvider.GetControlToolTip();
			}
			return null;
		}
	}

	public TabBarSplitterStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			if (m_style != value)
			{
				m_style = value;
				OnStyleChanged();
			}
		}
	}

	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				OnStyleChanged();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	public string ToolTip
	{
		get
		{
			return tooltip;
		}
		set
		{
			tooltip = value;
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	public Control Container
	{
		get
		{
			return parent;
		}
		set
		{
			if (parent != value)
			{
				if (parent != null)
				{
					UnwireParent(parent);
				}
				parent = value;
				if (parent != null)
				{
					WireParent(parent);
				}
			}
		}
	}

	public InternalSplitterKind Kind
	{
		get
		{
			return kind;
		}
		set
		{
			kind = value;
		}
	}

	public bool Dirty
	{
		get
		{
			return dirty;
		}
		set
		{
			dirty = value;
		}
	}

	public bool Enabled
	{
		get
		{
			return (state & InternalSplitterState.Disabled) == 0;
		}
		set
		{
			if (value != Enabled)
			{
				if (value)
				{
					state &= ~InternalSplitterState.Disabled;
				}
				else
				{
					state = InternalSplitterState.Disabled;
				}
				dirty = true;
			}
		}
	}

	public bool Hovered
	{
		get
		{
			return (state & InternalSplitterState.Hovered) != 0;
		}
		set
		{
			if (Enabled && value != Hovered)
			{
				if (value)
				{
					state = InternalSplitterState.Hovered;
				}
				else
				{
					state &= ~InternalSplitterState.Hovered;
				}
				dirty = true;
			}
		}
	}

	public bool Pushed
	{
		get
		{
			return (state & InternalSplitterState.Pushed) != 0;
		}
		set
		{
			if (Enabled && value != Pushed)
			{
				if (value)
				{
					state = InternalSplitterState.Pushed;
				}
				else
				{
					state &= ~InternalSplitterState.Pushed;
				}
				dirty = true;
			}
		}
	}

	public InternalSplitter(Control parent, InternalSplitterKind kind)
	{
		this.kind = kind;
		this.parent = parent;
		WireParent(parent);
		if (parent is ButtonBar buttonBar)
		{
			buttonBar.CancelMode += OnCancelModeEvent;
		}
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedScrollBarDrawing(this.parent);
		}
	}

	private void WireParent(Control parent)
	{
		parent.MouseDown += OnMouseDownEvent;
		parent.MouseMove += OnMouseMoveEvent;
		parent.MouseUp += OnMouseUpEvent;
		parent.MouseLeave += OnMouseLeaveEvent;
		parent.MouseDoubleClick += OnMouseDoubleClick;
	}

	private void UnwireParent(Control parent)
	{
		parent.MouseDown -= OnMouseDownEvent;
		parent.MouseMove -= OnMouseMoveEvent;
		parent.MouseUp -= OnMouseUpEvent;
		parent.MouseLeave -= OnMouseLeaveEvent;
		parent.MouseDoubleClick -= OnMouseDoubleClick;
	}

	public void WireTabPage(Control parent)
	{
		WireParent(parent);
		controlList.Add(parent);
	}

	public void UnwireTabPage(Control parent)
	{
		UnwireParent(parent);
		controlList.Remove(parent);
	}

	~InternalSplitter()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (!disposing)
		{
			return;
		}
		if (themedDrawing != null)
		{
			themedDrawing.Dispose();
			themedDrawing = null;
		}
		if (parent != null)
		{
			UnwireParent(parent);
			if (parent is ButtonBar buttonBar)
			{
				buttonBar.CancelMode -= OnCancelModeEvent;
			}
		}
		foreach (Control item in new ArrayList(controlList))
		{
			UnwireTabPage(item);
		}
		parent = null;
	}

	public void ResetToolTip()
	{
		lock (this)
		{
			TooltipProvider?.InitToolTip(ref tooltipID, "", Rectangle.Empty);
		}
	}

	public void InitToolTip(Rectangle bounds)
	{
		lock (this)
		{
			TooltipProvider?.InitToolTip(ref tooltipID, ToolTip, bounds);
		}
	}

	public ButtonState GetWinFormButtonState(bool flatLook)
	{
		ButtonState buttonState = ButtonState.Normal;
		if (!Enabled)
		{
			buttonState |= ButtonState.Inactive;
		}
		if (Pushed)
		{
			buttonState |= ButtonState.Pushed;
		}
		if (flatLook && !Hovered && !Pushed)
		{
			buttonState |= ButtonState.Flat;
		}
		return buttonState;
	}

	protected virtual void OnStyleChanged()
	{
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
	}

	public void Paint(Graphics g, bool flatLook)
	{
		try
		{
			if (bounds.IsEmpty)
			{
				return;
			}
			InitToolTip(bounds);
			if (!g.ClipBounds.IntersectsWith(bounds))
			{
				return;
			}
			ButtonState winFormButtonState = GetWinFormButtonState(flatLook);
			Rectangle rectangle = bounds;
			if (parent is IThemedControl themedControl && XPThemes.IsThemedOS && XPThemes.IsThemeActive && themedControl.ThemesEnabled)
			{
				themedDrawing.DrawThumb(g, rectangle, kind == InternalSplitterKind.HorizontalBar, winFormButtonState);
				return;
			}
			if (Style == TabBarSplitterStyle.Office2007)
			{
				if (Kind == InternalSplitterKind.VerticalBar)
				{
					rectangle.Height--;
				}
				else
				{
					rectangle.Width--;
				}
				Color tabBarSplitterTabStartColor = Office2007ColorTable.TabBarSplitterTabStartColor;
				Color tabBarSplitterTabEndColor = Office2007ColorTable.TabBarSplitterTabEndColor;
				using (LinearGradientBrush brush = new LinearGradientBrush(rectangle, tabBarSplitterTabStartColor, tabBarSplitterTabEndColor, LinearGradientMode.Vertical))
				{
					g.FillRectangle(brush, rectangle);
				}
				using Pen pen = new Pen(Office2007ColorTable.TabBarSplitterBorderColor);
				g.DrawRectangle(pen, rectangle);
				return;
			}
			ControlPaint.DrawButton(g, rectangle, winFormButtonState);
		}
		finally
		{
			dirty = false;
		}
	}

	public static void OffsetLeft(ref Rectangle r, int dx)
	{
		r.X += dx;
		r.Width = Math.Max(r.Width - dx, 0);
	}

	public static void OffsetTop(ref Rectangle r, int dy)
	{
		r.Y += dy;
		r.Height = Math.Max(r.Height - dy, 0);
	}

	public void Refresh()
	{
		Dirty = true;
		parent.Invalidate(bounds);
		if (parent is IInternalSplitterParent internalSplitterParent)
		{
			if (Pushed || Hovered)
			{
				internalSplitterParent.OverrideCursor = ((kind == InternalSplitterKind.HorizontalBar) ? Cursors.VSplit : Cursors.HSplit);
			}
			else
			{
				internalSplitterParent.OverrideCursor = null;
			}
		}
		foreach (object control in controlList)
		{
			if (control is IInternalSplitterParent internalSplitterParent2)
			{
				internalSplitterParent2.InvalidateSplitter(this);
				if (Pushed || Hovered)
				{
					internalSplitterParent2.OverrideCursor = ((kind == InternalSplitterKind.HorizontalBar) ? Cursors.VSplit : Cursors.HSplit);
				}
				else
				{
					internalSplitterParent2.OverrideCursor = null;
				}
			}
		}
	}

	public bool HitTest(int x, int y)
	{
		return bounds.Contains(x, y);
	}

	public void CancelMode()
	{
		lock (this)
		{
			if (Pushed)
			{
				Container.Capture = false;
			}
			Pushed = false;
			Hovered = false;
			if (Dirty)
			{
				Refresh();
			}
			if (parent is IInternalSplitterParent internalSplitterParent)
			{
				internalSplitterParent.OverrideCursor = null;
				internalSplitterParent.OnMovedSplitter(null);
			}
			foreach (object control in controlList)
			{
				if (control is IInternalSplitterParent internalSplitterParent2)
				{
					internalSplitterParent2.OverrideCursor = null;
				}
			}
		}
	}

	protected void OnCancelModeEvent(object sender, EventArgs e)
	{
		CancelMode();
	}

	protected void OnMouseDownEvent(object sender, MouseEventArgs e)
	{
		lock (this)
		{
			if (Pushed)
			{
				if (e.Button != MouseButtons.Left)
				{
					CancelMode();
				}
				return;
			}
			Control control = sender as Control;
			cachedMousePos = Point.Empty;
			Pushed = HitTest(e.X, e.Y);
			if (Pushed)
			{
				if (Dirty)
				{
					cachedMousePos = new Point(e.X, e.Y);
					Refresh();
				}
				control.Capture = true;
			}
		}
	}

	protected void OnMouseUpEvent(object sender, MouseEventArgs e)
	{
		lock (this)
		{
			bool pushed = Pushed;
			if (Pushed)
			{
				Container.Capture = false;
			}
			Pushed = false;
			Hovered = false;
			if (m_bMouseDoubleClicked)
			{
				m_bMouseDoubleClicked = false;
			}
			else
			{
				if (!pushed)
				{
					return;
				}
				try
				{
					if (parent is IInternalSplitterParent internalSplitterParent)
					{
						if (!HitTest(e.X, e.Y))
						{
							int x = e.X - bounds.Left - bounds.Width / 2;
							int y = e.Y - bounds.Top - bounds.Height / 2;
							internalSplitterParent.OnMoveSplitter(this, x, y);
							internalSplitterParent.OnMovedSplitter(this);
						}
						else
						{
							cachedMousePos = Point.Empty;
							OnMouseMoveEvent(sender, e);
						}
					}
					return;
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(null, ex))
					{
						throw;
					}
					return;
				}
			}
		}
	}

	protected void OnMouseMoveEvent(object sender, MouseEventArgs e)
	{
		lock (this)
		{
			bool hovered = !Pushed && HitTest(e.X, e.Y);
			if (!cachedMousePos.IsEmpty && ((kind == InternalSplitterKind.HorizontalBar && Math.Abs(e.X - cachedMousePos.X) < 3) || (kind == InternalSplitterKind.VerticalBar && Math.Abs(e.Y - cachedMousePos.Y) < 3)))
			{
				return;
			}
			cachedMousePos = Point.Empty;
			if (!Pushed)
			{
				Hovered = hovered;
				if (Dirty)
				{
					Refresh();
				}
			}
			if (!Pushed)
			{
				return;
			}
			if (Dirty)
			{
				Refresh();
			}
			try
			{
				if (parent is IInternalSplitterParent internalSplitterParent && !HitTest(e.X, e.Y))
				{
					int x = e.X - bounds.Left - bounds.Width / 2;
					int y = e.Y - bounds.Top - bounds.Height / 2;
					internalSplitterParent.OnMoveSplitter(this, x, y);
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(null, ex))
				{
					throw;
				}
			}
		}
	}

	protected void OnMouseLeaveEvent(object sender, EventArgs e)
	{
		lock (this)
		{
			if (!Pushed)
			{
				Hovered = false;
				if (Dirty)
				{
					Refresh();
				}
			}
		}
	}

	protected void OnMouseDoubleClick(object sender, MouseEventArgs e)
	{
		m_bMouseDoubleClicked = true;
	}
}
