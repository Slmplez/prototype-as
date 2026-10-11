using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridGenericControlCellModel : GridStaticCellModel
{
	public GridGenericControlCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.AllowMerging = false;
	}

	protected GridGenericControlCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridGenericControlCellRenderer(control, this);
	}
}
