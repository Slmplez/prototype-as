using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class KeyValidateEventArgs : SyncfusionCancelEventArgs
{
	private char key;

	private string changedString;

	private string changedValueString;

	[TraceProperty(true)]
	public char Key => key;

	[TraceProperty(true)]
	public string ChangedString => changedString;

	[TraceProperty(true)]
	public string ChangedValueString => changedValueString;

	public KeyValidateEventArgs(char key, string changedString, string changedValueString)
	{
		this.key = key;
		this.changedString = changedString;
		this.changedValueString = changedValueString;
	}
}
