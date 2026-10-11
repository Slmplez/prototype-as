using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridUserCanceledException : GridException
{
	public override string Message => base.Message;

	public GridUserCanceledException()
	{
	}

	public GridUserCanceledException(string message)
		: base(message)
	{
	}

	public GridUserCanceledException(string message, Exception inner)
		: base(message, inner)
	{
	}

	protected GridUserCanceledException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}
}
