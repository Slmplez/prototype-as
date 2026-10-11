using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
[ToolboxItem(false)]
public class MenuScrollControl : MenuArrowButtonControl
{
	private Timer timer = new Timer();

	private MenuGrid grid;

	public MenuGrid MenuGrid
	{
		get
		{
			return grid;
		}
		set
		{
			grid = value;
		}
	}

	protected override bool MousePressed
	{
		get
		{
			return base.MousePressed;
		}
		set
		{
			if (base.MousePressed != value)
			{
				base.MousePressed = value;
				if (!base.MousePressed)
				{
					timer.Stop();
				}
				else
				{
					timer.Start();
				}
			}
		}
	}

	public MenuScrollControl(ScrollArrowState scrollArrowState)
		: base(scrollArrowState)
	{
		timer.Tick += TimerHandler;
		timer.Interval = 500;
		Text = "Menu Scroll Button";
	}

	protected override void Dispose(bool disposing)
	{
		timer.Tick -= TimerHandler;
		base.Dispose(disposing);
	}

	private void TimerHandler(object source, EventArgs args)
	{
		DoScroll();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if ((scrollArrowState & ScrollArrowState.Disabled) == 0)
		{
			MousePressed = true;
			DoScroll();
		}
		base.OnMouseDown(e);
	}

	protected virtual void DoScroll()
	{
		if (grid != null)
		{
			if ((scrollArrowState & ScrollArrowState.Down) > (ScrollArrowState)0)
			{
				grid.Scroll(down: true);
			}
			else
			{
				grid.Scroll(down: false);
			}
		}
	}

	internal void UpdateScrollState()
	{
		if (grid != null)
		{
			if (grid.CanScroll((scrollArrowState & ScrollArrowState.Down) > (ScrollArrowState)0))
			{
				base.ArrowState &= ~ScrollArrowState.Disabled;
			}
			else
			{
				base.ArrowState |= ScrollArrowState.Disabled;
			}
		}
	}

	protected override void OnMouseHover(EventArgs e)
	{
		if (MousePressed)
		{
			DoScroll();
		}
		base.OnMouseHover(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		MousePressed = false;
		base.OnMouseUp(e);
	}
}
