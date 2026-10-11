using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownGridCellModel : GridDropDownCellModel
{
	private GridModel cellsGridModel;

	public GridDropDownGridCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridDropDownGridCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		cellsGridModel = (GridModel)info.GetValue("GridModel", typeof(GridModel));
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("GridModel", cellsGridModel);
		base.GetObjectData(info, context);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDropDownGridCellRenderer(control, this);
	}
}
