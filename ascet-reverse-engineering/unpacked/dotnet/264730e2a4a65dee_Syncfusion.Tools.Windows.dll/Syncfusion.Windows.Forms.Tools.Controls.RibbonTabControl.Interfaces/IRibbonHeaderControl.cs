using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;

public interface IRibbonHeaderControl
{
	TabGroupsCollection Groups { get; }

	bool FillWidthWithItems { get; set; }

	Color GroupsCaptionColor1 { get; set; }

	Color GroupsCaptionColor2 { get; set; }

	Color GroupsCaptionFontColor { get; set; }

	event RibbonTabItemEventHandler RibbonTabItemAdded;

	event RibbonTabItemChangingEventHandler TabChanging;

	event RibbonTabItemChangedEventHandler TabChanged;

	RibbonTabGroup AddGroup();

	RibbonTabGroup AddGroup(RibbonTabGroup group);

	RibbonTabItem AddTabItem();

	ToolStripItem AddItem(ToolStripItem item);

	RibbonTabItem AddTabItem(RibbonTabGroup group);

	ToolStripItem AddItem(ToolStripItem item, RibbonTabGroup group);

	Control GetParentForChildsTransparentRendering();

	Control GetTabsHeader();
}
