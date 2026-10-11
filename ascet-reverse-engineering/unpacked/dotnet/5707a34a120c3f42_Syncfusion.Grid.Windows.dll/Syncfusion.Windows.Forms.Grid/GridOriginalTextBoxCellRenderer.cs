using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridOriginalTextBoxCellRenderer : GridTextBoxCellRenderer
{
	private GridOriginalTextBoxCellModel pwcModel;

	private TextBox originalTextBox;

	public override string ControlText
	{
		get
		{
			return base.ControlText;
		}
		set
		{
			switch (base.CurrentStyle.CharacterCasing)
			{
			case CharacterCasing.Lower:
				value = value.ToLower();
				break;
			case CharacterCasing.Upper:
				value = value.ToUpper();
				break;
			}
			base.ControlText = value;
		}
	}

	public GridOriginalTextBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		pwcModel = cellModel as GridOriginalTextBoxCellModel;
	}

	protected override TextBoxBase CreateTextBox()
	{
		originalTextBox = new GridOriginalTextBoxControl(this);
		return originalTextBox;
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
	}
}
