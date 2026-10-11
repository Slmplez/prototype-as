using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleUnderline : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				FontStyleUnderline.PerformAction(underline: true, grid);
			}
			else
			{
				FontStyleUnderline.PerformAction(underline: false, grid);
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				FontStyleUnderline.PerformAction(underline: true, grid);
			}
			else
			{
				FontStyleUnderline.PerformAction(underline: false, grid);
			}
		}
	}
}
