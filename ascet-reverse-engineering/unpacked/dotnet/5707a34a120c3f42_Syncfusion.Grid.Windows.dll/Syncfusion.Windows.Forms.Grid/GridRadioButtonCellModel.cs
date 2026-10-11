using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridRadioButtonCellModel : GridStaticCellModel
{
	public GridRadioButtonCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridRadioButtonCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridRadioButtonCellRenderer(control, this);
	}
}
