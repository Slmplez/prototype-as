using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public sealed class RenameCompleteEventArgs : EventArgs
{
	private string strName = string.Empty;

	public string NewName => strName;

	public RenameCompleteEventArgs(string newname)
	{
		strName = newname;
	}
}
