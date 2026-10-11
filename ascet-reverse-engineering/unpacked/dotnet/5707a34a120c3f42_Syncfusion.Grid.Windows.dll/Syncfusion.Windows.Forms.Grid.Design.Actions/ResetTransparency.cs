using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ResetTransparency : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.Options.TransparentBackground = false;
			grid.SupportsTransparentBackColor = false;
			grid.BackgroundImage = null;
			grid.BackColor = Color.White;
		}
	}
}
