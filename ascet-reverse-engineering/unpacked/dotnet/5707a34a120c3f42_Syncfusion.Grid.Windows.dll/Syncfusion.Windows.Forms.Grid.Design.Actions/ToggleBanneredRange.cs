using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleBanneredRange : GridDesignerBasicAction
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
				MakeBanneredRange.PerformAction(grid);
			}
			else
			{
				ResetBanneredRange.PerformAction(grid);
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				MakeBanneredRange.PerformAction(grid);
			}
			else
			{
				ResetBanneredRange.PerformAction(grid);
			}
		}
		base.MainWindow.MarkDirty(dirty: true);
	}
}
