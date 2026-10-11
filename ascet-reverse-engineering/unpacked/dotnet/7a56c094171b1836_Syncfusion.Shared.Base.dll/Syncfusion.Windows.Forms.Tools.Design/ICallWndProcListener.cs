using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public interface ICallWndProcListener
{
	void CallWndProc(int ncode, IntPtr wparam, IntPtr lparam);
}
