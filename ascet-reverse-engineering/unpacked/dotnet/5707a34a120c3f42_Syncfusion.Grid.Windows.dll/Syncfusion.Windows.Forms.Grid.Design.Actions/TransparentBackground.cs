using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class TransparentBackground : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Options.TransparentBackground = !grid.Model.Options.TransparentBackground;
		}
	}
}
