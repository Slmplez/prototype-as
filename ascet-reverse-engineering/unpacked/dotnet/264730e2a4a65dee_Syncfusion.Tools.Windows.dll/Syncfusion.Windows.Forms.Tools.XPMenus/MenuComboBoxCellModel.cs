using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuComboBoxCellModel : GridComboBoxCellModel
{
	private bool supportsTextBox;

	private MenuComboBoxCellRenderer myRenderer;

	public MenuComboBoxCellModel(GridModel grid, bool supportsTextBox)
		: base(grid)
	{
		this.supportsTextBox = supportsTextBox;
		base.AllowFloating = true;
		base.SupportsChoiceList = true;
		base.ButtonBarSize = new Size(base.ButtonBarSize.Width - 4, base.ButtonBarSize.Height);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		myRenderer = new MenuComboBoxCellRenderer(control, this, supportsTextBox);
		return myRenderer;
	}

	public override bool OnQueryCanFloatCell(int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		return true;
	}

	public override void FillWithChoices(ListBox listBox, GridStyleInfo style, out bool exclusive)
	{
		if (myRenderer.Grid is MenuGrid { Customizing: false } menuGrid && myRenderer.RowIndex > 0 && menuGrid.parentItem.Items.Count > myRenderer.RowIndex - 1)
		{
			ComboBoxBarItem comboBoxBarItem = menuGrid.parentItem.Items[myRenderer.RowIndex - 1] as ComboBoxBarItem;
			if (comboBoxBarItem.ListBox != null)
			{
				exclusive = style.ExclusiveChoiceList;
				return;
			}
		}
		base.FillWithChoices(listBox, style, out exclusive);
	}
}
