using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class SaveToTemplate : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		SaveFileDialog saveFileDialog = new SaveFileDialog();
		saveFileDialog.Title = SR.GetString("GridControlName");
		saveFileDialog.Filter = "Essential Grid templates (*.egt)|*.egt|All files (*.*)|*.*";
		if (saveFileDialog.ShowDialog() == DialogResult.OK)
		{
			try
			{
				grid.Model.SaveSoap(saveFileDialog.FileName);
				MessageBox.Show(saveFileDialog.FileName, "File saved", MessageBoxButtons.OK);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.ToString());
			}
		}
	}
}
