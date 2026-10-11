using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IListenForMainFormVisibilityChange
{
	void OnChangedVisibility(bool visible);
}
