using System.Windows.Forms;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.InternalMenus;

namespace Syncfusion.Windows.Forms.Grid.Design;

internal abstract class GridDesignerBasicAction : BasicAction
{
	protected GridControlBase ActiveGrid
	{
		get
		{
			if (MainWindow != null)
			{
				if (MainWindow.ActiveControl is Form)
				{
					return GetGrid((Form)MainWindow.ActiveControl);
				}
				if (MainWindow.ActiveControl != null)
				{
					return GetGrid(MainWindow.ActiveControl.FindForm());
				}
			}
			return null;
		}
	}

	protected new GridFrame MainWindow
	{
		get
		{
			return base.MainWindow as GridFrame;
		}
		set
		{
			base.MainWindow = value;
		}
	}

	public virtual void SetState(bool selected, object sourceObject)
	{
		if (sourceObject != null)
		{
			if (typeof(ToolBarButton).IsInstanceOfType(sourceObject))
			{
				((ToolBarButton)sourceObject).Pushed = selected;
			}
			else if (typeof(MenuItem).IsInstanceOfType(sourceObject))
			{
				((MenuItem)sourceObject).Checked = selected;
			}
			else if (typeof(ToolStripButton).IsInstanceOfType(sourceObject))
			{
				((ToolStripButton)sourceObject).CheckState = (selected ? CheckState.Checked : CheckState.Unchecked);
			}
		}
	}

	protected GridControlBase GetGrid(Form form)
	{
		if (form != null)
		{
			Control control = form.ActiveControl;
			while (control is ContainerControl)
			{
				control = ((ContainerControl)control).ActiveControl;
			}
			if (!(control is GridControlBase))
			{
				control = control.Parent;
			}
			if (control is GridControlBase)
			{
				GridControlBase gridControlBase = (GridControlBase)control;
				if (control != null && gridControlBase == null)
				{
					gridControlBase = ((control.Parent is GridControlBase) ? gridControlBase : null);
				}
				return gridControlBase;
			}
		}
		return null;
	}

	protected static void ApplyStyle(GridStyleInfo style, GridControlBase grid)
	{
		if (grid == null)
		{
			return;
		}
		grid.Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true);
		foreach (GridRangeInfo item in ranges)
		{
			grid.Model.ChangeCells(item, style, StyleModifyType.Override);
		}
	}
}
