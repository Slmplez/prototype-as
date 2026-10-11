using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class PrintFile : GridDesignerBasicAction
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
			GridPrintDocument gridPrintDocument = new GridPrintDocument(grid);
			if (PrinterSettings.storedPageSettings != null)
			{
				gridPrintDocument.DefaultPageSettings = PrinterSettings.storedPageSettings;
			}
			PrintDialog printDialog = new PrintDialog();
			printDialog.Document = gridPrintDocument;
			printDialog.AllowSelection = true;
			printDialog.AllowSomePages = true;
			DialogResult dialogResult = printDialog.ShowDialog();
			if (dialogResult == DialogResult.OK)
			{
				gridPrintDocument.Print();
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show("An error occurred attempting to preview the file to print - " + ex.Message);
		}
	}
}
