#define TRACE
using System;
using System.Diagnostics;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class LoadFromTemplate : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		OpenFileDialog openFileDialog = new OpenFileDialog();
		openFileDialog.Title = SR.GetString("GridControlName");
		openFileDialog.Filter = "Essential Grid templates (*.egt)|*.egt|All files (*.*)|*.*";
		if (openFileDialog.ShowDialog() == DialogResult.OK)
		{
			try
			{
				GridModel model = GridModel.LoadSoap(openFileDialog.FileName);
				base.MainWindow.Grid.Model = model;
				base.MainWindow.MarkDirty(dirty: true);
			}
			catch (Exception ex)
			{
				MessageBox.Show("Unable to load the saved template.", "Load failure", MessageBoxButtons.OK, MessageBoxIcon.Hand);
				Trace.WriteLine(ex.ToString());
			}
		}
	}
}
