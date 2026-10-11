using System;
using System.Drawing.Printing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class PrinterSettings : GridDesignerBasicAction
{
	public static PageSettings storedPageSettings;

	public override void InvokeAction(object sender, EventArgs e)
	{
		try
		{
			PageSetupDialog pageSetupDialog = new PageSetupDialog();
			if (storedPageSettings == null)
			{
				storedPageSettings = new PageSettings();
			}
			pageSetupDialog.PageSettings = storedPageSettings;
			pageSetupDialog.ShowDialog();
		}
		catch (Exception ex)
		{
			MessageBox.Show("An error occurred - " + ex.Message);
		}
	}
}
