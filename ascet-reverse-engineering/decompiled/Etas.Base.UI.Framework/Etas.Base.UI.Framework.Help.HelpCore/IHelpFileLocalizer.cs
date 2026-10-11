using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[InterfaceType(ComInterfaceType.InterfaceIsDual)]
[ComVisible(true)]
public interface IHelpFileLocalizer
{
	string CurrentCulture { get; }

	string GetLocalizedHelpFileName(string helpFile, string extension);

	string GetLocalizedDefaultFileName(string extension);
}
