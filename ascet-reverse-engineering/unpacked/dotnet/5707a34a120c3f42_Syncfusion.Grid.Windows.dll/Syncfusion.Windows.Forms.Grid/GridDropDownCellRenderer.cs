using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownCellRenderer : GridTextBoxCellRenderer
{
	public TextBoxBase EditPart => base.TextBox;

	public PopupControlContainer PopupControlContainer
	{
		get
		{
			if (base.DropDownImp != null)
			{
				return (PopupControlContainer)base.DropDownImp.PopupControlContainer;
			}
			return null;
		}
	}

	public new GridDropDownContainer DropDownContainer => (GridDropDownContainer)base.DropDownContainer;

	public GridDropDownCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownImp = new GridDropDownCellImp(this);
	}

	protected override TextBoxBase CreateTextBox()
	{
		if (base.Grid.Model.Options.UseRightToLeftCompatibleTextBox)
		{
			return new GridOriginalTextBoxControl(this);
		}
		return new GridDropDownEditPartControl(this);
	}

	protected override void TextBoxGotFocus(object sender, EventArgs e)
	{
		base.TextBoxGotFocus(sender, e);
	}

	public override bool ProcessMouseWheel(MouseEventArgs e)
	{
		return IsDroppedDown;
	}
}
