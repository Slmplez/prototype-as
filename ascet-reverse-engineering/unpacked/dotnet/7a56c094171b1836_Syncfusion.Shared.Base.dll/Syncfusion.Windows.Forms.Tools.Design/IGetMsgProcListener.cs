using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public interface IGetMsgProcListener
{
	void GetMsgProc(int ncode, IntPtr wparam, IntPtr lparam);
}
