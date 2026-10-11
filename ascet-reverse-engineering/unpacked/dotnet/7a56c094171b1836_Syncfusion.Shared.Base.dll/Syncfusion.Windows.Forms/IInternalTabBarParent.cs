using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

internal interface IInternalTabBarParent
{
	Cursor OverrideCursor { get; set; }

	bool OnDraggingTab(int nTab, int nTarget);

	void OnDraggedTab(int nTab, int nTarget);

	bool OnScroll(ArrowType arrowKind, int pixels);

	void OnScrolled();
}
