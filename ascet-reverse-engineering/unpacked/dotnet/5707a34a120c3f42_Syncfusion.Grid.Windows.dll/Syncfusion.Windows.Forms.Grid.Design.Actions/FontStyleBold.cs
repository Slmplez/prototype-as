using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FontStyleBold : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		PerformAction(bold: true, grid);
	}

	public static void PerformAction(bool bold, GridControlBase grid)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.Font.Bold = bold;
		GridDesignerBasicAction.ApplyStyle(gridStyleInfo, grid);
	}
}
