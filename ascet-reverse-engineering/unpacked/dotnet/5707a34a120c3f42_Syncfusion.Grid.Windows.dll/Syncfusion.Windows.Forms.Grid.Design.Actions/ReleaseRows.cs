using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ReleaseRows : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Rows.RestoreFrozen();
			base.MainWindow.MarkDirty(dirty: true);
		}
	}
}
