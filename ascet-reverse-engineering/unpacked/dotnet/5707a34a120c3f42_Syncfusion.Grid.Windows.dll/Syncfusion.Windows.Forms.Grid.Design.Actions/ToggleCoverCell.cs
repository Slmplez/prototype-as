using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleCoverCell : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				CoverCell.PerformAction(grid);
			}
			else
			{
				ResetCover.PerformAction(grid);
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				CoverCell.PerformAction(grid);
			}
			else
			{
				ResetCover.PerformAction(grid);
			}
		}
		base.MainWindow.MarkDirty(dirty: true);
	}
}
