using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[Flags]
public enum NotifyInfoFlags
{
	NIIF_NONE = 0,
	NIIF_INFO = 1,
	NIIF_WARNING = 2,
	NIIF_ERROR = 3
}
