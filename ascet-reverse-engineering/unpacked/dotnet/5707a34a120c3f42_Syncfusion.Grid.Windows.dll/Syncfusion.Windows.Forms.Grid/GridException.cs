using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridException : ApplicationException
{
	private GridControlBase grid;

	public override string Message => base.Message;

	public GridControlBase Grid => grid;

	public GridException()
	{
	}

	public GridException(string message)
		: base(message)
	{
	}

	public GridException(string message, Exception inner)
		: base(message, inner)
	{
	}

	public GridException(string message, GridControlBase grid)
		: base(message)
	{
		this.grid = grid;
	}

	public GridException(string message, GridControlBase grid, Exception inner)
		: base(message, inner)
	{
		this.grid = grid;
	}

	protected GridException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}
}
