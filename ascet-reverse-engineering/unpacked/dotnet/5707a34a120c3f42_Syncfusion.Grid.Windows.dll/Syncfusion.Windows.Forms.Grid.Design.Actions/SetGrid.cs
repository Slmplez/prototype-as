#define TRACE
using System;
using System.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class SetGrid : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		PerformAction(base.MainWindow);
		base.MainWindow.MarkDirty(dirty: false);
	}

	public static void PerformAction(GridFrame mainWindow)
	{
		try
		{
			mainWindow.Syncronizer.SyncOriginal();
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
		}
	}
}
