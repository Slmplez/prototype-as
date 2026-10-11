using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class MenuExpandButton : MenuArrowButtonControl
{
	private Timer timer;

	private MenuGridHost gridHost;

	public MenuExpandButton(ScrollArrowState scrollArrowState, MenuGridHost gridHost)
		: base(scrollArrowState)
	{
		this.gridHost = gridHost;
		timer = new Timer();
		timer.Interval = 5000;
		timer.Tick += TimerHandler;
		Text = "Menu Expand Button";
	}

	private MenuGrid GetGrid()
	{
		if (base.Parent != null)
		{
			foreach (Control control in base.Parent.Controls)
			{
				if (control is MenuGrid)
				{
					return control as MenuGrid;
				}
			}
		}
		return null;
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		MenuGrid grid = GetGrid();
		if (grid != null)
		{
			grid.HighlightRange = GridRangeInfo.Empty;
		}
		base.OnMouseEnter(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && timer != null)
		{
			timer.Tick -= TimerHandler;
			timer.Dispose();
			timer = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible)
		{
			timer.Start();
		}
		else
		{
			timer.Stop();
		}
		base.OnVisibleChanged(e);
	}

	private void TimerHandler(object source, EventArgs args)
	{
		if (gridHost.currentMenuGrid != null && gridHost.currentMenuGrid.NeedDelayedExpansion())
		{
			gridHost.currentMenuGrid.ExpandPartialMenus(forceOpen: false);
		}
		timer.Stop();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		MenuGrid menuGrid = gridHost.currentMenuGrid;
		if (menuGrid == null)
		{
			menuGrid = GetGrid();
		}
		menuGrid?.ExpandPartialMenus(forceOpen: true);
	}
}
