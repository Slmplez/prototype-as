using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class InitializeControlOnLoadEventArgs : EventArgs
{
	[DocumentationExclude]
	private string ctrlName = string.Empty;

	public string ControlName => ctrlName;

	public InitializeControlOnLoadEventArgs(string ctrlname)
	{
		ctrlName = ctrlname;
	}
}
