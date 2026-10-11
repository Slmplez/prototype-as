using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleCenter : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				AlignCenter.PerformAction(grid);
				base.MainWindow.SetAlignCenterState();
			}
			else
			{
				AlignLeft.PerformAction(grid);
				base.MainWindow.SetAlignLeftState();
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				AlignCenter.PerformAction(grid);
				base.MainWindow.SetAlignCenterState();
			}
			else
			{
				AlignLeft.PerformAction(grid);
				base.MainWindow.SetAlignLeftState();
			}
		}
	}
}
