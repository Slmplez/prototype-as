using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class ToolbarListPopupMenu : PopupMenu
{
	private CommandBarManager cbm;

	public bool ShowShadow
	{
		get
		{
			bool result = false;
			if (cbm != null && cbm.BarManager != null)
			{
				result = cbm.BarManager.ShowShadow;
			}
			return result;
		}
	}

	public ToolbarListPopupMenu(CommandBarManager cbm)
	{
		this.cbm = cbm;
		base.ParentBarItem = new ParentBarItem
		{
			Manager = new BarManager()
		};
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && base.ParentBarItem != null)
		{
			base.ParentBarItem.Dispose();
			base.ParentBarItem = null;
		}
		base.Dispose(disposing);
	}

	public override IPopupChild ShowChildrenUI(Point pos, IPopupParent parentUI)
	{
		if (!cbm.Customizing)
		{
			base.ParentBarItem.Items.Clear();
			base.ParentBarItem.SeparatorIndices.Clear();
			cbm.PrepareToolbarListItem(base.ParentBarItem);
			foreach (BarItem item in base.ParentBarItem.Items)
			{
				item.CustomTextFont = cbm.BarManager.MainFrameBarManager.Font;
			}
			if (base.ParentBarItem.Items.Count > 0)
			{
				base.ShowChildrenUI(pos, parentUI);
			}
		}
		return null;
	}
}
