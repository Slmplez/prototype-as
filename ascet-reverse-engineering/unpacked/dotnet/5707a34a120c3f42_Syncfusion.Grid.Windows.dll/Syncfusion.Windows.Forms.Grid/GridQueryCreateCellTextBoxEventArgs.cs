using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public sealed class GridQueryCreateCellTextBoxEventArgs : SyncfusionEventArgs
{
	private GridTextBoxCellRenderer renderer;

	private TextBoxBase textBox;

	public GridTextBoxCellRenderer Renderer
	{
		get
		{
			return renderer;
		}
		set
		{
			renderer = value;
		}
	}

	public TextBoxBase TextBox
	{
		get
		{
			return textBox;
		}
		set
		{
			textBox = value;
		}
	}

	public GridQueryCreateCellTextBoxEventArgs(GridTextBoxCellRenderer renderer)
	{
		this.renderer = renderer;
	}
}
