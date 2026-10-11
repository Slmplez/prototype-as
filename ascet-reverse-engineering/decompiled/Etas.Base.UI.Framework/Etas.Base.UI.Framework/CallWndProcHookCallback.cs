using System;

namespace Etas.Base.UI.Framework;

public delegate int CallWndProcHookCallback(IntPtr hwnd, Win32Helper.WindowsMessages message, IntPtr wParam, IntPtr lParam);
