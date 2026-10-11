using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
public class PropertyGridPopupMenu : PopupMenu
{
	private PropertyGrid propertyGrid;

	private BarItem resetItem;

	private BarItem descriptionVisibilityItem;

	private PopupMenusManager popupMenusManager = new PopupMenusManager();

	public PropertyGridPopupMenu(PropertyGrid propertyGrid)
	{
		this.propertyGrid = propertyGrid;
		popupMenusManager.SetXPContextMenu(propertyGrid, this);
		base.ParentBarItem = new ParentBarItem();
		base.ParentBarItem.BeforePopup += Menu_BeforePopup;
		resetItem = new BarItem(SR.GetString("ResetBarItem"));
		descriptionVisibilityItem = new BarItem(SR.GetString("DescriptionBarItemText"));
		base.ParentBarItem.Items.Add(resetItem);
		base.ParentBarItem.Items.Add(descriptionVisibilityItem);
		base.ParentBarItem.BeginGroupAt(descriptionVisibilityItem);
		resetItem.Click += Reset_Clicked;
		descriptionVisibilityItem.Click += Description_Clicked;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			popupMenusManager.SetXPContextMenu(propertyGrid, null);
			popupMenusManager = null;
		}
		base.Dispose(disposing);
	}

	private void Reset_Clicked(object sender, EventArgs e)
	{
		propertyGrid.ResetSelectedProperty();
	}

	private void Description_Clicked(object sender, EventArgs e)
	{
		propertyGrid.HelpVisible = !propertyGrid.HelpVisible;
	}

	private void Menu_BeforePopup(object sender, CancelEventArgs e)
	{
		resetItem.Enabled = PropertyGridContextMenuHelper.ShouldSerializeSelectedValue(propertyGrid);
		descriptionVisibilityItem.Checked = propertyGrid.HelpVisible;
	}
}
