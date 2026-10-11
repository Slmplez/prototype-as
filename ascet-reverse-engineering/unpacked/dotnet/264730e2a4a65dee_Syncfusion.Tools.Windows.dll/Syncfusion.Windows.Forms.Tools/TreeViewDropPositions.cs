using System;

namespace Syncfusion.Windows.Forms.Tools;

[Flags]
public enum TreeViewDropPositions
{
	None = 0,
	OnNode = 1,
	AboveNode = 2,
	BelowNode = 4,
	All = 7
}
