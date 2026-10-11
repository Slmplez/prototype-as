using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class PrintPreviewFile : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		try
		{
			GridPrintDocument gridPrintDocument = new GridPrintDocument(grid, printPreview: true);
			if (PrinterSettings.storedPageSettings != null)
			{
				gridPrintDocument.DefaultPageSettings = PrinterSettings.storedPageSettings;
			}
			PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
			printPreviewDialog.Document = gridPrintDocument;
			printPreviewDialog.ShowDialog();
		}
		catch (Exception ex)
		{
			MessageBox.Show("An error occurred attempting to preview the file to print - " + ex.Message);
		}
	}
}
