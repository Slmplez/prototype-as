using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ExitProgram : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		base.MainWindow.Close();
	}
}
