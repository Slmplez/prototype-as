using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockStateLoadEventArgs : EventArgs
{
	[DocumentationExclude]
	protected bool loadResultValue;

	public bool LoadResult => loadResultValue;

	public DockStateLoadEventArgs(bool lResult)
	{
		loadResultValue = lResult;
	}
}
