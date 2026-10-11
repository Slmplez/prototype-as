using System;

namespace Syncfusion.Windows.Forms;

[Flags]
public enum BeginUpdateOptions
{
	None = 0,
	Invalidate = 1,
	ScrollWindow = 2,
	SynchronizeScrollBars = 4,
	InvalidateAndScroll = 7
}
