using System;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class SplitterWidthException : ApplicationException
{
	private const string ErrorMessage = "Incorrect value for SplitterWidth. Please, specify value between 0 and 30.";

	public SplitterWidthException()
		: this("Incorrect value for SplitterWidth. Please, specify value between 0 and 30.")
	{
	}

	public SplitterWidthException(string message)
		: base(message)
	{
	}

	public SplitterWidthException(Exception innerExc)
		: this("Incorrect value for SplitterWidth. Please, specify value between 0 and 30.", innerExc)
	{
	}

	public SplitterWidthException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
