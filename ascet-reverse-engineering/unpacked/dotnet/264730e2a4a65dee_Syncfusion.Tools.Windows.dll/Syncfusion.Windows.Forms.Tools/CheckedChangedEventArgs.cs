using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class CheckedChangedEventArgs : EventArgs
{
	public enum SourceType
	{
		Mouse,
		Keyboard,
		Programmatic
	}

	private SourceType source;

	[Description("Gets the source of the Checked state changing.")]
	public SourceType Source => source;

	public CheckedChangedEventArgs(SourceType sourcetype)
	{
		source = sourcetype;
	}
}
