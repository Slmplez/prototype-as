using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class ToolbarListBarItem : ParentBarItem
{
	public override void OnBeforePopup(CancelEventArgs args)
	{
		MainFrameBarManager mainFrameBarManager = barManager as MainFrameBarManager;
		if (mainFrameBarManager == null)
		{
			args.Cancel = true;
		}
		base.OnBeforePopup(args);
	}

	public override void OnPopup(EventArgs args)
	{
		if (barManager != null)
		{
			barManager.commandBarManager.PrepareToolbarListItem(this);
		}
		if (base.Items != null)
		{
			foreach (BarItem item in base.Items)
			{
				item.CustomTextFont = CustomTextFont;
			}
		}
		base.OnPopup(args);
	}

	public override void OnPopupClosed(EventArgs args)
	{
		base.Items.Clear();
		base.OnPopupClosed(args);
	}
}
