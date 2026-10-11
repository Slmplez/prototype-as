using System;

namespace Syncfusion.Windows.Forms.Tools;

public class DataSourceException : Exception
{
	public DataSourceException(string message, Exception inner)
		: base(message, inner)
	{
	}

	public DataSourceException(string message)
		: base(message)
	{
	}
}
