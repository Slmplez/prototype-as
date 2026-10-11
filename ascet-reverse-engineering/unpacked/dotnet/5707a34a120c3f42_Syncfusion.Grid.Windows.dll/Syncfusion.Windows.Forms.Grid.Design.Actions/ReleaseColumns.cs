using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ReleaseColumns : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Cols.RestoreFrozen();
			base.MainWindow.MarkDirty(dirty: true);
		}
	}
}
