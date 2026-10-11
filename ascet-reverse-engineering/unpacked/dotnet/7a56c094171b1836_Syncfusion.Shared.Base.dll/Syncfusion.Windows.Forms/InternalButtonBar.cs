using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class InternalButtonBar : Disposable
{
	private static object startstopSemaphor = true;

	private static object elapsedSemaphor = true;

	private InternalButton[] buttons;

	private Control parent;

	private Rectangle bounds;

	private Size buttonSize = new Size(8, 8);

	private int activeButton = -1;

	private bool dirty = true;

	private bool flatLook;

	private Timer repeatClickEventTimer;

	private int repeatClickDelay = 80;

	internal Rectangle placeHolderBounds = Rectangle.Empty;

	private int LogicalWidth;

	internal bool paintPlaceHolder = true;

	private int minRepeatClickDelay = 5;

	private int lastTimer = int.MinValue;

	public InternalButton[] Buttons
	{
		get
		{
			return buttons;
		}
		set
		{
			CancelMode();
			buttons = value;
			ComputeButtonSize();
			dirty = true;
		}
	}

	public bool Capture => activeButton != -1;

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			if (bounds != value)
			{
				bounds = value;
				dirty = true;
				ComputeButtonSize();
				RecalcLayout(initToolTip: false);
				if (placeHolderBounds.IsEmpty && LogicalWidth < value.Width)
				{
					bounds.Width = buttons.Length * ButtonSize.Width;
				}
			}
		}
	}

	public Size ButtonSize
	{
		get
		{
			return buttonSize;
		}
		set
		{
			buttonSize = value;
			dirty = true;
		}
	}

	public bool FlatLook
	{
		get
		{
			return flatLook;
		}
		set
		{
			flatLook = value;
			dirty = true;
		}
	}

	public bool Dirty
	{
		get
		{
			if (dirty)
			{
				return true;
			}
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				foreach (InternalButton internalButton in array)
				{
					if (internalButton != null && internalButton.Dirty)
					{
						return true;
					}
				}
			}
			return false;
		}
		set
		{
			dirty = value;
			if (buttons == null)
			{
				return;
			}
			InternalButton[] array = buttons;
			foreach (InternalButton internalButton in array)
			{
				if (internalButton != null)
				{
					internalButton.Dirty = value;
				}
			}
		}
	}

	public bool Enabled
	{
		get
		{
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				foreach (InternalButton internalButton in array)
				{
					if (internalButton != null && internalButton.Enabled)
					{
						return true;
					}
				}
			}
			return false;
		}
		set
		{
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				foreach (InternalButton internalButton in array)
				{
					if (internalButton != null)
					{
						internalButton.Enabled = value;
					}
				}
			}
			if (!value && Dirty)
			{
				CancelMode();
			}
		}
	}

	public bool Hovered
	{
		get
		{
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				foreach (InternalButton internalButton in array)
				{
					if (internalButton != null && internalButton.Hovered)
					{
						return true;
					}
				}
			}
			return false;
		}
	}

	public bool Pushed
	{
		get
		{
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				foreach (InternalButton internalButton in array)
				{
					if (internalButton != null && internalButton.Pushed)
					{
						return true;
					}
				}
			}
			return false;
		}
	}

	public int RepeatClickDelay
	{
		get
		{
			return repeatClickDelay;
		}
		set
		{
			repeatClickDelay = value;
		}
	}

	public int MinRepeatClickDelay
	{
		get
		{
			return minRepeatClickDelay;
		}
		set
		{
			minRepeatClickDelay = value;
		}
	}

	public InternalButtonBar(Control parent)
	{
		this.parent = parent;
		buttons = new InternalButton[0];
		WireEvents();
	}

	private void WireEvents()
	{
		if (parent != null)
		{
			parent.MouseDown += OnMouseDownEvent;
			parent.MouseMove += OnMouseMoveEvent;
			parent.MouseUp += OnMouseUpEvent;
			parent.MouseLeave += OnMouseLeaveEvent;
			if (parent is ButtonBar buttonBar)
			{
				buttonBar.CancelMode += OnCancelModeEvent;
			}
		}
	}

	private void UnwireEvents()
	{
		if (parent != null)
		{
			parent.MouseDown -= OnMouseDownEvent;
			parent.MouseMove -= OnMouseMoveEvent;
			parent.MouseUp -= OnMouseUpEvent;
			parent.MouseLeave -= OnMouseLeaveEvent;
			if (parent is ButtonBar buttonBar)
			{
				buttonBar.CancelMode -= OnCancelModeEvent;
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			CancelMode();
			if (buttons != null)
			{
				InternalButton[] array = buttons;
				for (int i = 0; i < array.Length; i++)
				{
					array[i]?.Dispose();
				}
				buttons = null;
			}
			UnwireEvents();
			parent = null;
			if (repeatClickEventTimer != null)
			{
				repeatClickEventTimer.Dispose();
			}
			repeatClickEventTimer = null;
		}
		base.Dispose(disposing);
	}

	protected virtual void OnClickedButton(InternalButton button)
	{
		try
		{
			if (parent is IInternalButtonParent internalButtonParent)
			{
				internalButtonParent.OnClickedButton(button);
			}
		}
		catch (Exception ex)
		{
			CancelMode();
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal Rectangle ReverseRectangleRTL(Rectangle r)
	{
		if (parent.RightToLeft == RightToLeft.Yes)
		{
			return new Rectangle(bounds.X + bounds.Right - r.Right, r.Top, r.Width, r.Height);
		}
		return r;
	}

	public void Paint(Graphics g)
	{
		try
		{
			if (bounds.IsEmpty || buttonSize.IsEmpty || !g.ClipBounds.IntersectsWith(bounds))
			{
				return;
			}
			if (LogicalWidth == 0)
			{
				RecalcLayout(initToolTip: false);
			}
			for (int i = 0; i < buttons.Length; i++)
			{
				InternalButton internalButton = buttons[i];
				if (internalButton == null)
				{
					if (paintPlaceHolder)
					{
						if (parent != null)
						{
							Brush brush = new SolidBrush(parent.BackColor);
							g.FillRectangle(brush, ReverseRectangleRTL(placeHolderBounds));
							brush.Dispose();
						}
						else
						{
							g.FillRectangle(SystemBrushes.ScrollBar, ReverseRectangleRTL(placeHolderBounds));
						}
					}
				}
				else
				{
					internalButton.Paint(g, ReverseRectangleRTL(internalButton.Bounds), flatLook, bounds);
				}
			}
			if (LogicalWidth < bounds.Width && placeHolderBounds.IsEmpty)
			{
				g.FillRectangle(rect: ReverseRectangleRTL(new Rectangle(bounds.Left + LogicalWidth, bounds.Top, bounds.Width - LogicalWidth, bounds.Height)), brush: SystemBrushes.ScrollBar);
			}
		}
		finally
		{
			dirty = false;
		}
	}

	public int HitTest(int x, int y)
	{
		if (bounds.Contains(x, y))
		{
			for (int i = 0; i < buttons.Length; i++)
			{
				InternalButton internalButton = buttons[i];
				if (internalButton != null && ReverseRectangleRTL(internalButton.Bounds).Contains(x, y))
				{
					return i;
				}
			}
		}
		return -1;
	}

	public void InitToolTips()
	{
		RecalcLayout(initToolTip: true);
	}

	public void ResetToolTips()
	{
		if (buttons != null)
		{
			InternalButton[] array = buttons;
			for (int i = 0; i < array.Length; i++)
			{
				array[i]?.ResetToolTip();
			}
		}
	}

	public void RecalcLayout(bool initToolTip)
	{
		int num = 0;
		int num2 = -1;
		Size size = Size.Empty;
		int num3 = 0;
		int num4 = 0;
		placeHolderBounds = Rectangle.Empty;
		Rectangle rectangle = new Rectangle(bounds.Left - num3, bounds.Top, 0, bounds.Height);
		for (int i = 0; i < buttons.Length; i++)
		{
			InternalButton internalButton = buttons[i];
			if (internalButton == null)
			{
				if (num2 != -1)
				{
					throw new Exception("A second\tempty\tbutton detected.");
				}
				num2 = i;
				continue;
			}
			internalButton.AdjustSize();
			if (internalButton.SpinButton != SpinButtonType.None && i + 1 < buttons.Length && buttons[i + 1].SpinButton != SpinButtonType.None)
			{
				i++;
				buttons[i].AdjustSize();
			}
			num = ((!internalButton.Size.IsEmpty) ? (num + internalButton.Size.Width) : (num + buttonSize.Width));
		}
		if (num2 != -1)
		{
			size = ((bounds.Width <= num) ? Size.Empty : new Size(bounds.Width - num, bounds.Height));
		}
		bool flag = false;
		for (int j = 0; j < buttons.Length; j++)
		{
			InternalButton internalButton2 = buttons[j];
			if (internalButton2 == null)
			{
				rectangle.Width = size.Width;
				placeHolderBounds = rectangle;
			}
			else
			{
				if (internalButton2.Size.IsEmpty)
				{
					rectangle.Width = buttonSize.Width;
				}
				else
				{
					rectangle.Width = internalButton2.Size.Width;
				}
				internalButton2.Bounds = rectangle;
				if (initToolTip)
				{
					internalButton2.InitToolTip(Rectangle.Intersect(ReverseRectangleRTL(internalButton2.Bounds), bounds));
				}
				if (internalButton2.SpinButton != SpinButtonType.None && j + 1 < buttons.Length && buttons[j + 1].SpinButton != SpinButtonType.None && !flag)
				{
					flag = true;
					continue;
				}
			}
			flag = false;
			rectangle.Offset(rectangle.Width - num4, 0);
		}
		LogicalWidth = num;
	}

	public void CancelMode()
	{
		StopTimer();
		ResetHovered();
		ResetPushed();
		activeButton = -1;
		InvalidateIfDirty();
	}

	public void InvalidateIfDirty()
	{
		if (Dirty)
		{
			parent.Invalidate(bounds);
		}
	}

	[DocumentationExclude]
	protected void OnCancelModeEvent(object sender, EventArgs e)
	{
		CancelMode();
	}

	[DocumentationExclude]
	protected void OnMouseDownEvent(object sender, MouseEventArgs e)
	{
		if (Capture)
		{
			CancelMode();
			return;
		}
		ResetHovered();
		int num = HitTest(e.X, e.Y);
		if (num == -1)
		{
			return;
		}
		InternalButton internalButton = buttons[num];
		if (!internalButton.Enabled)
		{
			return;
		}
		activeButton = num;
		internalButton.Pushed = true;
		InvalidateIfDirty();
		if (internalButton.Pushed)
		{
			OnClickedButton(internalButton);
		}
		if (Capture && internalButton.Pushed)
		{
			if (internalButton.RepeatClick)
			{
				StartTimer();
			}
		}
		else
		{
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected void OnMouseUpEvent(object sender, MouseEventArgs e)
	{
		CancelMode();
	}

	[DocumentationExclude]
	protected void OnMouseMoveEvent(object sender, MouseEventArgs e)
	{
		int num = HitTest(e.X, e.Y);
		if (Capture)
		{
			InternalButton internalButton = buttons[activeButton];
			if (num != activeButton)
			{
				internalButton.Pushed = false;
				StopTimer();
			}
			else if (!internalButton.Pushed)
			{
				internalButton.Pushed = true;
				if (!internalButton.Pushed)
				{
					CancelMode();
				}
				else if (internalButton.RepeatClick)
				{
					StartTimer();
				}
			}
		}
		else if (!parent.Capture)
		{
			for (int i = 0; i < buttons.Length; i++)
			{
				if (buttons[i] != null)
				{
					buttons[i].Hovered = i == num;
				}
			}
		}
		InvalidateIfDirty();
	}

	[DocumentationExclude]
	protected void OnMouseLeaveEvent(object sender, EventArgs e)
	{
		ResetHovered();
		ResetPushed();
		InvalidateIfDirty();
	}

	private void StartTimer()
	{
		lock (startstopSemaphor)
		{
			repeatClickEventTimer = new Timer();
			repeatClickEventTimer.Tick += OnTimerElapsed;
			repeatClickEventTimer.Interval = repeatClickDelay;
			repeatClickEventTimer.Enabled = true;
		}
	}

	private void StopTimer()
	{
		lock (startstopSemaphor)
		{
			if (repeatClickEventTimer != null)
			{
				repeatClickEventTimer.Tick -= OnTimerElapsed;
				repeatClickEventTimer.Dispose();
				repeatClickEventTimer = null;
			}
		}
	}

	private void OnTimerElapsed(object source, EventArgs e)
	{
		if (repeatClickEventTimer != null && Control.MouseButtons != MouseButtons.None && Environment.TickCount >= lastTimer + minRepeatClickDelay)
		{
			if (repeatClickEventTimer.Interval > 35 + minRepeatClickDelay)
			{
				repeatClickEventTimer.Interval -= 35;
			}
			else if (repeatClickEventTimer.Interval > 10 + minRepeatClickDelay)
			{
				repeatClickEventTimer.Interval -= 5;
			}
			else
			{
				repeatClickEventTimer.Interval = minRepeatClickDelay;
			}
			if (!Capture)
			{
				StopTimer();
			}
			else
			{
				OnClickedButton(buttons[activeButton]);
			}
			lastTimer = Environment.TickCount;
		}
	}

	private void ComputeButtonSize()
	{
		if (buttons.Length > 0)
		{
			Size maxSize = new Size(bounds.Width / buttons.Length, bounds.Height);
			InternalButton internalButton = buttons[0];
			if (internalButton != null)
			{
				ButtonSize = internalButton.GetPreferredSize(maxSize);
			}
		}
	}

	public void ResetHovered()
	{
		if (buttons == null)
		{
			return;
		}
		InternalButton[] array = buttons;
		foreach (InternalButton internalButton in array)
		{
			if (internalButton != null)
			{
				internalButton.Hovered = false;
			}
		}
	}

	public void ResetPushed()
	{
		if (buttons == null)
		{
			return;
		}
		InternalButton[] array = buttons;
		foreach (InternalButton internalButton in array)
		{
			if (internalButton != null)
			{
				internalButton.Pushed = false;
			}
		}
	}
}
