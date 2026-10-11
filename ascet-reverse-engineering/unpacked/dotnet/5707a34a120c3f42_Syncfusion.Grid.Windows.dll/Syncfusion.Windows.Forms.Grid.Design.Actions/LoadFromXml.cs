#define TRACE
using System;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class LoadFromXml : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		OpenFileDialog openFileDialog = new OpenFileDialog();
		openFileDialog.Filter = "XML (*.xml)|*.xml";
		openFileDialog.Title = "Load Grid Properties from Xml";
		if (openFileDialog.ShowDialog() != DialogResult.OK)
		{
			return;
		}
		try
		{
			base.MainWindow.Cursor = Cursors.WaitCursor;
			FileStream fileStream = File.OpenRead(openFileDialog.FileName);
			if (fileStream != null)
			{
				XmlSerializer xmlSerializer = new XmlSerializer(typeof(GridSyncProperties));
				object obj = xmlSerializer.Deserialize(fileStream);
				fileStream.Close();
				base.MainWindow.Syncronizer.InitializeGridSync(obj as GridSyncProperties);
				base.MainWindow.pgrpropertyGrid1.SelectedObject = GridDesignerMain.syncProps;
			}
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
		}
		finally
		{
			base.MainWindow.Cursor = Cursors.Default;
		}
	}

	private void serializer_UnknownElement(object sender, XmlElementEventArgs e)
	{
		Trace.WriteLine(e);
	}
}
