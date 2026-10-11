using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ScrollControllMouseControllerDispatcher : MouseControllerDispatcher
{
	private ScrollControl owner;

	private MouseEventArgs savedMouseMoveEventArgs;

	private bool ignoreUICues;

	public ScrollControllMouseControllerDispatcher(ScrollControl owner)
		: base(owner)
	{
		this.owner = owner;
		WireEvents();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnwireEvents();
		}
		base.Dispose(disposing);
	}

	private void WireEvents()
	{
		owner.ScrollControlMouseDown += ScrollControlBeforeMouseDown;
		owner.ScrollControlHandledMouseMove += ScrollControlMouseMoveHandled;
		owner.ScrollControlMouseUp += ScrollControlBeforeMouseUp;
		owner.CancelMode += ScrollControlCancelMode;
		owner.ChangeUICues += ScrollControlChangeUICues;
		owner.VisibleChanged += ScrollControlCancelMode;
	}

	private void UnwireEvents()
	{
		owner.ScrollControlMouseDown -= ScrollControlBeforeMouseDown;
		owner.ScrollControlHandledMouseMove -= ScrollControlMouseMoveHandled;
		owner.ScrollControlMouseUp -= ScrollControlBeforeMouseUp;
		owner.CancelMode -= ScrollControlCancelMode;
		owner.ChangeUICues -= ScrollControlChangeUICues;
		owner.VisibleChanged -= ScrollControlCancelMode;
		owner.WindowScrolled -= ScrollControlWindowScrolled;
		owner.WindowScrolling -= ScrollControlWindowScrolling;
	}

	private void ScrollControlChangeUICues(object sender, UICuesEventArgs e)
	{
		if (!ignoreUICues && !owner.IgnoreUICues)
		{
			ProcessCancelMode();
		}
	}

	private void ScrollControlWindowScrolling(object sender, ScrollWindowEventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.None && base.MouseHoverController != null)
		{
			SetMouseHoverController(null, e);
			base.Owner.Update();
		}
	}

	private void ScrollControlWindowScrolled(object sender, ScrollWindowEventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.None && savedMouseMoveEventArgs != null)
		{
			ProcessMouseMove(savedMouseMoveEventArgs);
		}
	}

	private void ScrollControlBeforeMouseDown(object sender, CancelMouseEventArgs e)
	{
		ignoreUICues = true;
		ProcessMouseDown(e.MouseEventArgs);
		ignoreUICues = false;
	}

	private void ScrollControlMouseMoveHandled(object sender, MouseEventArgs e)
	{
		savedMouseMoveEventArgs = e;
		ProcessMouseMove(e);
	}

	private void ScrollControlBeforeMouseUp(object sender, CancelMouseEventArgs e)
	{
		ProcessMouseUp(e.MouseEventArgs);
	}

	private void ScrollControlCancelMode(object sender, EventArgs e)
	{
		ProcessCancelMode();
	}
}
