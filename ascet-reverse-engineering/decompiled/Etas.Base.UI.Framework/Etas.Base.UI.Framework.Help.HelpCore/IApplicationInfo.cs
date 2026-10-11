using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[InterfaceType(ComInterfaceType.InterfaceIsDual)]
[ComVisible(true)]
public interface IApplicationInfo
{
	string ApplicationName { get; }

	string HelpDirPath { get; }
}
