using System;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface IMouseHookHLProcClient
{
	bool MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo);
}
