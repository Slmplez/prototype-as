using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class RedoAction : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		base.MainWindow.Grid?.Model.CommandStack.Redo();
	}
}
