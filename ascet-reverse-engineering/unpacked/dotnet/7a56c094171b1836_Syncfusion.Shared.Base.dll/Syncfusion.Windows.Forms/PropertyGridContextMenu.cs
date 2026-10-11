using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class PropertyGridContextMenu : ContextMenu
{
	private PropertyGrid propertyGrid;

	private MenuItem resetItem;

	private MenuItem descriptionVisibilityItem;

	public PropertyGridContextMenu(PropertyGrid propertyGrid)
	{
		this.propertyGrid = propertyGrid;
		this.propertyGrid.ContextMenu = this;
		resetItem = new MenuItem(SR.GetString("ResetMenuItemText"));
		descriptionVisibilityItem = new MenuItem(SR.GetString("DescriptionMenuItemText"));
		base.MenuItems.Add(resetItem);
		base.MenuItems.Add("-");
		base.MenuItems.Add(descriptionVisibilityItem);
		resetItem.Click += Reset_Clicked;
		descriptionVisibilityItem.Click += Description_Clicked;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			propertyGrid.ContextMenu = null;
		}
		base.Dispose(disposing);
	}

	private void Reset_Clicked(object sender, EventArgs e)
	{
		propertyGrid.ResetSelectedProperty();
		propertyGrid.Refresh();
	}

	private void Description_Clicked(object sender, EventArgs e)
	{
		propertyGrid.HelpVisible = !propertyGrid.HelpVisible;
	}

	protected override void OnPopup(EventArgs e)
	{
		base.OnPopup(e);
		resetItem.Enabled = PropertyGridContextMenuHelper.ShouldSerializeSelectedValue(propertyGrid);
		descriptionVisibilityItem.Checked = propertyGrid.HelpVisible;
	}
}
