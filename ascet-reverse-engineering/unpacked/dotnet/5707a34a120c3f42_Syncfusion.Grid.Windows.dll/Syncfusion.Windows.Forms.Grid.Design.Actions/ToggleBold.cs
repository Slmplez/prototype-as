using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleBold : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				FontStyleBold.PerformAction(bold: true, grid);
			}
			else
			{
				FontStyleBold.PerformAction(bold: false, grid);
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				FontStyleBold.PerformAction(bold: true, grid);
			}
			else
			{
				FontStyleBold.PerformAction(bold: false, grid);
			}
		}
	}
}
