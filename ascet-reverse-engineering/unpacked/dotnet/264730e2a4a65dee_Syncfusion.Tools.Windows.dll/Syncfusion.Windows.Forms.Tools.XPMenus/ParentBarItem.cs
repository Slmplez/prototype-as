using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
public class ParentBarItem : BarItemEx, IBarItemContainer, IDesignable, ICloneable, IParentBarItem, IDeserializationCallback, IIgnoreWorkingArea
{
	protected internal const int DEF_SCROLL_SPEED = 100;

	private Hashtable separators;

	private VisuallyInheritableIntList separatorList;

	protected BarItems barItems;

	private bool partialMenus = true;

	private bool popupOn;

	private bool closeOnClick = true;

	private ParentBarItemStyle parentStyle;

	private ArrayList deserializedItems;

	private VisualStyle _style = VisualStyle.OfficeXP;

	private bool _styleSet;

	private bool m_bSetOffice2007Theme;

	private int _uiUpdateMFCStyle = -1;

	private Office2007Theme m_enOffice2007Theme;

	private bool m_bScrollOnMouseMove = true;

	private int m_scrollingSpeed = 100;

	private bool updatingBarItemPositions;

	private int m_maxItemsToDisplay = int.MaxValue;

	private bool m_bIgnoreWorkingArea;

	bool IDesignable.DesignMode => base.DesignMode;

