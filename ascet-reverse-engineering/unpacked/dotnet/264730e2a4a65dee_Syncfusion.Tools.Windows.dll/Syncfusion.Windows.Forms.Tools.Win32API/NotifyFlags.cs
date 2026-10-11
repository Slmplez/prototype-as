using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[Flags]
public enum NotifyFlags
{
	NIF_MESSAGE = 1,
	NIF_ICON = 2,
	NIF_TIP = 4,
	NIF_STATE = 8,
	NIF_INFO = 0x10
}
