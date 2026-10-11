using System;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class ButtonVisibilityToggleBarItem : BarItem
{
	private BarItem barItem;

	public override string Text
	{
		get
		{
			return barItem.Text;
		}
		set
		{
		}
	}

	public override int ImageIndex
	{
		get
		{
			return barItem.ImageIndex;
		}
		set
		{
		}
	}

	public override ImageList ImageList => barItem.ImageList;

	public override ImageListAdv ImageListAdv => barItem.ImageListAdv;

	public override Shortcut Shortcut
	{
		get
		{
			return barItem.Shortcut;
		}
		set
		{
		}
	}

	public override bool Checked
	{
		get
		{
			if (barItem.Manager.MainFrameBarManager.IsBarItemVisibilityPrefAvailable(barItem, (Bar)Tag))
			{
				return barItem.Manager.MainFrameBarManager.ShouldDrawVisibleInBar(barItem, (Bar)Tag);
			}
			return barItem.Visible;
		}
		set
		{
		}
	}

	public ButtonVisibilityToggleBarItem(BarItem barItem, Bar bar)
	{
		this.barItem = barItem;
		Tag = bar;
	}

	protected override void OnItemClicked(EventArgs args)
	{
		barItem.Manager.MainFrameBarManager.SetUserVisibilityPreferenceInBar(barItem, (Bar)Tag, !Checked);
		barItem.OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Visible", !Checked, Checked));
		OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Checked", !Checked, Checked));
	}
}
