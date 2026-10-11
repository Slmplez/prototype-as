using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IIntegratedScrollContainer
{
	void InvalidateUpScrollButton();

	void InvalidateDownScrollButton();

	bool HandleScrollButtonDown(Point pt);

	bool HandleScrollButtonUp(Point pt);
}
