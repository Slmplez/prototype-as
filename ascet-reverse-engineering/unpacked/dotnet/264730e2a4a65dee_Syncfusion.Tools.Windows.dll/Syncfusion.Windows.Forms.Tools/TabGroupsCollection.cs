using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class TabGroupsCollection : ArrayList
{
	public event RibbonTabGroupEventHandler GroupAdded;

	public event RibbonTabGroupEventHandler GroupRemoved;

	public override int Add(object value)
	{
		int num = -1;
		if (value is RibbonTabGroup ribbonTabGroup)
		{
			num = base.Add(ribbonTabGroup);
			OnGroupAdded(ribbonTabGroup);
			return num;
		}
		throw new ArgumentException("RibbonTabGroup is expected");
	}

	protected virtual void OnGroupAdded(RibbonTabGroup group)
	{
		group.Disposed += Group_Disposed;
		if (this.GroupAdded != null)
		{
			this.GroupAdded(this, new RibbonTabGroupEventArgs(group));
		}
	}

	public void Group_Disposed(object sender, EventArgs e)
	{
		RibbonTabGroup ribbonTabGroup = (RibbonTabGroup)sender;
		Remove(ribbonTabGroup);
		ribbonTabGroup.Disposed -= Group_Disposed;
		if (this.GroupRemoved != null)
		{
			this.GroupRemoved(this, new RibbonTabGroupEventArgs(ribbonTabGroup));
		}
	}
}
