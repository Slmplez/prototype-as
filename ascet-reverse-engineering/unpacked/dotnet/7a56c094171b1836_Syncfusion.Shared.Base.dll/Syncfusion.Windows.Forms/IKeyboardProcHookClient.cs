using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface IKeyboardProcHookClient
{
	bool KeyboardHookProc(int wParam, int lParam);
}
