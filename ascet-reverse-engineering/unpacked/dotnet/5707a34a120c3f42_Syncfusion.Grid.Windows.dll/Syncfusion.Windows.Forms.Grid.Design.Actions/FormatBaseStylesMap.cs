using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FormatBaseStylesMap : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			GridBaseStylesMap.ShowGridBaseStylesMapDialog(grid.Model, "BaseStylesMap");
			grid.Model.Refresh();
		}
	}
}
