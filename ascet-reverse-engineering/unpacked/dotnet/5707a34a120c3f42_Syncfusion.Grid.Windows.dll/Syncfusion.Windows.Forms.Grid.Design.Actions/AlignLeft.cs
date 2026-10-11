using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class AlignLeft : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		PerformAction(grid);
	}

	public static void PerformAction(GridControlBase grid)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left;
		GridDesignerBasicAction.ApplyStyle(gridStyleInfo, grid);
	}
}
