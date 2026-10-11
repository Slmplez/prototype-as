using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MergedStateTracker : IDisposable
{
	private Hashtable htMergeKeyVsItemIdsList = new Hashtable();

	private IBarItemContainer container;

	private MainFrameBarManager Manager => container.Manager as MainFrameBarManager;

	protected Form ActiveForm => Manager.ActiveForm;

	public MergedStateTracker(IBarItemContainer container)
	{
		this.container = container;
	}

	public virtual void Dispose()
	{
		container = null;
		htMergeKeyVsItemIdsList.Clear();
	}

	public virtual void UpdateMergeHash()
	{
		string formTypeName = BarManager.GetFormTypeName(ActiveForm);
		foreach (string key in htMergeKeyVsItemIdsList.Keys)
		{
			if (htMergeKeyVsItemIdsList[key] is ArrayList { Count: >1 } arrayList)
			{
				BringItemIdToFront(arrayList, formTypeName);
			}
		}
	}

	public virtual void InitMergedItemsHash()
	{
		htMergeKeyVsItemIdsList.Clear();
		foreach (BarItem item in container.Items)
		{
			if (IsMergeable(item))
			{
				string mergeId = GetMergeId(item);
				ArrayList mergeListForKey = GetMergeListForKey(mergeId);
				BarItemID barItemID = BarItemID.FromBarItem(item);
				if (!mergeListForKey.Contains(barItemID))
				{
					mergeListForKey.Add(barItemID);
				}
			}
		}
	}

	public virtual void OnItemsCollectionChanged(CollectionChangeEventArgs e)
	{
		BarItem barItem = e.Element as BarItem;
		if (!(barItem is StandAloneBarItem))
		{
			UpdateMergeHashForItem(barItem, e.Action);
		}
	}

	public virtual void OnItemPropertyChanged(BarItem item, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "MergeOrder" || e.PropertyName == "MergeType")
		{
			UpdateMergeHashForItem(item, CollectionChangeAction.Add);
		}
		else if (e.PropertyName == "Text")
		{
			string key = item.MergeOrder + (string)e.OldValue;
			if (htMergeKeyVsItemIdsList.Contains(key))
			{
				ArrayList arrayList = htMergeKeyVsItemIdsList[key] as ArrayList;
				arrayList.Remove(BarItemID.FromBarItem(item));
				BringItemIdToFront(arrayList, BarManager.GetFormTypeName(ActiveForm));
			}
			UpdateMergeHashForItem(item, CollectionChangeAction.Add);
		}
	}

	public static string GetMergeId(BarItem item)
	{
		return item.MergeOrder + item.Text;
	}

	protected virtual bool IsMergeable(BarItem barItem)
	{
		if (barItem.MergeType != MenuMerge.Add || barItem.Manager != Manager)
		{
			return true;
		}
		return false;
	}

	private BarItem GetMainItem(ArrayList list)
	{
		string formTypeName = BarManager.GetFormTypeName(Manager);
		foreach (BarItemID item in list)
		{
			if (BarItemID.IsItemContainedInManager(item, formTypeName))
			{
				return Manager.GetBarItemFromBarItemID(item);
			}
		}
		return null;
	}

	public virtual bool ShouldDrawVisible(BarItem item, out bool validValueReturned)
	{
		validValueReturned = false;
		if (IsMergeable(item))
		{
			string mergeId = GetMergeId(item);
			if (htMergeKeyVsItemIdsList[mergeId] is ArrayList { Count: >0 } arrayList)
			{
				BarItemID barItemID = (BarItemID)arrayList[0];
				BarItem barItem = Manager.SearchBarItem(barItemID);
				validValueReturned = true;
				if ((!(barItemID == BarItemID.FromBarItem(item)) || (item.MergeType == MenuMerge.Remove && item.Manager != Manager) || (item.Manager != Manager && item.MergeType == MenuMerge.MergeItems && GetMainItem(arrayList) != null && GetMainItem(arrayList).MergeType == MenuMerge.Replace)) && (item.Manager != Manager || item.MergeType == MenuMerge.Remove || barItem.MergeType != MenuMerge.Add))
				{
					if (item.Manager == Manager && item.MergeType == MenuMerge.Replace)
					{
						if (barItem.MergeType != MenuMerge.Remove)
						{
							return barItem.MergeType == MenuMerge.MergeItems;
						}
						return true;
					}
					return false;
				}
				return true;
			}
		}
		return true;
	}

	protected ArrayList GetMergeListForKey(string mergeId)
	{
		ArrayList arrayList = null;
		if (htMergeKeyVsItemIdsList.Contains(mergeId))
		{
			arrayList = htMergeKeyVsItemIdsList[mergeId] as ArrayList;
		}
		else
		{
			arrayList = new ArrayList();
			htMergeKeyVsItemIdsList[mergeId] = arrayList;
		}
		return arrayList;
	}

	protected void BringItemIdToFront(ArrayList list, string formTypeName)
	{
		if (list.Count <= 1)
		{
			return;
		}
		int num = -1;
		foreach (BarItemID item in list)
		{
			num++;
			if (BarItemID.IsItemContainedInManager(item, formTypeName))
			{
				if (num != 0)
				{
					list.RemoveAt(num);
					list.Insert(0, item);
				}
				break;
			}
		}
	}

	protected void UpdateMergeHashForItem(BarItem barItem, CollectionChangeAction action)
	{
		if (barItem == null)
		{
			return;
		}
		string mergeId = GetMergeId(barItem);
		bool flag = IsMergeable(barItem);
		ArrayList arrayList = null;
		if (action == CollectionChangeAction.Add)
		{
			if (flag)
			{
				arrayList = GetMergeListForKey(mergeId);
				BarItemID barItemID = BarItemID.FromBarItem(barItem);
				if (!arrayList.Contains(barItemID))
				{
					arrayList.Add(barItemID);
				}
			}
		}
		else if (htMergeKeyVsItemIdsList.Contains(mergeId))
		{
			arrayList = GetMergeListForKey(mergeId);
			arrayList.Remove(BarItemID.FromBarItem(barItem));
		}
		if (arrayList != null && arrayList.Count > 1)
		{
			BringItemIdToFront(arrayList, BarManager.GetFormTypeName(ActiveForm));
		}
	}
}
