using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ITabFeedback
{
	bool ProvideTabFeedback(IDraggable idg, MouseAction action);
}
