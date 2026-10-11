using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class DeleteAction : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		base.MainWindow.Grid?.Model.Clear(clearStyle: true);
	}
}
