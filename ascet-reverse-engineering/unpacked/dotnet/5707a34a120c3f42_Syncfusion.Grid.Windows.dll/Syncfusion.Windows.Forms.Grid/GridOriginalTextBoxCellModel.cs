using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridOriginalTextBoxCellModel : GridTextBoxCellModel
{
	public GridOriginalTextBoxCellModel(GridModel grid)
		: base(grid)
	{
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	protected GridOriginalTextBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase grid)
	{
		return new GridOriginalTextBoxCellRenderer(grid, this);
	}
}
