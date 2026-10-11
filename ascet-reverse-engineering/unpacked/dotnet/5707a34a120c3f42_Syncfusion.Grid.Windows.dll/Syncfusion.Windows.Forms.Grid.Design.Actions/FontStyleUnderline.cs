using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FontStyleUnderline : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		PerformAction(underline: true, grid);
	}

	public static void PerformAction(bool underline, GridControlBase grid)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.Font.Underline = underline;
		GridDesignerBasicAction.ApplyStyle(gridStyleInfo, grid);
	}
}
