using System;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridPropertyGridCellModel : GridDropDownCellModel
{
	public GridPropertyGridCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.ButtonBarSize = new Size(SystemInformation.VerticalScrollBarWidth, 0);
		base.SupportsChoiceList = false;
	}

	protected GridPropertyGridCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridPropertyGridCellRenderer(control, this);
	}
}
