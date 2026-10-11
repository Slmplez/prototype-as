using System;
using System.ComponentModel;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridDropDownGridListControlPart : GridListControl
{
	private int dropDownRows = 5;

	private int optimalWidth;

	private bool allowSizing = true;

	private GridDropDownContainer dropDownContainer;

	private CancelEventHandler dropDownContainerBeforeCloseUp;

	private int cancelCloseUpTicks = int.MinValue;

	public int DropDownRows
	{
		get
		{
			return dropDownRows;
		}
		set
		{
			dropDownRows = value;
			if (base.IsHandleCreated)
			{
				base.Height = grid.RowHeights.GetTotal(0, Math.Min(grid.RowCount, dropDownRows)) + 2;
			}
		}
	}

	[DocumentationExclude]
	public bool AllowModifySetBoundsCore
	{
		get
		{
			return allowSizing;
		}
		set
		{
			allowSizing = value;
		}
	}

	public GridDropDownGridListControlPart()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserMouse, value: true);
		grid.WantKeys = false;
		grid.SetWindowStyle(ControlStyles.Selectable, value: false);
		grid.CausesValidation = false;
		base.BorderStyle = BorderStyle.None;
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (msg.Msg == 33)
		{
			if (base.Parent is GridDropDownContainer && dropDownContainerBeforeCloseUp == null)
			{
				dropDownContainer = (GridDropDownContainer)base.Parent;
				dropDownContainerBeforeCloseUp = dropDownContainer_BeforeCloseUp;
				dropDownContainer.BeforeCloseUp += dropDownContainerBeforeCloseUp;
			}
			cancelCloseUpTicks = Environment.TickCount + 200;
			msg.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	private void dropDownContainer_BeforeCloseUp(object sender, CancelEventArgs e)
	{
		if (Environment.TickCount < cancelCloseUpTicks)
		{
			e.Cancel = true;
		}
		cancelCloseUpTicks = int.MinValue;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && dropDownContainerBeforeCloseUp != null && dropDownContainer != null)
		{
			dropDownContainer.BeforeCloseUp -= dropDownContainerBeforeCloseUp;
			dropDownContainerBeforeCloseUp = null;
			dropDownContainer = null;
		}
		base.Dispose(disposing);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (!allowSizing || Dock == DockStyle.Fill)
		{
			base.SetBoundsCore(x, y, width, height, specified);
			return;
		}
		if ((specified & BoundsSpecified.Size) != BoundsSpecified.None)
		{
			if ((specified & BoundsSpecified.Height) != BoundsSpecified.None)
			{
				height = grid.RowHeights.GetTotal(0, Math.Min(grid.RowCount, dropDownRows)) + 2;
				if (base.BorderStyle == BorderStyle.FixedSingle)
				{
					height += 2;
				}
				else if (base.BorderStyle == BorderStyle.Fixed3D)
				{
					height += 4;
				}
			}
			if ((specified & BoundsSpecified.Width) != BoundsSpecified.None)
			{
				optimalWidth = Math.Max(GetOptimalWidth(), width) + 1;
				if (base.BorderStyle == BorderStyle.FixedSingle)
				{
					optimalWidth += 2;
				}
				else if (base.BorderStyle == BorderStyle.Fixed3D)
				{
					optimalWidth += 4;
				}
			}
		}
		base.SetBoundsCore(x, y, optimalWidth, height, specified);
	}

	protected override void OnBindingContextChanged(EventArgs e)
	{
	}

	protected virtual int GetOptimalWidth()
	{
		PerformLayout();
		int num = grid.ColWidths.GetTotal(0, grid.ColCount);
		if (grid.RowCount > dropDownRows)
		{
			num += SystemInformation.VerticalScrollBarWidth;
		}
		return num;
	}
}
