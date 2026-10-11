using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IBarHost
{
	void OnBarBoundsChanged();

	void MoveMenuNavigation(bool forward);
}
