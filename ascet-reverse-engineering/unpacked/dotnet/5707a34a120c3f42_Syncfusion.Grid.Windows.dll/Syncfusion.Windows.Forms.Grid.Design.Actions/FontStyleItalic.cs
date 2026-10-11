using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FontStyleItalic : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		PerformAction(italic: true, grid);
	}

	public static void PerformAction(bool italic, GridControlBase grid)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.Font.Italic = italic;
		GridDesignerBasicAction.ApplyStyle(gridStyleInfo, grid);
	}
}
