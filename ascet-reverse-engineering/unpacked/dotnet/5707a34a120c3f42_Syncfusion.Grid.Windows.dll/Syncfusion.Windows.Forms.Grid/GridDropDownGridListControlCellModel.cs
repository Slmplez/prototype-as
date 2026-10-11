using System;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownGridListControlCellModel : GridComboBoxCellModel
{
	public GridDropDownGridListControlCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.ButtonBarSize = new Size(SystemInformation.VerticalScrollBarWidth, 0);
		base.SupportsChoiceList = true;
	}

	protected GridDropDownGridListControlCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDropDownGridListControlCellRenderer(control, this);
	}
}
