using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleLeft : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender) && ((ToolStripButton)sender).Checked)
		{
			AlignLeft.PerformAction(grid);
			base.MainWindow.SetAlignLeftState();
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs) && ((ToolBarButtonClickEventArgs)e).Button.Pushed)
		{
			AlignLeft.PerformAction(grid);
			base.MainWindow.SetAlignLeftState();
		}
	}
}
