using System;
using System.IO;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class SaveToXml : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		SaveFileDialog saveFileDialog = new SaveFileDialog();
		saveFileDialog.Filter = "XML (*.xml)|*.xml";
		saveFileDialog.Title = "Save Grid Properties as Xml";
		saveFileDialog.OverwritePrompt = true;
		saveFileDialog.AddExtension = true;
		if (saveFileDialog.ShowDialog() != DialogResult.OK)
		{
			return;
		}
		try
		{
			XmlSerializer xmlSerializer = new XmlSerializer(typeof(GridSyncProperties));
			StyleInfoStore.RegisterXmlSerializer(typeof(GridSyncProperties), xmlSerializer);
			GridDesignerMain.syncProps.ResetStyleGroups();
			GridStylesParser.ParsePropertyStore(GridDesignerMain.syncProps.Store);
			GridDesignerMain.syncProps.Cells.InitializeFrom(base.MainWindow.Grid);
			FileStream fileStream = File.Create(saveFileDialog.FileName);
			if (fileStream != null)
			{
				xmlSerializer.Serialize(fileStream, GridDesignerMain.syncProps);
				fileStream.Close();
			}
			MessageBox.Show(saveFileDialog.FileName, "File saved", MessageBoxButtons.OK);
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.ToString() + "\n\n" + ex.InnerException.ToString());
		}
	}
}