	[DefaultValue(100)]
	[Description("Indicates scrolling speed for displayed child menu items.")]
	public int ScrollingSpeed
	{
		get
		{
			return m_scrollingSpeed;
		}
		set
		{
			if (value != m_scrollingSpeed)
			{
				m_scrollingSpeed = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates, scroll child items, when mouse moves over scroll buttons or not.")]
	public bool ScrollOnMouseMove
	{
		get
		{
			return m_bScrollOnMouseMove;
		}
		set
		{
			if (value != m_bScrollOnMouseMove)
			{
				m_bScrollOnMouseMove = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Specifies the list of separator positions.")]
	[Localizable(true)]
	[Editor(typeof(BarManagerCollectionEditor), typeof(UITypeEditor))]
	public VisuallyInheritableIntList SeparatorIndices => separatorList;

	[DefaultValue(null)]
	[Browsable(false)]
	public IntListDesignTime UpdatedSeparatorPositions
	{
		get
		{
			return separatorList.DesignTimeChanges;
		}
		set
		{
			separatorList.DesignTimeChanges = value;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	public IntListDesignTime UpdatedBarItemPositions
	{
		get
		{
			if (barItems != null)
			{
				return barItems.DesignTimeChanges;
			}
			return null;
		}
		set
		{
			updatingBarItemPositions = true;
			try
			{
				ArrayList c = new ArrayList(separatorList);
				Items.DesignTimeChanges = value;
				ReleaseSeparatorList();
				separatorList = CreateSeparatorList();
				InitSeparatorList();
				separatorList.AddRange(c);
				separatorList.ReinitBaseClassCopy();
			}
			finally
			{
				updatingBarItemPositions = false;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The collection of child BarItems.")]
	[MergableProperty(false)]
	public BarItems Items => barItems;

	[Description("Indicates, how much child items should be displayed for this ParentBarItem.")]
	[DefaultValue(int.MaxValue)]
	public int MaximumItemsToDisplay
	{
		get
		{
			return m_maxItemsToDisplay;
		}
		set
		{
			if (value != m_maxItemsToDisplay)
			{
				if (value < 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_maxItemsToDisplay = value;
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
			base.Manager = value;
			if (base.DesignMode)
			{
				barItems.Manager = base.Manager;
			}
		}
	}

	[DefaultValue(ParentBarItemStyle.Default)]
	[Category("Behavior")]
	[Localizable(true)]
	[Description("Indicates the ParentBarItemStyle in which the menu will be drawn.")]
	public virtual ParentBarItemStyle ParentStyle
	{
		get
		{
			return parentStyle;
		}
		set
		{
			if (parentStyle != value)
			{
				parentStyle = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ParentStyle", null, null));
			}
		}
	}

	[Description("Specifies the visual style of the dropdown.")]
	[Category("Appearance")]
	public virtual VisualStyle Style
	{
		get
		{
			if (_styleSet)
			{
				return _style;
			}
			if (barManager != null)
			{
				return barManager.Style;
			}
			return VisualStyle.OfficeXP;
		}
		set
		{
			_style = value;
			_styleSet = true;
		}
	}

	[Description("Colorschemes for Office2007 visual style.")]
	[Category("Appearance")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			Office2007Theme result = m_enOffice2007Theme;
			if (barManager != null)
			{
				result = barManager.Office2007Theme;
			}
			return result;
		}
		set
		{
			if (value != m_enOffice2007Theme)
			{
				m_enOffice2007Theme = value;
				if (barManager != null)
				{
					barManager.Office2007Theme = value;
				}
				m_bSetOffice2007Theme = true;
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Localizable(true)]
	[Description("Indicates whether the menu should close when an item is selected.")]
	public virtual bool CloseOnClick
	{
		get
		{
			return closeOnClick;
		}
		set
		{
			closeOnClick = value;
		}
	}

	[Localizable(true)]
	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Indicates whether the ParentBarItem will first show a list of Recently Used Items and an Expand button when dropped down.")]
	public virtual bool UsePartialMenus
	{
		get
		{
			return partialMenus;
		}
		set
		{
			partialMenus = value;
		}
	}

	public override bool IsRecentlyUsedItem
	{
		get
		{
			if (base.IsRecentlyUsedItem)
			{
				return true;
			}
			foreach (BarItem barItem in barItems)
			{
				if (barItem.IsRecentlyUsedItem)
				{
					return true;
				}
			}
			return false;
		}
		set
		{
			base.IsRecentlyUsedItem = value;
		}
	}

	[Description("Specifies whether the UpdateUI event should be fired in a MFC style fashion.")]
	[Category("Behavior")]
	public virtual bool UpdateUIMFCStyle
	{
		get
		{
			if (_uiUpdateMFCStyle == -1)
			{
				if (barManager != null)
				{
					return barManager.UpdateUIMFCStyle;
				}
				return false;
			}
			if (_uiUpdateMFCStyle == 0)
			{
				return false;
			}
			return true;
		}
		set
		{
			if (UpdateUIMFCStyle != value)
			{
				if (value)
				{
					_uiUpdateMFCStyle = 1;
				}
				else
				{
					_uiUpdateMFCStyle = 0;
				}
			}
		}
	}

	[DocumentationExclude]
	internal override bool HintViaHotKeyPrefix
	{
		set
		{
			if (value == base.HintViaHotKeyPrefix)
			{
				return;
			}
			base.HintViaHotKeyPrefix = value;
			foreach (BarItem item in Items)
			{
				item.HintViaHotKeyPrefix = value;
			}
		}
	}

	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			if (value != Visible)
			{
				base.Visible = value;
				if (barManager != null && barManager.GetMergedEquivalent(this, null) is MergedParentBarItem mergedParentBarItem)
				{
					mergedParentBarItem.Visible = value;
				}
			}
		}
	}

	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			m_bIgnoreWorkingArea = value;
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public event SubMenuPaintEventHandler DrawBackground;

	[Category("Action")]
	[Description("Occurs just before the dropdown gets closed..")]
	public event CancelEventHandler PopupClosing;

	[Category("Action")]
	[Description("Occurs before the submenu item's list of menu items is displayed.")]
	public event EventHandler Popup;

	[Category("Action")]
	[Description("Occurs just after the menu item has closed.")]
	public event EventHandler PopupClosed;

	[Description("Occurs before the submenu gets shown allowing you to cancel it.")]
	[Category("Action")]
	public event CancelEventHandler BeforePopup;

	public ParentBarItem()
		: this(MenuMerge.Add, 0, Shortcut.None, "", null, null)
	{
	}

	public ParentBarItem(string text)
		: this(MenuMerge.Add, 0, Shortcut.None, text, null, null)
	{
	}

	public ParentBarItem(string text, Shortcut shortcut)
		: this(MenuMerge.Add, 0, shortcut, text, null, null)
	{
	}

	public ParentBarItem(MenuMerge mergeType, int mergeOrder, Shortcut shortcut, string text, EventHandler onPopup, EventHandler onSelect)
		: base(mergeType, mergeOrder, shortcut, text, null, onPopup, onSelect)
	{
		Init();
	}

	private void Init()
	{
		barItems = new BarItems(this);
		barItems.CollectionChanged += OnItemsCollectionChanged;
		separators = new Hashtable();
		separatorList = CreateSeparatorList();
		InitSeparatorList();
	}

	private VisuallyInheritableIntList CreateSeparatorList()
	{
		return new VisuallyInheritableIntList(this);
	}

	private void InitSeparatorList()
	{
		separatorList.CollectionChanged += SeparatorList_Changed;
	}

	private void ReleaseSeparatorList()
	{
		separatorList.CollectionChanged -= SeparatorList_Changed;
		separatorList.Parent = null;
	}

	protected override void Dispose(bool disposing)
	{
		ReleaseSeparatorList();
		separators.Clear();
		if (deserializedItems != null)
		{
			deserializedItems.Clear();
		}
		if (barItems != null)
		{
			barItems.CollectionChanged -= OnItemsCollectionChanged;
			barItems = null;
		}
		base.Dispose(disposing);
	}

	[Browsable(false)]
	[DocumentationExclude]
	protected internal virtual bool OnDrawBackground(SubMenuPaintEventArgs args)
	{
		if (this.DrawBackground != null)
		{
			this.DrawBackground(this, args);
			return true;
		}
		return false;
	}

	private void MakeDirty()
	{
		if (base.Designer != null && base.Designer is IAllowMakeDirty allowMakeDirty)
		{
			allowMakeDirty.SetDirty();
		}
	}

	internal bool ShouldAddItem(object value)
	{
		bool result = true;
		if (value is ParentBarItem { Items: not null } parentBarItem)
		{
			if (parentBarItem.Items.Contains(this))
			{
				result = false;
			}
			else
			{
				foreach (BarItem item in parentBarItem.Items)
				{
					if (item is ParentBarItem)
					{
						ParentBarItem parentBarItem2 = item as ParentBarItem;
						if (parentBarItem2.Items != null && parentBarItem2.Items.Contains(this))
						{
							result = false;
							break;
						}
						result = ShouldAddItem(parentBarItem2);
					}
				}
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual void OnItemsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (base.DesignMode)
		{
			MakeDirty();
		}
		if (e.Action == CollectionChangeAction.Add && !ShouldAddItem(e.Element))
		{
			Items.Remove(e.Element);
		}
		if (popupOn && Items.Count > 1)
		{
			foreach (BarItem item in Items)
			{
				if (item is StandAloneBarItem && item.Text == string.Empty)
				{
					Items.Remove(item);
					break;
				}
			}
		}
		if (e.Element is BarItem barItem2)
		{
			if (e.Action == CollectionChangeAction.Add)
			{
				if (barItem2.Manager == null && Manager != null && !Manager.Items.Contains(barItem2))
				{
					if (!Manager.Initializing)
					{
						Manager.CustomizationHelper.ParentItem = this;
					}
					barItem2.Manager = Manager;
					if (barItem2.CategoryIndex == -1)
					{
						barItem2.CategoryIndex = 0;
					}
					if (!Manager.Initializing)
					{
						Manager.CustomizationHelper.ParentItem = null;
					}
				}
				barItem2.OnContainmentChanged(new ContainmentChangedEventArgs(this, inserted: true));
			}
			else
			{
				if (e.Action == CollectionChangeAction.Remove)
				{
					bool flag = false;
					if (barItem2 == null || barItem2.Manager == null || barItem2.Manager.MainFrameBarManager == null || barItem2.Manager.MainFrameBarManager.Items == null || barItem2.Manager.MainFrameBarManager.helper == null)
					{
						flag = true;
					}
					if (!flag && !updatingBarItemPositions)
					{
						if (barItem2.Manager.MainFrameBarManager.helper.ParentItem == null)
						{
							barItem2.Manager.MainFrameBarManager.helper.ParentItem = this;
						}
						barItem2.Manager.MainFrameBarManager.Items.Remove(barItem2);
					}
				}
				barItem2.OnContainmentChanged(new ContainmentChangedEventArgs(this, inserted: false));
			}
		}
		UpdateSeparatorIndices();
	}

	private void SeparatorList_Changed(object sender, CollectionChangeEventArgs e)
	{
		ApplySeparatorList();
	}

	private void ApplySeparatorList()
	{
		separators.Clear();
		foreach (int separator in separatorList)
		{
			if (separator < barItems.Count)
			{
				separators[barItems[separator]] = 1;
			}
		}
	}

	protected virtual void UpdateSeparatorIndices()
	{
		if (Items == null || Items.Count == 0 || separatorList == null)
		{
			return;
		}
		separatorList.SuspendEvents();
		separatorList.Clear();
		int num = -1;
		foreach (BarItem item in Items)
		{
			if (!(item is SeparatorItem))
			{
				num++;
				if (IsGroupBeginning(item))
				{
					separatorList.Add(num);
				}
			}
		}
		separatorList.ResumeEvents(throwEvent: false);
	}

	protected bool ShouldSerializeOffice2007Theme()
	{
		return m_bSetOffice2007Theme;
	}

	public void ResetOffice2007Theme()
	{
		m_bSetOffice2007Theme = false;
		Office2007Theme = Office2007Theme.Blue;
	}

	protected bool ShouldSerializeStyle()
	{
		return _styleSet;
	}

	public void ResetStyle()
	{
		_styleSet = false;
		_style = VisualStyle.OfficeXP;
	}

	[DocumentationExclude]
	public virtual bool ShouldDrawVisible(BarItem item)
	{
		if (item is MergedParentBarItem)
		{
			MergedParentBarItem mergedParentBarItem = item as MergedParentBarItem;
			if (!mergedParentBarItem.IsAnyChildItemManagerActive())
			{
				return false;
			}
		}
		return true;
	}

	public bool ProcessShortcut(Keys key)
	{
		BarItem barItem = FindProcessableItemWithShortcut(key);
		if (barItem != null && barItem.Visible && barItem.Enabled)
		{
			barItem.PerformClick();
			return true;
		}
		return false;
	}

	public BarItem FindProcessableItemWithShortcut(Keys key)
	{
		BarItem barItem = null;
		foreach (BarItem item in Items)
		{
			if (item is ParentBarItem)
			{
				barItem = ((ParentBarItem)item).FindProcessableItemWithShortcut(key);
			}
			else if (item.Visible && item.Shortcut == (Shortcut)key)
			{
				if (UpdateUIMFCStyle)
				{
					item.PerformUpdateUI();
				}
				if (item.Enabled)
				{
					barItem = item;
				}
			}
			if (barItem != null)
			{
				break;
			}
		}
		return barItem;
	}

	protected void ResetUpdateUIMFCStyle()
	{
		_uiUpdateMFCStyle = -1;
	}

	protected bool ShouldSerializeUpdateUIMFCStyle()
	{
		return _uiUpdateMFCStyle != -1;
	}

	public void ShowPopup()
	{
		if (Manager != null)
		{
			Manager.ShowPopup(this);
		}
	}

	public void HidePopup()
	{
		if (Manager != null)
		{
			Manager.HidePopup();
		}
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		ParentBarItem parentBarItem = new ParentBarItem();
		CopyTo(parentBarItem);
		return parentBarItem;
	}

	public object Clone(bool copyClones)
	{
		ParentBarItem parentBarItem = new ParentBarItem();
		CopyTo(parentBarItem, copyClones);
		return parentBarItem;
	}

	public override void CopyTo(BarItem barItem)
	{
		if (!(barItem is ParentBarItem))
		{
			throw new ArgumentException("barItem should be of type ParentBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		ParentBarItem parentBarItem = barItem as ParentBarItem;
		if (!BarManager.preventCopyingItemsInContainers)
		{
			foreach (BarItem item in Items)
			{
				parentBarItem.Items.Add(item);
			}
			foreach (int separatorIndex in SeparatorIndices)
			{
				parentBarItem.SeparatorIndices.Add(separatorIndex);
			}
		}
		parentBarItem.ParentStyle = ParentStyle;
		parentBarItem.CloseOnClick = CloseOnClick;
		parentBarItem.UsePartialMenus = UsePartialMenus;
		if (_styleSet)
		{
			parentBarItem.Style = Style;
		}
	}

	public void CopyTo(BarItem barItem, bool copyClones)
	{
		if (!(barItem is ParentBarItem))
		{
			throw new ArgumentException("barItem should be of type ParentBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		ParentBarItem parentBarItem = barItem as ParentBarItem;
		if (!BarManager.preventCopyingItemsInContainers)
		{
			foreach (BarItem item in Items)
			{
				if (copyClones)
				{
					parentBarItem.Items.Add(item.Clone() as BarItem);
				}
				else
				{
					parentBarItem.Items.Add(item);
				}
			}
			foreach (int separatorIndex in SeparatorIndices)
			{
				parentBarItem.SeparatorIndices.Add(separatorIndex);
			}
		}
		parentBarItem.ParentStyle = ParentStyle;
		parentBarItem.CloseOnClick = CloseOnClick;
		parentBarItem.UsePartialMenus = UsePartialMenus;
		if (_styleSet)
		{
			parentBarItem.Style = Style;
		}
	}

	protected ParentBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "SeparatorIndices":
			{
				ArrayList arrayList = (ArrayList)current.Value;
				foreach (int item in arrayList)
				{
					SeparatorIndices.Add(item);
				}
				break;
			}
			case "ParentStyle":
				ParentStyle = (ParentBarItemStyle)current.Value;
				break;
			case "CloseOnClick":
				if (current.Value is string)
				{
					CloseOnClick = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					CloseOnClick = (bool)current.Value;
				}
				break;
			case "UsePartialMenus":
				if (current.Value is string)
				{
					UsePartialMenus = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					UsePartialMenus = (bool)current.Value;
				}
				break;
			case "Items":
				deserializedItems = (ArrayList)current.Value;
				break;
			case "Style":
				Style = (VisualStyle)current.Value;
				break;
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		ArrayList value = new ArrayList(SeparatorIndices);
		info.AddValue("SeparatorIndices", value);
		info.AddValue("ParentStyle", ParentStyle);
		info.AddValue("CloseOnClick", CloseOnClick);
		info.AddValue("UsePartialMenus", UsePartialMenus);
		if (_styleSet)
		{
			info.AddValue("Style", Style);
		}
		value = ((Items == null) ? new ArrayList() : new ArrayList(Items));
		info.AddValue("Items", value);
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		foreach (BarItem deserializedItem in deserializedItems)
		{
			Items.Add(deserializedItem);
		}
	}

	public void BeginGroupAt(BarItem barItem)
	{
		if (separators[barItem] == null)
		{
			separators[barItem] = 1;
			if (popupOn)
			{
				int num = Items.IndexOf(barItem);
				if (num >= 0)
				{
					BarItem barItem2 = new SeparatorItem();
					barItem2.Text = "-";
					Items.Insert(num, barItem2);
				}
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "SeparatorIndices", null, null));
		}
		UpdateSeparatorIndices();
	}

	public void RemoveGroupAt(BarItem barItem)
	{
		if (separators[barItem] != null)
		{
			separators.Remove(barItem);
			if (popupOn)
			{
				int num = Items.IndexOf(barItem);
				num--;
				if (num >= 0)
				{
					BarItem barItem2 = Items[num];
					if (barItem2.Text == "-")
					{
						Items.RemoveAt(num);
					}
				}
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "SeparatorIndices", null, null));
		}
		UpdateSeparatorIndices();
	}

	public bool IsGroupBeginning(BarItem barItem)
	{
		if (separators[barItem] != null)
		{
			return true;
		}
		return false;
	}

	public virtual void RemoveItem(BarItem item)
	{
		RemoveGroupAt(item);
		if (barItems != null)
		{
			barItems.Remove(item);
		}
	}

	public virtual void OnPopupClosing(CancelEventArgs e)
	{
		if (this.PopupClosing != null)
		{
			this.PopupClosing(this, e);
		}
	}

	public virtual void OnPopupClosed(EventArgs args)
	{
		popupOn = false;
		if (Items != null)
		{
			Items.SuspendEvents();
			for (int num = Items.Count - 1; num >= 0; num--)
			{
				BarItem barItem = Items[num];
				if (barItem is StandAloneBarItem)
				{
					Items.RemoveAt(num);
				}
				if (barItem is ListBarItem)
				{
					ListBarItem listBarItem = barItem as ListBarItem;
					if (listBarItem.CurrentParent != null)
					{
						barItem.Visible = true;
						((ListBarItem)barItem).PopupClosed();
					}
				}
			}
			Items.ResumeEvents(!base.DesignMode);
		}
		if (this.PopupClosed != null)
		{
			this.PopupClosed(this, args);
		}
	}

	public virtual void MergeItems(ParentBarItem parentItemSrc)
	{
		if (parentItemSrc == this)
		{
			throw new ArgumentException("Trying to Merge with Self", "parentItemSrc");
		}
		MergeHelper.MergeItems(this, parentItemSrc);
	}

	private void ExpandListBarItems()
	{
		if (base.DesignMode || (Manager != null && Manager.Customizing))
		{
			return;
		}
		for (int i = 0; i < Items.Count; i++)
		{
			BarItem barItem = Items[i];
			if (!(barItem is ListBarItem) || !barItem.Visible)
			{
				continue;
			}
			ListBarItem listBarItem = barItem as ListBarItem;
			listBarItem.OnBeforeExpand();
			int num = 0;
			BarItem value = null;
			BarItem value2 = null;
			StringEnumerator enumerator = listBarItem.ChildCaptions.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					num++;
					ExpandedListBarItem expandedListBarItem = new ExpandedListBarItem(listBarItem, num - 1);
					if (listBarItem.UseNumberedList)
					{
						if (num < 10)
						{
							expandedListBarItem.Text = "&" + num;
						}
						else if (num == 10)
						{
							expandedListBarItem.Text = "1&0";
						}
						else
						{
							expandedListBarItem.Text = num.ToString();
						}
						expandedListBarItem.Text = expandedListBarItem.Text + " " + current;
					}
					else
					{
						expandedListBarItem.Text = current;
					}
					expandedListBarItem.CustomTextFont = barItem.CustomTextFont;
					expandedListBarItem.IsRecentlyUsedItem = listBarItem.IsRecentlyUsedItem;
					if (listBarItem.CheckedIndices.Contains(num - 1))
					{
						expandedListBarItem.Checked = true;
					}
					if (num == 1)
					{
						value = expandedListBarItem;
					}
					value2 = expandedListBarItem;
					Items.SuspendMergeRecurstion();
					Items.Insert(i + num, expandedListBarItem);
					Items.ResumeMergeRecurstion();
					if (num == 1 && IsGroupBeginning(listBarItem))
					{
						BeginGroupAt(expandedListBarItem);
					}
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
			listBarItem.PostExpand(this, Items.IndexOf(value), Items.IndexOf(value2));
		}
	}

	private bool ShouldInsertDummyItem()
	{
		bool flag = Items.Count == 0;
		if (!flag && Manager != null && Manager.Customizing)
		{
			flag = true;
			BarItem barItem = null;
			int i = 0;
			for (int count = Items.Count; i < count; i++)
			{
				barItem = Items[i];
				if (barItem != null && barItem.Customizable)
				{
					flag = false;
					break;
				}
			}
		}
		return flag;
	}

	private void InsertItemsOnPopup()
	{
		if (ShouldInsertDummyItem())
		{
			barItems.Add(new StandAloneBarItem());
			return;
		}
		Items.SuspendEvents();
		ExpandListBarItems();
		BarItem barItem = null;
		for (int num = Items.Count - 1; num >= 0; num--)
		{
			BarItem barItem2 = Items[num];
			if (UpdateUIMFCStyle)
			{
				barItem2.PerformUpdateUI();
			}
			bool flag = false;
			if (MenuGridControlBase.ShouldDrawVisible(this, barItem2, Manager != null && Manager.Customizing))
			{
				barItem = barItem2;
				flag = true;
			}
			if (separators[barItem2] != null && barItem != null && !(barItem is SeparatorItem) && (flag || barItem2.Manager == null || barItem2.Manager is MainFrameBarManager))
			{
				SeparatorItem separatorItem = new SeparatorItem();
				separatorItem.Text = "-";
				separatorItem.IsRecentlyUsedItem = barItem.IsRecentlyUsedItem;
				Items.Insert(num, separatorItem);
				barItem = separatorItem;
			}
		}
		if (barItem is SeparatorItem)
		{
			Items.Remove(barItem);
		}
		Items.ResumeEvents(!base.DesignMode);
	}

	public virtual void OnPopup(EventArgs args)
	{
		if (this.Popup != null)
		{
			this.Popup(this, args);
		}
		InsertItemsOnPopup();
		popupOn = true;
	}

	public virtual void OnBeforePopup(CancelEventArgs args)
	{
		if (this.BeforePopup != null)
		{
			this.BeforePopup(this, args);
		}
	}

	internal bool HasChild(BarItem barItem)
	{
		bool flag = Items.IndexOf(barItem) >= 0;
		if (!flag)
		{
			foreach (BarItem item in Items)
			{
				if (item is ParentBarItem parentBarItem && parentBarItem.HasChild(barItem))
				{
					flag = true;
					break;
				}
			}
		}
		return flag;
	}
}
