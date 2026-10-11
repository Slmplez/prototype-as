using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleRight : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				AlignRight.PerformAction(grid);
				base.MainWindow.SetAlignRightState();
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
				AlignRight.PerformAction(grid);
				base.MainWindow.SetAlignRightState();
			}
			else
			{
				AlignLeft.PerformAction(grid);
				base.MainWindow.SetAlignLeftState();
			}
		}
	}
}
