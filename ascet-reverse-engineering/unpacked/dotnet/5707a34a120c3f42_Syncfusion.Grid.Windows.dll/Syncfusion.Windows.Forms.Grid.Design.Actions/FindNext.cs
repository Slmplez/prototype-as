using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class FindNext : GridDesignerBasicAction
{
	private GridDesignerPreviewGrid grid;

	public override void InvokeAction(object sender, EventArgs e)
	{
		grid = base.MainWindow.Grid as GridDesignerPreviewGrid;
		if (grid != null)
		{
			GridFindReplaceDialog instance = GridFindReplaceDialog.Instance;
			instance.FindNext();
		}
	}
}
