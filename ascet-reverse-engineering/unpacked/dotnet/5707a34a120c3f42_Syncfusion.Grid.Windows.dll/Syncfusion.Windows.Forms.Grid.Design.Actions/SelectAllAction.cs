using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class SelectAllAction : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Selections.Clear();
			grid.Selections.Add(GridRangeInfo.Table());
		}
	}
}
