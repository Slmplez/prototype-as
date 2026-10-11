#define TRACE
using System;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class SetCellBackgroundImage : GridDesignerBasicAction
{
	private GridDesignerPreviewGrid grid;

	public override void InvokeAction(object sender, EventArgs e)
	{
		grid = base.MainWindow.Grid as GridDesignerPreviewGrid;
		if (grid == null)
		{
			return;
		}
		OpenFileDialog openFileDialog = new OpenFileDialog();
		openFileDialog.Filter = "BMP (*.bmp)|*.bmp | JPG (*.jpg)|*.jpg |All Files (*.*)|*.*";
		openFileDialog.Title = "Select Image";
		if (openFileDialog.ShowDialog() != DialogResult.OK)
		{
			return;
		}
		Image image = null;
		try
		{
			image = Image.FromStream(File.OpenRead(openFileDialog.FileName));
		}
		catch (Exception ex)
		{
			Trace.WriteLine("Unable to load image:");
			Trace.WriteLine(ex.ToString());
			MessageBox.Show("Unable to Load Image", "Load Failed", MessageBoxButtons.OK, MessageBoxIcon.Hand);
			return;
		}
		int top = 0;
		int left = 0;
		GridRangeInfoList ranges = null;
		grid.Selections.GetSelectedRanges(out ranges, considerCurrentCell: true);
		foreach (GridRangeInfo item in ranges)
		{
			item.GetFirstCell(out top, out left);
			if (top > 0 && left > 0)
			{
				grid[top, left].BackgroundImage = image;
			}
			while (item.GetNextCell(ref top, ref left))
			{
				grid[top, left].BackgroundImage = image;
			}
		}
	}
}
