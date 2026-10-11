using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MergedBar : Bar, IMergedContainer
{
	protected internal Bar[] mergedBars;

	private MergedStateTracker mergedState;

	private bool mergeOfItemsInChildManagersOnly = true;

	private bool currentVisibleStateDueToMerge = true;

	private bool m_bPropagateChanges;

	public bool CurrentVisibleStateDueToMerge
	{
		get
		{
			return currentVisibleStateDueToMerge;
		}
		set
		{
			if (currentVisibleStateDueToMerge != value)
			{
				bool flag = currentVisibleStateDueToMerge;
				currentVisibleStateDueToMerge = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "BarStyle", flag, value));
			}
		}
	}

	public override BarManager Manager
	{
		get
		{
			return base.Manager;
		}
		set
		{
			if (value == null)
			{
				UnsubscribePropertyChangedEvents();
			}
			manager = value;
		}
	}

	public bool PropagateChanges
	{
		get
		{
			return m_bPropagateChanges;
		}
		set
		{
			m_bPropagateChanges = value;
		}
	}

	internal bool CanPropagateChanges
	{
		get
		{
			bool flag = false;
			MainFrameBarManager mainFrameBarManager = Manager.MainFrameBarManager;
			if (mainFrameBarManager != null)
			{
				Form form = mainFrameBarManager.Form;
				flag = form != null && (!form.IsMdiContainer || form.MdiChildren.Length <= 0);
			}
			if (flag)
			{
				return PropagateChanges;
			}
			return false;
		}
	}

	public Bar[] MergedBarsCollection => mergedBars.Clone() as Bar[];

	public override int MenuItemMergeOrder
	{
		get
		{
			return mergedBars[0].MenuItemMergeOrder;
		}
		set
		{
		}
	}

	public override bool AllowCustomizing
	{
		get
		{
			return mergedBars[0].AllowCustomizing;
		}
		set
		{
		}
	}

	public override bool AllowHiding
	{
		get
		{
			return mergedBars[0].AllowHiding;
		}
		set
		{
		}
	}

	public override bool AllowItemsReorderOnShrunk
	{
		get
		{
			return mergedBars[0].AllowItemsReorderOnShrunk;
		}
		set
		{
		}
	}

	public override string BarName
	{
		get
		{
			return mergedBars[0].BarName;
		}
		set
		{
		}
	}

	public override BarStyle BarStyle
	{
		get
		{
			return mergedBars[0].BarStyle;
		}
		set
		{
			if (value != mergedBars[0].BarStyle)
			{
				mergedBars[0].BarStyle = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "BarStyle", value, value));
			}
		}
	}

	public override string Caption
	{
		get
		{
			return mergedBars[0].Caption;
		}
		set
		{
		}
	}

	public MergedBar(Bar[] barsToMerge, BarManager manager)
		: base(manager)
	{
		mergedBars = barsToMerge;
		mergedState = CreateMergedStateTracker();
		MergeBars(mergedBars);
		mergedState.InitMergedItemsHash();
		if (Manager != null)
		{
			Manager.MainFrameBarManager.ActiveFormChanged += ActiveFormChanged;
			Items.ItemPropertyChanged += ItemPropertyChanged;
		}
		bool flag = false;
		foreach (Bar bar in barsToMerge)
		{
			if (bar.Manager == manager)
			{
				mergeOfItemsInChildManagersOnly = false;
				manager.ReplaceBarsWithMergedBar(this);
				flag = true;
			}
			else
			{
				MainFrameBarManager mainFrameBarManager = Manager as MainFrameBarManager;
				mainFrameBarManager.ReplaceChildBarsWithMergedBar(this, bar);
			}
		}
		if (!flag)
		{
			manager.ReplaceBarsWithMergedBar(this);
		}
		CurrentVisibleStateDueToMerge = IsAnyChildBarManagerActive();
	}

	private bool IsAnyChildBarManagerActive()
	{
		if (!mergeOfItemsInChildManagersOnly)
		{
			return true;
		}
		Form activeForm = ((MainFrameBarManager)Manager).ActiveForm;
		if (activeForm == null)
		{
			return false;
		}
		string formTypeName = BarManager.GetFormTypeName(activeForm);
		Bar[] array = mergedBars;
		foreach (Bar bar in array)
		{
			if (BarManager.GetFormTypeName(bar.Manager) == formTypeName)
			{
				return true;
			}
		}
		return false;
	}

	protected MergedStateTracker CreateMergedStateTracker()
	{
		return new MergedStateTracker(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && mergedState != null)
		{
			mergedState.Dispose();
			mergedState = null;
			UnsubscribePropertyChangedEvents();
			LoseMergedItems();
		}
		base.Dispose(disposing);
	}

	private void UnsubscribePropertyChangedEvents()
	{
		if (Manager != null)
		{
			Manager.MainFrameBarManager.ActiveFormChanged -= ActiveFormChanged;
		}
		if (Items != null)
		{
			Items.ItemPropertyChanged -= ItemPropertyChanged;
		}
	}

	private void ItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (mergedState != null)
		{
			mergedState.OnItemPropertyChanged(sender as BarItem, e);
		}
	}

	protected override void OnItemsCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		base.OnItemsCollectionChanged(sender, args);
		if (mergedState != null)
		{
			mergedState.OnItemsCollectionChanged(args);
		}
	}

	private void LoseMergedItems()
	{
		if (Manager == null || Manager.Form == null)
		{
			return;
		}
		for (int num = Items.Count - 1; num >= 0; num--)
		{
			BarItem barItem = Items[num];
			if (barItem is MergedParentBarItem)
			{
				Manager.RemoveReferencesToBarItem(barItem);
				barItem.Dispose();
			}
		}
		bool flag = false;
		for (int i = 0; i < mergedBars.Length; i++)
		{
			Bar bar = mergedBars[i];
			if (bar.Manager == Manager)
			{
				Manager.RestoreOriginalBar(this);
				flag = true;
			}
			else
			{
				MainFrameBarManager mainFrameBarManager = Manager as MainFrameBarManager;
				mainFrameBarManager.RestoreOriginalChildBars(this, BarManager.GetFormTypeName(bar.Manager));
			}
		}
		if (!flag)
		{
			Manager.RestoreOriginalBar(this);
		}
	}

	public override void RemoveItem(BarItem item)
	{
		base.RemoveItem(item);
		Bar[] array = mergedBars;
		foreach (Bar bar in array)
		{
			bar.RemoveItem(item);
		}
	}

	public override bool ShouldDrawVisible(BarItem item)
	{
		bool validValueReturned = false;
		if (base.ShouldDrawVisible(item))
		{
			if (mergedState != null)
			{
				bool result = mergedState.ShouldDrawVisible(item, out validValueReturned);
				if (validValueReturned)
				{
					return result;
				}
			}
			return true;
		}
		return false;
	}

	bool IMergedContainer.IsItemHiddenByMerge(BarItem item)
	{
		bool validValueReturned = false;
		bool flag = mergedState.ShouldDrawVisible(item, out validValueReturned);
		if (validValueReturned)
		{
			return !flag;
		}
		return false;
	}

	protected override bool ShouldDrawInactiveItems()
	{
		return false;
	}

	private void ActiveFormChanged(object sender, EventArgs e)
	{
		ActiveManagerChanged(BarManager.GetManagerFromForm(((MainFrameBarManager)Manager).ActiveForm));
		CurrentVisibleStateDueToMerge = IsAnyChildBarManagerActive();
	}

	public void ActiveManagerChanged(BarManager activeManager)
	{
		if (mergedState != null)
		{
			mergedState.UpdateMergeHash();
		}
	}

	private void InsertIntoHash(Hashtable hash, string key, ParentBarItem value, ref bool isNewEntry)
	{
		isNewEntry = false;
		if (hash[key] == null)
		{
			hash[key] = new BarItems();
			isNewEntry = true;
		}
		((BarItems)hash[key]).Add(value);
	}

	public void MergeBars(Bar[] bars)
	{
		int num = 0;
		Items.SuspendEvents();
		Items.Clear();
		Hashtable hashtable = new Hashtable();
		Hashtable hashtable2 = new Hashtable();
		ArrayList arrayList = new ArrayList();
		Hashtable hashtable3 = new Hashtable();
		foreach (Bar bar in bars)
		{
			foreach (BarItem item in bar.Items)
			{
				if (bar.IsGroupBeginning(item))
				{
					hashtable3.Add(item, 1);
				}
				string key = BarItemID.FromBarItem(item).ToString();
				string key2 = item.Text + item.ID + item.MergeOrder;
				bool isNewEntry = true;
				if (item is ParentBarItem && item.MergeType != MenuMerge.Remove)
				{
					InsertIntoHash(hashtable2, key2, item as ParentBarItem, ref isNewEntry);
				}
				else
				{
					arrayList.Add(item);
				}
				if (isNewEntry)
				{
					hashtable[key] = num++;
				}
			}
		}
		foreach (BarItems value in hashtable2.Values)
		{
			if (value.Count == 1)
			{
				arrayList.Add(value[0]);
				continue;
			}
			ParentBarItem[] array = new ParentBarItem[value.Count];
			for (int j = 0; j < value.Count; j++)
			{
				array[j] = value[j] as ParentBarItem;
			}
			MergedParentBarItem mergedParentBarItem = new MergedParentBarItem(array, Manager);
			if (hashtable3[array[0]] != null)
			{
				hashtable3[mergedParentBarItem] = 1;
			}
			arrayList.Add(mergedParentBarItem);
			InsertPositionalInfo(mergedParentBarItem, array[0], hashtable);
		}
		ArrayList arrayList2 = new ArrayList(num);
		for (int k = 0; k < num; k++)
		{
			arrayList2.Add(null);
		}
		foreach (BarItem item2 in arrayList)
		{
			string key3 = BarItemID.FromBarItem(item2).ToString();
			arrayList2[(int)hashtable[key3]] = item2;
		}
		hashtable2.Clear();
		foreach (BarItem item3 in arrayList2)
		{
			string key4 = item3.Text + item3.ID + item3.MergeOrder;
			bool flag = false;
			if (hashtable2[key4] is BarItem barItem4)
			{
				if (barItem4.MergeOrder == item3.MergeOrder)
				{
					int num2 = Items.IndexOf(barItem4);
					Items.Insert(num2 + 1, item3);
					flag = true;
				}
			}
			else
			{
				hashtable2[key4] = item3;
			}
			if (!flag)
			{
				int index = Items.FindMergePosition(item3.MergeOrder);
				Items.Insert(index, item3);
			}
			if (hashtable3[item3] != null)
			{
				BeginGroupAt(item3);
			}
		}
		Items.ResumeEvents(throwEvent: true);
	}

	private void InsertPositionalInfo(ParentBarItem parentItem1, ParentBarItem parentItem2, Hashtable itemsOrderOfOccurance)
	{
		string key = BarItemID.FromBarItem(parentItem2).ToString();
		string key2 = BarItemID.FromBarItem(parentItem1).ToString();
		int num = (int)itemsOrderOfOccurance[key];
		itemsOrderOfOccurance[key2] = num;
	}

	internal void PropagateAdd(BarItem barItem)
	{
		Bar bar = mergedBars[0];
		BarItems items = bar.Items;
		items.SuspendMergeRecurstion();
		items.Add(barItem);
		items.ResumeMergeRecurstion();
	}
}
