using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ToggleItalic : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (typeof(ToolStripButton).IsInstanceOfType(sender))
		{
			if (((ToolStripButton)sender).Checked)
			{
				FontStyleItalic.PerformAction(italic: true, grid);
			}
			else
			{
				FontStyleItalic.PerformAction(italic: false, grid);
			}
		}
		if (e.GetType() == typeof(ToolBarButtonClickEventArgs))
		{
			if (((ToolBarButtonClickEventArgs)e).Button.Pushed)
			{
				FontStyleItalic.PerformAction(italic: true, grid);
			}
			else
			{
				FontStyleItalic.PerformAction(italic: false, grid);
			}
		}
	}
}
