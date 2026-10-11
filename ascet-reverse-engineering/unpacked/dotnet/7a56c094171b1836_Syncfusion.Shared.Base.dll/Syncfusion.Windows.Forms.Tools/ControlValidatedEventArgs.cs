using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlValidatedEventArgs : EventArgs
{
	private string newValue = string.Empty;

	private string oldValue = string.Empty;

	public string NewValue => newValue;

	public string OldValue => oldValue;

	public ControlValidatedEventArgs(string newValue, string oldValue)
	{
		this.newValue = newValue;
		this.oldValue = oldValue;
	}
}
