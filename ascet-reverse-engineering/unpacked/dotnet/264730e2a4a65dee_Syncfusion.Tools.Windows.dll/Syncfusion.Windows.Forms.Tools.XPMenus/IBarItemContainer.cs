using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IBarItemContainer
{
	BarItems Items { get; }

	BarManager Manager { get; }

	void BeginGroupAt(BarItem barItem);

	void RemoveGroupAt(BarItem barItem);

	bool IsGroupBeginning(BarItem barItem);

	void RemoveItem(BarItem item);
}
