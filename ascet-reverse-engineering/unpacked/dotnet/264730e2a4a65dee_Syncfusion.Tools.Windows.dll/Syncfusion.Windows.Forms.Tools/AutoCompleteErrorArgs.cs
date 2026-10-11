using System;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteErrorArgs : EventArgs
{
	private Exception m_error;

	public AutoCompleteErrorArgs(Exception error)
	{
		m_error = error;
	}

	public Exception GetException()
	{
		return m_error;
	}
}
