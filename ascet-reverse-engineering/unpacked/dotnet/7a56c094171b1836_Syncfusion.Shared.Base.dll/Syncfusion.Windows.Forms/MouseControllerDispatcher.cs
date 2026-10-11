using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

public class MouseControllerDispatcher : NonFinalizeDisposable, IEnumerable
{
	private Control owner;

	private ArrayList mouseControllers = new ArrayList();

	private IMouseController activeController;

	private IMouseController mouseHoverController;

	private MouseButtons savedMouseButton;

	private bool inMouseUp;

	private MouseEventArgs mouseUpEventArgs;

	private bool isMouseTracking;

	private Rectangle trackMouse = Rectangle.Empty;

	private int mouseDownTick;

	private Point mouseDownPoint;

	private MouseEventArgs lastMouseEventArgs;

	private Timer timer;

	private int hitTestCode;

	private bool allowDoubleClickTimer = true;

	public IMouseController ActiveController => activeController;

	protected IMouseController MouseHoverController => mouseHoverController;

	public int LastHitTestCode => hitTestCode;

	public bool AllowDoubleClickTimer
	{
		get
		{
			return allowDoubleClickTimer;
		}
		set
		{
			allowDoubleClickTimer = value;
		}
	}

	public Cursor DisplayCursor
	{
		get
		{
			if (activeController != null)
			{
				return activeController.Cursor;
			}
			if (mouseHoverController != null)
			{
				return mouseHoverController.Cursor;
			}
			return null;
		}
	}

	public Control Owner => owner;

