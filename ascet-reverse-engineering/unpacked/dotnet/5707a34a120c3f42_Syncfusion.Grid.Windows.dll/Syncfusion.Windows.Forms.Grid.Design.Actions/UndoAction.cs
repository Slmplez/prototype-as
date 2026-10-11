using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class UndoAction : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		base.MainWindow.Grid?.Model.CommandStack.Undo();
	}
}
