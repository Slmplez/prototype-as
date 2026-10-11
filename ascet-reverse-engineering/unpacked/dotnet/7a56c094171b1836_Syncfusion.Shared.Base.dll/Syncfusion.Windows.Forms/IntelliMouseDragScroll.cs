using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class IntelliMouseDragScroll : NonFinalizeDisposable
{
	private const string manifestPrefix = "Syncfusion.Windows.Forms.Scrolling.";

	private const int clickHoldTicks = 750;

	[ThreadStatic]
	private static IntelliMouseDragScroll activeImm = null;

	private bool isDragging;

	private static object startstopSemaphor = true;

	private static object elapsedSemaphor = true;

	private Point startPoint = Point.Empty;

	private bool vertical = true;

	private bool horizontal = true;

	private Rectangle bitmapRect = Rectangle.Empty;

	private MouseButtons buttonState;

	private Size offset = default(Size);

	private Control control;

	private int downMouseTick = int.MinValue;

	private bool clickHold;

	private bool enabled;

	private bool hookMouseDownMessage;

	private Timer repeatScrollEventTimer;

	private long nTimerCount;

	[ThreadStatic]
	internal static DragWindow _dragWindow = null;

	private Cursor cursor;

	internal static DragWindow dragWindow
	{
		get
		{
			if (_dragWindow == null)
			{
				_dragWindow = new DragWindow();
			}
			return _dragWindow;
		}
	}

	public static IntelliMouseDragScroll ActiveIntelliMouseDragScroll => activeImm;

	public ScrollBars AllowScrolling
	{
		get
		{
			return (ScrollBars)((vertical ? 2 : 0) | (horizontal ? 1 : 0));
		}
		set
		{
			vertical = (value & ScrollBars.Vertical) != 0;
			horizontal = (value & ScrollBars.Horizontal) != 0;
		}
	}

	public bool IsDragging => isDragging;

	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (enabled != value)
			{
				UnwireControl();
				enabled = value;
				WireControl();
			}
		}
	}

	public Cursor Cursor => cursor;

	public event IntelliMouseDragScrollEventHandler DragScroll;

	public IntelliMouseDragScroll(Control control)
		: this(control, hookMouseDownMessage: false)
	{
	}

	public IntelliMouseDragScroll(Control control, bool hookMouseDownMessage)
	{
		this.control = control;
		this.hookMouseDownMessage = hookMouseDownMessage;
		WireControl();
	}

	private void WireControl()
	{
		if (!enabled)
		{
			return;
		}
		if (hookMouseDownMessage)
		{
			if (!(control is ScrollControl))
			{
				control.MouseDown += ControlMouseDown;
			}
			else
			{
				((ScrollControl)control).ScrollControlMouseDown += ControlBeforeMouseDown;
			}
		}
		control.MouseUp += ControlMouseUp;
		control.Click += ControlClick;
		if (control is ICancelModeProvider)
		{
			((ICancelModeProvider)control).CancelMode += ControlCancelMode;
		}
	}

	private void UnwireControl()
	{
		if (enabled)
		{
			if (!(control is ScrollControl))
			{
				control.MouseDown -= ControlMouseDown;
			}
			else
			{
				((ScrollControl)control).ScrollControlMouseDown -= ControlBeforeMouseDown;
			}
			control.MouseUp -= ControlMouseUp;
			control.Click -= ControlClick;
			if (control is ICancelModeProvider)
			{
				((ICancelModeProvider)control).CancelMode -= ControlCancelMode;
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			StopTimer();
			UnwireControl();
			control = null;
			cursor = null;
		}
		base.Dispose(disposing);
	}

	public void StartDrag(Point startPoint)
	{
		StopDrag();
		string bitmapName;
		if (vertical && horizontal)
		{
			bitmapName = "IMALL.BMP";
		}
		else if (vertical)
		{
			bitmapName = "IMVERT.BMP";
		}
		else
		{
			if (!horizontal)
			{
				return;
			}
			bitmapName = "IMHORZ.BMP";
		}
		Bitmap bitmap = GetBitmap(bitmapName);
		if (bitmap != null)
		{
			isDragging = true;
			this.startPoint = startPoint;
			buttonState = Control.MouseButtons;
			bitmapRect = new Rectangle(startPoint.X - bitmap.Width / 4, startPoint.Y - bitmap.Height / 4, bitmap.Width / 2, bitmap.Height / 2);
			Point mousePosition = Control.MousePosition;
			SetCursor(control, ScrollCursors.DragWheelAllCursor);
			dragWindow.ShowWindowTopMost();
			dragWindow.WindowCursor = ScrollCursors.DragWheelAllCursor;
			dragWindow.TransparencyKey = Color.Red;
			dragWindow.DragBitmap = bitmap;
			dragWindow.StartDrag(mousePosition);
			Cursor.Current = ScrollCursors.DragWheelAllCursor;
			StartTimer();
			activeImm = this;
		}
	}

	public void StopDrag()
	{
		try
		{
			StopTimer();
			if (isDragging)
			{
				Point mousePosition = Control.MousePosition;
				mousePosition.Offset(offset.Width, offset.Height);
				Cursor.Position = mousePosition;
				SetCursor(control, Cursors.Default);
				isDragging = false;
				dragWindow.StopDrag();
				dragWindow.StopDrag();
			}
		}
		finally
		{
			activeImm = null;
		}
	}

	private void ControlMouseDown(object sender, MouseEventArgs e)
	{
		if (IsDragging)
		{
			StopDrag();
		}
		else if (e.Button == MouseButtons.Middle)
		{
			StartDrag(Control.MousePosition);
			downMouseTick = Environment.TickCount;
		}
		clickHold = false;
	}

	private void ControlBeforeMouseDown(object sender, CancelMouseEventArgs e)
	{
		if (IsDragging)
		{
			StopDrag();
			e.Cancel = true;
		}
		else if (e.MouseEventArgs.Button == MouseButtons.Middle)
		{
			StartDrag(Control.MousePosition);
			downMouseTick = Environment.TickCount;
			e.Cancel = true;
		}
		clickHold = false;
	}

	private void ControlMouseUp(object sender, MouseEventArgs e)
	{
		if (!clickHold)
		{
			StopDrag();
		}
	}

	private void ControlClick(object sender, EventArgs e)
	{
		if (!clickHold)
		{
			StopDrag();
		}
	}

	private void ControlCancelMode(object sender, EventArgs e)
	{
		StopDrag();
	}

	private static Bitmap GetBitmap(string bitmapName)
	{
		Bitmap bitmap = null;
		try
		{
			Type typeFromHandle = typeof(IntelliMouseDragScroll);
			Stream manifestResourceStream = typeFromHandle.Module.Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Scrolling." + bitmapName);
			bitmap = new Bitmap(manifestResourceStream);
			bitmap?.MakeTransparent(Color.Red);
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.Message);
			throw;
		}
		return bitmap;
	}

	private void SetCursor(Control control, Cursor cursor)
	{
		if (control is ScrollControl)
		{
			((ScrollControl)control).OverrideCursor = cursor;
		}
		control.Cursor = cursor;
		this.cursor = cursor;
	}

	private void CheckAction()
	{
		Point mousePosition = Control.MousePosition;
		if (!control.Bounds.Contains(control.Parent.PointToClient(mousePosition)))
		{
			downMouseTick = int.MaxValue;
			return;
		}
		if (bitmapRect.Contains(mousePosition))
		{
			if (Environment.TickCount - downMouseTick > 750)
			{
				clickHold = true;
			}
			SetCursor(control, ScrollCursors.DragWheelAllCursor);
			SlowTimer();
			return;
		}
		downMouseTick = int.MaxValue;
		int dx = 0;
		int dy = 0;
		if (horizontal)
		{
			dx = mousePosition.X - startPoint.X;
		}
		if (vertical)
		{
			dy = mousePosition.Y - startPoint.Y;
		}
		if (Math.Abs(dy) > Math.Abs(dx))
		{
			dx = 0;
		}
		else
		{
			dy = 0;
		}
		if (!RaiseIntelliMouseDragScroll(ref dx, ref dy))
		{
			return;
		}
		if (Math.Abs(dy) > Math.Abs(dx))
		{
			if (Math.Abs(dy) < bitmapRect.Height)
			{
				SlowTimer();
			}
			if (dy > 0)
			{
				SetCursor(control, ScrollCursors.DragWheelSouthCursor);
			}
			else
			{
				SetCursor(control, ScrollCursors.DragWheelNorthCursor);
			}
		}
		else
		{
			if (Math.Abs(dx) < bitmapRect.Width)
			{
				SlowTimer();
			}
			if (dx > 0)
			{
				SetCursor(control, ScrollCursors.DragWheelEastCursor);
			}
			else
			{
				SetCursor(control, ScrollCursors.DragWheelWestCursor);
			}
		}
	}

	private bool RaiseIntelliMouseDragScroll(ref int dx, ref int dy)
	{
		if (this.DragScroll != null)
		{
			IntelliMouseDragScrollEventArgs e = new IntelliMouseDragScrollEventArgs(dx, dy);
			try
			{
				this.DragScroll(this, e);
				dx = e.DX;
				dy = e.DY;
				return !e.Cancel;
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(null, ex))
				{
					throw;
				}
				return false;
			}
		}
		return true;
	}

	private void StartTimer()
	{
		lock (startstopSemaphor)
		{
			repeatScrollEventTimer = new Timer();
			repeatScrollEventTimer.Tick += OnTimerElapsed;
			repeatScrollEventTimer.Interval = 200;
			nTimerCount = 0L;
			repeatScrollEventTimer.Enabled = true;
		}
	}

	private void SlowTimer()
	{
		repeatScrollEventTimer.Interval = 200;
		nTimerCount = 0L;
	}

	private void StopTimer()
	{
		lock (startstopSemaphor)
		{
			if (repeatScrollEventTimer != null)
			{
				repeatScrollEventTimer.Tick -= OnTimerElapsed;
				repeatScrollEventTimer.Dispose();
				repeatScrollEventTimer = null;
				nTimerCount = 0L;
			}
		}
	}

	private void OnTimerElapsed(object source, EventArgs e)
	{
		try
		{
			if (repeatScrollEventTimer != null && repeatScrollEventTimer.Enabled)
			{
				nTimerCount++;
				if (repeatScrollEventTimer.Interval > 25)
				{
					repeatScrollEventTimer.Interval = Math.Max(25, repeatScrollEventTimer.Interval - 25);
				}
				else
				{
					repeatScrollEventTimer.Interval = 10;
				}
				CheckAction();
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			NativeMethods.SendMessage(control.Handle, 31, IntPtr.Zero, IntPtr.Zero);
		}
	}
}
