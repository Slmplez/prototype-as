using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class ResetToolBarBarItem : BarItem
{
	private CommandBarExt curBar;

	private BarManager manager;

	public CommandBarExt CurrentBar
	{
		get
		{
			return curBar;
		}
		set
		{
			curBar = value;
		}
	}

	public ResetToolBarBarItem(BarManager manager)
	{
		this.manager = manager;
	}

	protected override void OnItemClicked(EventArgs args)
	{
		curBar.PopupMenu.Hide();
		if (manager.MainFrameBarManager != null)
		{
			manager.MainFrameBarManager.ResetContainer(curBar.Bar);
			MessageBox.Show(SR.GetString("SuccesfulToolbarResetMessage"), SR.GetString("SuccesfulResetMessageBoxTitle"));
		}
	}
}
