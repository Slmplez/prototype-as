using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MergedParentBarItem : ParentBarItem, IMergedContainer
{
	protected internal ArrayListExt mergedItems = new ArrayListExt();

	private bool visible = true;

	private bool mergeOfItemsInChildManagersOnly = true;

	protected Hashtable m_hrForms;

	private MergedStateTracker mergedState;

	public override bool UpdateUIMFCStyle
	{
		get
		{
			return GetActiveMergedItem()?.UpdateUIMFCStyle ?? base.UpdateUIMFCStyle;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.UpdateUIMFCStyle = value;
			}
			else
			{
				base.UpdateUIMFCStyle = value;
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
			base.Manager = value;
		}
	}

	public override bool Enabled
	{
		get
		{
			return GetActiveMergedItem()?.Enabled ?? base.Enabled;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Enabled = value;
			}
			else
			{
				base.Enabled = value;
			}
		}
	}

	public override bool Checked
	{
		get
		{
			return GetActiveMergedItem()?.Checked ?? base.Checked;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Checked = value;
			}
			else
			{
				base.Checked = value;
			}
		}
	}

	public override bool CloseOnClick
	{
		get
		{
			return GetActiveMergedItem()?.CloseOnClick ?? base.CloseOnClick;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.CloseOnClick = value;
			}
			else
			{
				base.CloseOnClick = value;
			}
		}
	}

	public override int ImageIndex
	{
		get
		{
			return GetActiveMergedItem()?.ImageIndex ?? base.ImageIndex;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.ImageIndex = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ImageIndex", null, null));
			}
			else
			{
				base.ImageIndex = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override ImageList ImageList
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.ImageList;
			}
			return activeMergedItem.ImageList;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override ImageListAdv ImageListAdv
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.ImageListAdv;
			}
			return activeMergedItem.ImageListAdv;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override ImageList LargeImageList
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.LargeImageList;
			}
			return activeMergedItem.LargeImageList;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override ImageListAdv LargeImageListAdv
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.LargeImageListAdv;
			}
			return activeMergedItem.LargeImageListAdv;
		}
	}

	public override int MergeOrder
	{
		get
		{
			return GetActiveMergedItem()?.MergeOrder ?? base.MergeOrder;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.MergeOrder = value;
			}
			else
			{
				base.MergeOrder = value;
			}
		}
	}

	public override MenuMerge MergeType
	{
		get
		{
			return GetActiveMergedItem()?.MergeType ?? base.MergeType;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.MergeType = value;
			}
			else
			{
				base.MergeType = value;
			}
		}
	}

	public override PaintStyle PaintStyle
	{
		get
		{
			return GetActiveMergedItem()?.PaintStyle ?? base.PaintStyle;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.PaintStyle = value;
			}
			else
			{
				base.PaintStyle = value;
			}
		}
	}

	public override bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			if (visible != value)
			{
				visible = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Visible", !visible, visible));
			}
		}
	}

	public override string Text
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.Text;
			}
			return activeMergedItem.Text;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Text = value;
			}
			else
			{
				base.Text = value;
			}
		}
	}

	public override Shortcut Shortcut
	{
		get
		{
			return GetActiveMergedItem()?.Shortcut ?? base.Shortcut;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Shortcut = value;
			}
			else
			{
				base.Shortcut = value;
			}
		}
	}

	public override string Tooltip
	{
		get
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem == null)
			{
				return base.Tooltip;
			}
			return activeMergedItem.Tooltip;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Tooltip = value;
			}
			else
			{
				base.Tooltip = value;
			}
		}
	}

	public override ParentBarItemStyle ParentStyle
	{
		get
		{
			return GetActiveMergedItem()?.ParentStyle ?? base.ParentStyle;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.ParentStyle = value;
			}
			else
			{
				base.ParentStyle = value;
			}
		}
	}

	public override bool Customizable
	{
		get
		{
			return GetActiveMergedItem()?.Customizable ?? base.Customizable;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.Customizable = value;
			}
			else
			{
				base.Customizable = value;
			}
		}
	}

	public override bool IsRecentlyUsedItem
	{
		get
		{
			return GetActiveMergedItem()?.IsRecentlyUsedItem ?? base.IsRecentlyUsedItem;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.IsRecentlyUsedItem = value;
			}
			else
			{
				base.IsRecentlyUsedItem = value;
			}
		}
	}

	public override bool UsePartialMenus
	{
		get
		{
			return GetActiveMergedItem()?.UsePartialMenus ?? base.UsePartialMenus;
		}
		set
		{
			ParentBarItem activeMergedItem = GetActiveMergedItem();
			if (activeMergedItem != null)
			{
				activeMergedItem.UsePartialMenus = value;
			}
			else
			{
				base.UsePartialMenus = value;
			}
		}
	}

	public MergedParentBarItem(ParentBarItem[] itemsToMerge, BarManager manager)
	{
		if (itemsToMerge.Length < 2)
		{
			throw new ArgumentException("The merged Items should have at least 2 items to merge.", "mergedItems");
		}
		AdwiseEvents();
		mergedItems.AddRange(itemsToMerge);
		SetupForms();
		CategoryIndex = 1001;
		Manager = manager;
		mergedState = CreateMergedStateTracker();
		if (itemsToMerge[0].Manager is MainFrameBarManager)
		{
			mergeOfItemsInChildManagersOnly = false;
		}
		MergeParentBarItems(mergedItems);
		if (!mergeOfItemsInChildManagersOnly)
		{
			mergedState.InitMergedItemsHash();
			if (Manager != null)
			{
				Manager.MainFrameBarManager.ActiveFormChanged += ActiveFormChanged;
				base.Items.ItemPropertyChanged += ItemPropertyChanged;
			}
		}
	}

	private void AdwiseEvents()
	{
		mergedItems.CollectionChanged += mergedItems_CollectionChanged;
	}

	private void UnadwiseEvents()
	{
		mergedItems.CollectionChanged -= mergedItems_CollectionChanged;
		foreach (ParentBarItem mergedItem in mergedItems)
		{
			UnadwiseItemEvents(mergedItem);
		}
	}

	private void mergedItems_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		BarItem barItem = (BarItem)e.Element;
		if (barItem != null)
		{
			if (e.Action == CollectionChangeAction.Add)
			{
				AdwiseItemEvents(barItem);
			}
			else if (e.Action == CollectionChangeAction.Remove)
			{
				UnadwiseItemEvents(barItem);
			}
		}
	}

	private void AdwiseItemEvents(BarItem barItem)
	{
		barItem.PropertyChanged += barItem_PropertyChanged;
	}

	private void UnadwiseItemEvents(BarItem barItem)
	{
		barItem.PropertyChanged -= barItem_PropertyChanged;
	}

	private void barItem_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		ParentBarItem parentBarItem = (ParentBarItem)sender;
		if (e.PropertyName == "Text" && parentBarItem == GetActiveMergedItem())
		{
			OnPropertyChanged(e);
			MergeItems(parentBarItem);
		}
	}

	private void SetupForms()
	{
		if (m_hrForms != null)
		{
			m_hrForms.Clear();
		}
		else
		{
			m_hrForms = new Hashtable();
		}
		int num = 0;
		foreach (ParentBarItem mergedItem in mergedItems)
		{
			if (mergedItem.Manager != null)
			{
				string formTypeName = BarManager.GetFormTypeName(mergedItem.Manager);
				m_hrForms.Add(formTypeName, num++);
			}
		}
	}

	protected MergedStateTracker CreateMergedStateTracker()
	{
		return new MergedStateTracker(this);
	}

	public bool IsAnyChildItemManagerActive()
	{
		bool result = false;
		if (mergeOfItemsInChildManagersOnly)
		{
			Form form = null;
			if (Manager is MainFrameBarManager mainFrameBarManager)
			{
				form = mainFrameBarManager.ActiveForm;
			}
			if (form != null)
			{
				string formTypeName = BarManager.GetFormTypeName(form);
				foreach (ParentBarItem mergedItem in mergedItems)
				{
					if (BarManager.GetFormTypeName(mergedItem.Manager) == formTypeName)
					{
						result = true;
						break;
					}
				}
			}
		}
		else
		{
			result = true;
		}
		return result;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnadwiseEvents();
			if (mergedState != null)
			{
				mergedState.Dispose();
				mergedState = null;
				UnsubscribePropertyChangedEvents();
			}
		}
		base.Dispose(disposing);
	}

	private void UnsubscribePropertyChangedEvents()
	{
		if (!mergeOfItemsInChildManagersOnly && Manager != null)
		{
			Manager.MainFrameBarManager.ActiveFormChanged -= ActiveFormChanged;
			base.Items.ItemPropertyChanged -= ItemPropertyChanged;
		}
	}

	protected override void OnItemsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		base.OnItemsCollectionChanged(sender, e);
		if (mergedState != null)
		{
			mergedState.OnItemsCollectionChanged(e);
		}
	}

	private void ItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (mergedState != null)
		{
			mergedState.OnItemPropertyChanged(sender as BarItem, e);
		}
	}

	public override bool ShouldDrawVisible(BarItem item)
	{
		if (mergeOfItemsInChildManagersOnly)
		{
			return true;
		}
		if (mergedState != null)
		{
			bool validValueReturned = false;
			bool result = mergedState.ShouldDrawVisible(item, out validValueReturned);
			if (validValueReturned)
			{
				return result;
			}
		}
		return base.ShouldDrawVisible(item);
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

	public override void RemoveItem(BarItem item)
	{
		base.RemoveItem(item);
		foreach (ParentBarItem mergedItem in mergedItems)
		{
			mergedItem.RemoveItem(item);
		}
		if (mergedItems.Contains(item))
		{
			mergedItems.Remove(item);
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

	public void MergeParentBarItems(ArrayListExt parentItems)
	{
		int num = 0;
		base.Items.SuspendEvents();
		base.Items.Clear();
		Hashtable hashtable = new Hashtable();
		Hashtable hashtable2 = new Hashtable();
		ArrayList arrayList = new ArrayList();
		Hashtable hashtable3 = new Hashtable();
		foreach (ParentBarItem parentItem in parentItems)
		{
			foreach (BarItem item in parentItem.Items)
			{
				if (parentItem.IsGroupBeginning(item))
				{
					hashtable3.Add(item, 1);
				}
				string key = BarItemID.FromBarItem(item).ToString();
				string key2 = item.Text + item.ID + item.MergeOrder;
				bool isNewEntry = true;
				if (item is ParentBarItem)
				{
					InsertIntoHash(hashtable2, key2, item as ParentBarItem, ref isNewEntry);
				}
				else
				{
					arrayList.Add(item);
				}
				if (isNewEntry && !hashtable.ContainsKey(key))
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
			for (int i = 0; i < value.Count; i++)
			{
				array[i] = value[i] as ParentBarItem;
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
		for (int j = 0; j < num; j++)
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
					int num2 = base.Items.IndexOf(barItem4);
					base.Items.SuspendMergeRecurstion();
					base.Items.Insert(num2 + 1, item3);
					base.Items.ResumeMergeRecurstion();
					flag = true;
				}
			}
			else
			{
				hashtable2[key4] = item3;
			}
			if (!flag)
			{
				int index = base.Items.FindMergePosition(item3.MergeOrder);
				base.Items.SuspendMergeRecurstion();
				base.Items.Insert(index, item3);
				base.Items.ResumeMergeRecurstion();
			}
			if (hashtable3[item3] != null)
			{
				BeginGroupAt(item3);
			}
		}
		base.Items.ResumeEvents(throwEvent: true);
	}

	private void InsertPositionalInfo(ParentBarItem parentItem1, ParentBarItem parentItem2, Hashtable itemsOrderOfOccurance)
	{
		string key = BarItemID.FromBarItem(parentItem2).ToString();
		string key2 = BarItemID.FromBarItem(parentItem1).ToString();
		int num = (int)itemsOrderOfOccurance[key];
		itemsOrderOfOccurance[key2] = num;
	}

	private void ActiveFormChanged(object sender, EventArgs e)
	{
		ActiveManagerChanged(Manager.MainFrameBarManager.ActiveChildBarManager);
	}

	public void ActiveManagerChanged(BarManager activeManager)
	{
		if (!mergeOfItemsInChildManagersOnly)
		{
			visible = true;
			if (mergedState != null)
			{
				mergedState.UpdateMergeHash();
			}
			return;
		}
		bool flag = visible;
		visible = false;
		foreach (ParentBarItem mergedItem in mergedItems)
		{
			if (mergedItem.Manager.Form.GetType() == activeManager.Form.GetType())
			{
				visible = true;
				break;
			}
		}
		if (flag != visible)
		{
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Visible", flag, visible));
		}
	}

	protected internal override void OnUpdateUI(EventArgs args)
	{
		if (mergedItems != null)
		{
			GetActiveMergedItem()?.OnUpdateUI(args);
		}
		base.OnUpdateUI(args);
	}

	public override void OnPopup(EventArgs args)
	{
		if (mergedItems != null)
		{
			GetActiveMergedItem()?.OnPopup(args);
		}
		base.OnPopup(args);
	}

	public override void OnPopupClosed(EventArgs args)
	{
		if (mergedItems != null)
		{
			GetActiveMergedItem()?.OnPopupClosed(args);
		}
		base.OnPopupClosed(args);
	}

	protected override void OnItemClicked(EventArgs args)
	{
		base.OnItemClicked(args);
		GetActiveMergedItem()?.PerformClick();
	}

	protected ParentBarItem GetActiveMergedItem()
	{
		ParentBarItem parentBarItem = null;
		if (Manager != null)
		{
			MainFrameBarManager mainFrameBarManager = Manager.MainFrameBarManager;
			if (mainFrameBarManager != null && mainFrameBarManager.ActiveChildBarManager != null)
			{
				object obj = m_hrForms[BarManager.GetFormTypeName(mainFrameBarManager.ActiveForm)];
				if (obj == null)
				{
					obj = m_hrForms[BarManager.GetFormTypeName(mainFrameBarManager.Form)];
				}
				if (obj != null)
				{
					int num = (int)obj;
					int count = mergedItems.Count;
					if (num >= 0 && num < count)
					{
						ParentBarItem parentBarItem2 = (ParentBarItem)mergedItems[num];
						parentBarItem = mainFrameBarManager.ActiveChildBarManager.Items.FindItem(parentBarItem2.ID) as ParentBarItem;
						if (parentBarItem == null)
						{
							parentBarItem = parentBarItem2;
						}
					}
				}
			}
			else
			{
				parentBarItem = (ParentBarItem)mergedItems[0];
			}
		}
		return parentBarItem;
	}
}
