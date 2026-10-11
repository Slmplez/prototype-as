using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class DockingManagerException : ApplicationException
{
	private const string c_message = "This operation is invalid in current context.";

	public DockingManagerException()
		: this("This operation is invalid in current context.")
	{
	}

	public DockingManagerException(Exception innerExc)
		: this("This operation is invalid in current context.", innerExc)
	{
	}

	public DockingManagerException(string message)
		: base(message)
	{
	}

	public DockingManagerException(string message, Exception innerExc)
		: base(message, innerExc)
	{
	}

	public DockingManagerException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}
}
