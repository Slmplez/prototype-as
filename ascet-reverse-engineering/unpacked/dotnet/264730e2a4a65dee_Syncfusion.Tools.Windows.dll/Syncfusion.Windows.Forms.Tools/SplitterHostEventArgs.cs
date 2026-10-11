using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class SplitterHostEventArgs : EventArgs
{
	private int delta;

	public int Delta => delta;

	internal SplitterHostEventArgs(int delta)
	{
		this.delta = delta;
	}
}
