using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class ExpandedListBarItem : StandAloneBarItem
{
	private ListBarItem parent;

	private int myIndex;

	public override BarManager Manager
	{
		get
		{
			return parent.Manager;
		}
		set
		{
			throw new NotSupportedException("Cannot set BarManager on this ExpandedListBarItem.");
		}
	}

	public override string ID
	{
		get
		{
			return BarManager.SyncfusionTransientItemID;
		}
		set
		{
		}
	}

	public ExpandedListBarItem(ListBarItem parent, int myIndex)
	{
		this.parent = parent;
		this.myIndex = myIndex;
	}

	protected override void OnItemClicked(EventArgs e)
	{
		parent.ItemClicked(myIndex, this);
	}
}
