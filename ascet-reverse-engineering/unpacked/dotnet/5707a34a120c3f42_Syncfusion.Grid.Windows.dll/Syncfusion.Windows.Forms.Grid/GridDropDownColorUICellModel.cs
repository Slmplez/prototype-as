using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownColorUICellModel : GridDropDownCellModel
{
	public GridDropDownColorUICellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.ButtonBarSize = new Size(21, 0);
	}

	protected GridDropDownColorUICellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDropDownColorUICellRenderer(control, this);
	}
}
