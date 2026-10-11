using System;

namespace Syncfusion.Windows.Forms.Tools;

[Flags]
public enum CommandBarResizeType
{
	None = 0,
	Top = 1,
	Bottom = 2,
	Left = 4,
	Right = 8
}
