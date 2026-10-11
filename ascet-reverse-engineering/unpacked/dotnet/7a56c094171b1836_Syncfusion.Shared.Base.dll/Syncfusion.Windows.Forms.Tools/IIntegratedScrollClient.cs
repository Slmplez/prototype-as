using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IIntegratedScrollClient
{
	bool IsUpScrollButtonEnabled();

	bool IsDownScrollButtonEnabled();

	void UpScrollButtonPressed();

	void DownScrollButtonPressed();
}
