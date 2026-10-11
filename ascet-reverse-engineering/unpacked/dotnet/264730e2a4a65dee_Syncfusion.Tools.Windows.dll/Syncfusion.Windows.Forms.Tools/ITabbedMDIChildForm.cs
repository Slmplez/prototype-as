using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabbedMDIChildForm
{
	bool AllowUserDrag { get; }

	void OnAttachTabbedMDI(TabbedMDIManager manager);

	void OnDetachTabbedMDI(TabbedMDIManager manager);

	void OnTabContextMenuPopup(ParentBarItem contextMenuParentItem);

	void OnTabContextMenuClosed(ParentBarItem contextMenuParentItem);

	void OnMdiChildAddedToTabHost(TabHost tabHost, int tabIndex);

	string GetCustomTabText(out bool validValueReturned);
}
