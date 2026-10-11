using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FreezeColumns : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Cols.FreezeSelection();
			base.MainWindow.MarkDirty(dirty: true);
			GridDesignerMain.syncProps.FrozenColCount = grid.Model.Cols.FrozenCount;
		}
	}
}
