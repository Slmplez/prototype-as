using System.Drawing;

namespace Etas.Base.UI.Framework;

public delegate int MouseHookCallback(int hwnd, Win32Helper.WindowsMessages message, Point point);