	public Rectangle TrackMouse
	{
		get
		{
			return trackMouse;
		}
		set
		{
			if (trackMouse != value)
			{
				if (isMouseTracking)
				{
					ResetTrackMouse();
				}
				trackMouse = value;
				OnTrackMouseChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler ActiveControllerChanged;

	public event EventHandler TrackMouseChanged;

	public MouseControllerDispatcher(Control owner)
	{
		this.owner = owner;
		owner.MouseLeave += ControlMouseLeave;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (timer != null)
			{
				timer.Tick -= TimerTick;
				timer.Dispose();
			}
			owner.MouseLeave -= ControlMouseLeave;
			activeController = null;
			mouseHoverController = null;
			foreach (object mouseController in mouseControllers)
			{
				if (mouseController is IDisposable)
				{
					((IDisposable)mouseController).Dispose();
				}
			}
			mouseControllers.Clear();
		}
		base.Dispose(disposing);
	}

	public void Add(IMouseController controller)
	{
		if (controller == null)
		{
			throw new ArgumentNullException("controller");
		}
		if (mouseControllers.Contains(controller))
		{
			throw new ArgumentException("MouseController already exists.", "controller");
		}
		mouseControllers.Add(controller);
	}

	public void Remove(IMouseController controller)
	{
		if (controller == activeController)
		{
			throw new ArgumentException("Removing active IMouseController object is not allowed.", "controller");
		}
		if (controller == mouseHoverController)
		{
			mouseHoverController = null;
		}
		mouseControllers.Remove(controller);
	}

	public bool Contains(IMouseController controller)
	{
		return mouseControllers.Contains(controller);
	}

	public IMouseController Find(string name)
	{
		for (int i = 0; i < mouseControllers.Count; i++)
		{
			IMouseController mouseController = mouseControllers[i] as IMouseController;
			if (mouseController.Name == name)
			{
				return mouseController;
			}
		}
		return null;
	}

	private void SetActiveController(IMouseController value)
	{
		if (activeController != value)
		{
			activeController = value;
			OnActiveControllerChanged(EventArgs.Empty);
		}
	}

	protected void SetMouseHoverController(IMouseController value, EventArgs e)
	{
		if (value != mouseHoverController)
		{
			if (mouseHoverController != null)
			{
				mouseHoverController.MouseHoverLeave(e);
			}
			mouseHoverController = value;
			if (mouseHoverController != null)
			{
				mouseHoverController.MouseHoverEnter();
			}
		}
	}

	protected virtual void OnActiveControllerChanged(EventArgs e)
	{
		try
		{
			if (this.ActiveControllerChanged != null)
			{
				this.ActiveControllerChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			SetActiveController(null);
		}
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return mouseControllers.GetEnumerator();
	}

	public int HitTest(Point point)
	{
		IMouseController controller;
		return HitTest(point, MouseButtons.Left, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton)
	{
		IMouseController controller;
		return HitTest(point, mouseButton, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton, out IMouseController controller)
	{
		return HitTest(point, mouseButton, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton, int clicks, out IMouseController controller)
	{
		hitTestCode = 0;
		controller = null;
		if (Owner.IsDisposed)
		{
			return 0;
		}
		if (point.X == int.MaxValue || point.Y == int.MaxValue)
		{
			return 0;
		}
		MouseEventArgs mouseEventArgs = new MouseEventArgs(mouseButton, clicks, point.X, point.Y, 0);
		for (int i = 0; i < mouseControllers.Count; i++)
		{
			IMouseController mouseController = mouseControllers[i] as IMouseController;
			int num = mouseController.HitTest(mouseEventArgs, controller);
			if (num != 0)
			{
				hitTestCode = num;
				controller = mouseController;
			}
		}
		return hitTestCode;
	}

	public void ProcessMouseMove(MouseEventArgs e)
	{
		if (activeController != null)
		{
			if (e.Button != savedMouseButton)
			{
				ProcessCancelMode();
				return;
			}
			activeController.MouseMove(e);
			if (owner.Cursor != DisplayCursor)
			{
				owner.Cursor = DisplayCursor;
			}
		}
		else
		{
			if (e.Button != MouseButtons.None)
			{
				return;
			}
			Point point = new Point(e.X, e.Y);
			int clicks = 1;
			if (Environment.TickCount - mouseDownTick <= SystemInformation.DoubleClickTime)
			{
				if (Math.Abs(mouseDownPoint.X - e.X) < SystemInformation.DoubleClickSize.Width && Math.Abs(mouseDownPoint.Y - e.Y) < SystemInformation.DoubleClickSize.Height)
				{
					clicks = 2;
				}
				lastMouseEventArgs = e;
				if (timer == null && AllowDoubleClickTimer)
				{
					timer = new Timer();
					timer.Interval = SystemInformation.DoubleClickTime;
					timer.Tick += TimerTick;
					timer.Start();
				}
			}
			HitTest(point, MouseButtons.Left, clicks, out var controller);
			if (TrackMouse.Contains(point) && controller != null)
			{
				ProcessMouseDown(new MouseEventArgs(MouseButtons.None, 0, e.X, e.Y, 0));
			}
			else
			{
				SetMouseHoverController(controller, e);
				if (MouseHoverController != null)
				{
					MouseHoverController.MouseHover(e);
				}
			}
			owner.Cursor = DisplayCursor;
		}
	}

	private void TimerTick(object sender, EventArgs e)
	{
		if (Environment.TickCount - mouseDownTick < SystemInformation.DoubleClickTime)
		{
			return;
		}
		Timer timer = sender as Timer;
		try
		{
			timer.Tick -= TimerTick;
			timer.Dispose();
			this.timer = null;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		if (activeController == null && !isMouseTracking)
		{
			ProcessMouseMove(lastMouseEventArgs);
		}
		mouseDownTick = 0;
	}

	private void ControlMouseLeave(object sender, EventArgs e)
	{
		SetMouseHoverController(null, e);
	}

	public void ProcessMouseDown(MouseEventArgs e)
	{
		if (!Owner.IsDisposed)
		{
			Point pt = new Point(e.X, e.Y);
			if (e.Button == MouseButtons.None && TrackMouse.Contains(pt))
			{
				trackMouse = Rectangle.Empty;
				isMouseTracking = true;
			}
			else if (isMouseTracking && activeController != null)
			{
				isMouseTracking = false;
				ProcessMouseUp(e);
			}
			else if (activeController != null)
			{
				ProcessCancelMode();
				return;
			}
			int clicks = 1;
			if (Environment.TickCount - mouseDownTick <= SystemInformation.DoubleClickTime && Math.Abs(mouseDownPoint.X - e.X) < SystemInformation.DoubleClickSize.Width && Math.Abs(mouseDownPoint.Y - e.Y) < SystemInformation.DoubleClickSize.Height)
			{
				clicks = 2;
			}
			SetMouseHoverController(null, e);
			HitTest(new Point(e.X, e.Y), e.Button, clicks, out var controller);
			SetActiveController(controller);
			if (activeController != null)
			{
				activeController.MouseDown(e);
				savedMouseButton = e.Button;
				owner.Cursor = DisplayCursor;
			}
			mouseDownTick = Environment.TickCount;
			mouseDownPoint = new Point(e.X, e.Y);
		}
	}

	public void ProcessMouseUp(MouseEventArgs e)
	{
		if (!Owner.IsDisposed)
		{
			if (activeController != null)
			{
				inMouseUp = true;
				activeController.MouseUp(e);
				mouseUpEventArgs = e;
				inMouseUp = false;
			}
			activeController = null;
			if (owner != null && !owner.IsDisposed)
			{
				owner.Cursor = DisplayCursor;
			}
		}
	}

	public void ProcessCancelMode()
	{
		if (!Owner.IsDisposed && !inMouseUp)
		{
			isMouseTracking = false;
			if (activeController != null)
			{
				activeController.CancelMode();
			}
			activeController = null;
			savedMouseButton = MouseButtons.None;
			owner.Cursor = DisplayCursor;
		}
	}

	public override string ToString()
	{
		return "A " + GetType().Name + " with " + mouseControllers.Count + " IMouseControllers.";
	}

	public void ResetTrackMouse()
	{
		if (isMouseTracking)
		{
			trackMouse = Rectangle.Empty;
			isMouseTracking = false;
			ProcessCancelMode();
		}
	}

	protected virtual void OnTrackMouseChanged(EventArgs e)
	{
		if (this.TrackMouseChanged != null)
		{
			this.TrackMouseChanged(this, e);
		}
	}
}
