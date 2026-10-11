using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class BlackWhiteGrid : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Properties.BlackWhite = !grid.Model.Properties.BlackWhite;
			grid.Model.Refresh();
		}
	}
}
