using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Editor(typeof(BarItemsCollectionEditor), typeof(UITypeEditor))]
public class BarItems : VisuallyInheritableList, IDisposable
{
	private BarManager barManager;

	private Hashtable itemsByHotKey = new Hashtable();

	private Hashtable hotKeyByItems = new Hashtable();

	private Hashtable itemsByID = new Hashtable();

	private Hashtable idByItems = new Hashtable();

	private Hashtable itemsByCatAndName = new Hashtable();

	private Hashtable catAndNameByItems = new Hashtable();

	private Hashtable itemList = new Hashtable();

	private int m_nMergeRecursionSpinLock;

	public new BarItem this[int index]
	{
		get
		{
			return (BarItem)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DocumentationExclude]
	[Browsable(false)]
	public BarItem this[BarItemID barItemId] => FindItem(barItemId.ToString());

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[DocumentationExclude]
	public BarItem this[string barItemId] => FindItem(barItemId);

	public BarManager Manager
	{
		get
		{
			return barManager;
		}
		set
		{
			if (barManager == value)
			{
				return;
			}
			barManager = value;
			if (barManager == null)
			{
				return;
			}
			IEnumerator enumerator = GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					BarItem barItem = (BarItem)enumerator.Current;
					barItem.Manager = barManager;
				}
			}
			finally
			{
				IDisposable disposable = enumerator as IDisposable;
				if (disposable != null)
				{
					disposable.Dispose();
				}
			}
		}
	}

	internal bool IsMergeRecurstionSuspended => m_nMergeRecursionSpinLock > 0;

	public BarItems()
	{
	}

	public BarItems(BarItem[] barItems)
		: base(barItems)
	{
	}

	public BarItems(BarManager manager)
		: base(manager as IDesignable)
	{
		barManager = manager;
	}

	internal BarItems(IDesignable parent)
		: base(parent)
	{
	}

	public virtual void AddRange(BarItem[] items)
	{
		base.AddRange(items);
	}

	public override void Insert(int index, object value)
	{
		BarItem barItem = value as BarItem;
		base.Insert(index, (object)barItem);
		IDesignable designable = base.Parent;
		MergeBarItem(index, barItem, designable);
	}

	public override void InsertRange(int index, ICollection c)
	{
		base.InsertRange(index, c);
		IDesignable designable = base.Parent;
		foreach (BarItem item in c)
		{
			MergeBarItem(index, item, designable);
		}
	}

	public override int Add(object value)
	{
		int result = base.Add(value);
		BarItem barItem = value as BarItem;
		MergeBarItem(-1, barItem, base.Parent);
		return result;
	}

	private void MergeBarItem(int index, BarItem barItem, IDesignable parent)
	{
		BarManager barManager = null;
		if (barItem == null || parent == null || (barManager = barItem.Manager) == null || barManager.Initializing)
		{
			return;
		}
		if (parent is Bar bar)
		{
			if (bar is MergedBar)
			{
				MergedBar mergedBar = (MergedBar)bar;
				if (mergedBar.CanPropagateChanges)
				{
					mergedBar.PropagateAdd(barItem);
				}
			}
			else
			{
				if (IsMergeRecurstionSuspended)
				{
					return;
				}
				Bar mergedEquivalent = barManager.GetMergedEquivalent(bar, null);
				if (mergedEquivalent is MergedBar && mergedEquivalent.Manager != bar.Manager)
				{
					if (barItem is ParentBarItem parentBarItem)
					{
						barItem = new MergedParentBarItem(new ParentBarItem[2]
						{
							parentBarItem,
							new ParentBarItem()
						}, bar.Manager);
						barItem.Visible = parentBarItem.Visible;
					}
					InsertMergedBarItem(index, barItem, mergedEquivalent.Items);
				}
			}
		}
		else
		{
			if (IsMergeRecurstionSuspended)
			{
				return;
			}
			ParentBarItem parentBarItem2 = parent as ParentBarItem;
			if (parentBarItem2 is MergedParentBarItem)
			{
				return;
			}
			MainFrameBarManager mainFrameBarManager = barManager.MainFrameBarManager;
			if (parentBarItem2 == null || mainFrameBarManager == null)
			{
				return;
			}
			MergedParentBarItem[] mergedEquivalents = mainFrameBarManager.GetMergedEquivalents(parentBarItem2);
			if (mergedEquivalents != null && mergedEquivalents.Length > 0)
			{
				MergedParentBarItem[] array = mergedEquivalents;
				foreach (MergedParentBarItem mergedParentBarItem in array)
				{
					mergedParentBarItem.Items.SuspendMergeRecurstion();
					InsertMergedBarItem(index, barItem, mergedParentBarItem.Items);
					mergedParentBarItem.Items.ResumeMergeRecurstion();
				}
			}
		}
	}

	private static void InsertMergedBarItem(int index, BarItem barItem, BarItems mergedBarItems)
	{
		if (index < 0)
		{
			mergedBarItems.Add(barItem);
		}
		else
		{
			mergedBarItems.Insert(index, barItem);
		}
	}

	public bool IsValidItemID(BarItem itemToValidate, string newID)
	{
		if (newID == BarManager.SyncfusionTransientItemID)
		{
			return true;
		}
		if (newID == string.Empty || newID == null)
		{
			return false;
		}
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				BarItem barItem = (BarItem)enumerator.Current;
				if (itemToValidate != barItem && (itemToValidate == null || itemToValidate.Manager == barItem.Manager) && newID == barItem.ID)
				{
					return false;
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		if (barManager != null)
		{
			MainFrameBarManager mainFrameBarManager = barManager.MainFrameBarManager;
			if (mainFrameBarManager != null && !mainFrameBarManager.bUpdateUserChangeIn)
			{
				BarItemID barItemID = new BarItemID(newID, BarManager.GetFormTypeName(mainFrameBarManager));
				if (mainFrameBarManager.customAddedItemsVsBarItemID != null && mainFrameBarManager.customAddedItemsVsBarItemID.Contains(barItemID))
				{
					return false;
				}
			}
		}
		return true;
	}

	protected override void AddHandlers(object item)
	{
		if (!(item is BarItem))
		{
			throw new ArrayTypeMismatchException();
		}
		BarItem barItem = (BarItem)item;
		if (barManager != null)
		{
			if (barItem.Manager != barManager)
			{
				barItem.Manager = barManager;
			}
			string text = barItem.ID;
			while (!IsValidItemID(barItem, text))
			{
				text = IDGenerator.GetNextID(text);
			}
			barItem.ID = text;
			StoreHashInfoForItem(barItem);
		}
		else
		{
			StoreHashInfoForItem(barItem);
		}
		base.AddHandlers(item);
	}

	protected override void ReleaseHandler(object item)
	{
		base.ReleaseHandler(item);
		if (item is BarItem && barManager != null && !barManager.DesignMode)
		{
			BarItem barItem = (BarItem)item;
			barItem.Manager = null;
		}
		if (item is BarItem)
		{
			RemoveHashInfoForItem((BarItem)item);
		}
	}

	[DocumentationExclude]
	protected void StoreHashInfoForItem(BarItem item)
	{
		RemoveHashInfoForItem(item);
		if (item.Manager == null || item.Manager.Form == null || item.Manager.Form.Text != "Dummy Form")
		{
			string text = item.Text;
			int num = text.IndexOf('&');
			if (num != -1 && num + 1 < text.Length)
			{
				char c = text[num + 1];
				c = char.ToLower(c);
				itemsByHotKey[c] = item;
				hotKeyByItems[item] = c;
			}
		}
		itemsByID[item.ID] = item;
		idByItems[item] = item.ID;
		string text2 = item.CategoryIndex + item.Text;
		itemsByCatAndName[text2] = item;
		catAndNameByItems[item] = text2;
	}

	[DocumentationExclude]
	protected void RemoveHashInfoForItem(BarItem barItem)
	{
		if (hotKeyByItems[barItem] != null)
		{
			char c = (char)hotKeyByItems[barItem];
			hotKeyByItems.Remove(barItem);
			if (itemsByHotKey[c] == barItem)
			{
				itemsByHotKey.Remove(c);
			}
		}
		if (idByItems[barItem] != null)
		{
			string key = (string)idByItems[barItem];
			idByItems.Remove(barItem);
			itemsByID.Remove(key);
		}
		if (catAndNameByItems[barItem] != null)
		{
			string key2 = (string)catAndNameByItems[barItem];
			catAndNameByItems.Remove(barItem);
			itemsByCatAndName.Remove(key2);
		}
	}

	public BarItem FindItem(string id)
	{
		if (id.StartsWith("\\"))
		{
			id = id.Remove(0, 1);
		}
		if (itemsByID[id] != null)
		{
			return itemsByID[id] as BarItem;
		}
		return null;
	}

	public BarItem FindItem(string text, int categoryIndex)
	{
		string key = categoryIndex + text;
		if (itemsByCatAndName[key] != null)
		{
			return itemsByCatAndName[key] as BarItem;
		}
		return null;
	}

	public BarItem FindNestedItem(string id)
	{
		GetNestedItems();
		if (itemList[id] != null)
		{
			return itemList[id] as BarItem;
		}
		return null;
	}

	private void GetNestedItems()
	{
		if (!(base.Parent is XPToolBar))
		{
			return;
		}
		XPToolBar xPToolBar = (XPToolBar)base.Parent;
		foreach (BarItem item in xPToolBar.Items)
		{
			RecursiveNestedItems(item, ref itemList);
		}
	}

	private void RecursiveNestedItems(BarItem current, ref Hashtable itemList)
	{
		itemList[current.ID] = current;
		if (!(current is ParentBarItem))
		{
			return;
		}
		ParentBarItem parentBarItem = (ParentBarItem)current;
		foreach (BarItem item in parentBarItem.Items)
		{
			RecursiveNestedItems(item, ref itemList);
		}
	}

	public BarItem GetItemFromHotKey(char hotkey)
	{
		return itemsByHotKey[hotkey] as BarItem;
	}

	protected override void OnItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		BarItem item = sender as BarItem;
		if (e.PropertyName == "Text" || e.PropertyName == "CategoryIndex" || e.PropertyName == "ID")
		{
			StoreHashInfoForItem(item);
		}
		base.OnItemPropertyChanged(sender, e);
	}

	[DocumentationExclude]
	protected virtual void UpdateItemPositions(BarItem updatedItem)
	{
		if (updatedItem == null)
		{
			return;
		}
		int num = IndexOf(updatedItem);
		if (num != -1)
		{
			int num2 = FindMergePosition(updatedItem.MergeOrder);
			if (num2 != num + 1)
			{
				Move(num, num2, 1);
			}
		}
	}

	[DocumentationExclude]
	public virtual int FindMergePosition(int mergeOrder)
	{
		int num = 0;
		int num2 = Count - 1;
		while (num < num2)
		{
			int num3 = (num + num2) / 2;
			if (this[num3].MergeOrder > mergeOrder)
			{
				num2 = num3;
			}
			else
			{
				num = num3 + 1;
			}
		}
		if (num < Count && this[num].MergeOrder <= mergeOrder)
		{
			num++;
		}
		return num;
	}

	internal void SuspendMergeRecurstion()
	{
		m_nMergeRecursionSpinLock++;
	}

	internal void ResumeMergeRecurstion()
	{
		m_nMergeRecursionSpinLock--;
	}

	public virtual void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		SuspendEvents();
		if (Count > 0)
		{
			BarItem barItem = null;
			for (int i = 0; i < Count; i++)
			{
				barItem = this[i];
				barItem.Dispose();
			}
		}
		Clear();
		itemsByHotKey.Clear();
		hotKeyByItems.Clear();
		itemsByID.Clear();
		idByItems.Clear();
		itemsByCatAndName.Clear();
		catAndNameByItems.Clear();
		itemList.Clear();
		base.Parent = null;
		barManager = null;
	}
}
