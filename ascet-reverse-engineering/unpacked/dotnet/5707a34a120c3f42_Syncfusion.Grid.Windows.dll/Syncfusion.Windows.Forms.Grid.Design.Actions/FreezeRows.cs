using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FreezeRows : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Rows.FreezeSelection();
			base.MainWindow.MarkDirty(dirty: true);
			GridDesignerMain.syncProps.FrozenRowCount = grid.Model.Rows.FrozenCount;
		}
	}
}
