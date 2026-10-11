using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface IMouseHookProcClient
{
	bool MouseHookProc(int wParam, Point point, int dwExtraInfo);
}
