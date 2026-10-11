using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
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
[TypeConverter(typeof(BarTypeConverter))]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class Bar : Component, IChangeNotifyingItem, IBarItemContainer, IDesignable, ICloneable, ISerializable, IDeserializationCallback
{
	private VisuallyInheritableIntList separatorList;

	private bool suspendSeparatorListUpdate;

	private BarItems barItems;

	private BarStyle barStyle;

	private string barName;

	private Hashtable separators;

	internal BarManager manager;

	private bool allowCustomizing = true;

	private bool allowItemsReorderOnShrunk = true;

	private bool allowHiding = true;

	private ArrayList deserializedItems;

	private int menuItemMergeOrder;

	private bool m_bAllowResizing = true;

	private string m_strCaption;

	[Browsable(false)]
	public virtual BarManager Manager
	{
		get
		{
			return manager;
		}
		set
		{
			if (manager != value)
			{
				manager = value;
			}
		}
	}

	bool IDesignable.DesignMode => DesignMode;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public new bool DesignMode
	{
		get
		{
			if (base.DesignMode)
			{
				return base.DesignMode;
			}
			if (Items != null && Items.Parent != null && Items.Parent != this)
			{
				return Items.Parent.DesignMode;
			}
			return false;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	public IntListDesignTime UpdatedBarItemPositions
	{
		get
		{
			IntListDesignTime result = null;
			if (barItems != null)
			{
				result = barItems.DesignTimeChanges;
			}
			return result;
		}
		set
		{
			ArrayList c = new ArrayList(separatorList);
			Items.DesignTimeChanges = value;
			ReleaseSeparatorList();
			separatorList = CreateSeparatorList();
			InitSeparatorList();
			separatorList.AddRange(c);
			separatorList.ReinitBaseClassCopy();
		}
	}

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

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int SeparatorCount => separators.Keys.Count;

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public VisuallyInheritableIntList SeparatorIndices => separatorList;

	[Localizable(true)]
	[Description("Caption which appears when the tool bar floats and in the customization dialog.")]
	[DefaultValue(null)]
	public virtual string Caption
	{
		get
		{
			return m_strCaption;
		}
		set
		{
			if (value != m_strCaption)
			{
				m_strCaption = value;
				OnCaptionChanged();
			}
		}
	}

	[Localizable(true)]
	[Category("Data")]
	[Description("A unique name for the toolbar.")]
	public virtual string BarName
	{
		get
		{
			return barName;
		}
		set
		{
			if (!(barName != value))
			{
				return;
			}
			if (manager != null && value != "")
			{
				foreach (Bar bar in manager.Bars)
				{
					if (bar != this && bar.BarName == value)
					{
						MessageBox.Show(SR.GetString("DuplicateNameWarning", value));
						return;
					}
				}
			}
			string oldValue = barName;
			barName = value;
			if (m_strCaption == null)
			{
				m_strCaption = barName;
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "BarName", oldValue, barName));
		}
	}

	[DefaultValue(0)]
	[Category("Behavior")]
	[Description("Specifies the merge order for the corresponding menu item in the toolbar list popup menu.")]
	public virtual int MenuItemMergeOrder
	{
		get
		{
			return menuItemMergeOrder;
		}
		set
		{
			menuItemMergeOrder = value;
		}
	}

	[DefaultValue(BarStyle.AllowQuickCustomizing | BarStyle.Visible | BarStyle.DrawDragBorder)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Behavior")]
	[Description("Specifies the Bar's Style.")]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	public virtual BarStyle BarStyle
	{
		get
		{
			return barStyle;
		}
		set
		{
			if (Manager != null && Manager is MainFrameBarManager && ((MainFrameBarManager)Manager).ThemesEnabled && (value & BarStyle.RotateWhenVertical) <= BarStyle.None)
			{
				value |= BarStyle.RotateWhenVertical;
			}
			if (this.barStyle != value)
			{
				BarStyle barStyle = value;
				this.barStyle = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "BarStyle", barStyle, this.barStyle));
			}
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Specifies whether or not toolbar items can be dragged out and into this Bar during runtime.")]
	public virtual bool AllowCustomizing
	{
		get
		{
			return allowCustomizing;
		}
		set
		{
			if (allowCustomizing != value)
			{
				bool flag = allowCustomizing;
				allowCustomizing = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "AllowCustomizing", flag, allowCustomizing));
			}
		}
	}

	[Description("Specifies if the bar items will be reordered when the toolbar is shrunk to show more bar items.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public virtual bool AllowItemsReorderOnShrunk
	{
		get
		{
			return allowItemsReorderOnShrunk;
		}
		set
		{
			if (allowItemsReorderOnShrunk != value)
			{
				bool flag = allowItemsReorderOnShrunk;
				allowItemsReorderOnShrunk = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "AllowItemsReorderOnShrunk", flag, allowItemsReorderOnShrunk));
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether or not this toolbar can be hidden by the user during runtime.")]
	public virtual bool AllowHiding
	{
		get
		{
			if (allowHiding)
			{
				return (BarStyle & BarStyle.IsMainMenu) <= BarStyle.None;
			}
			return false;
		}
		set
		{
			if (allowHiding != value)
			{
				bool flag = allowHiding;
				allowHiding = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "AllowHiding", flag, allowHiding));
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	[Description("Collection of BarItems, representing the menu items in the toolbar.")]
	[Editor(typeof(CustDlgEditor), typeof(UITypeEditor))]
	public virtual BarItems Items => barItems;

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Gets or sets allow resize bar in floating mode.")]
	public bool AllowResizing
	{
		get
		{
			return m_bAllowResizing;
		}
		set
		{
			if (value != m_bAllowResizing)
			{
				m_bAllowResizing = value;
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	public event PaintEventHandler DrawBackground;

	[Description("Occurs when a Property's value changes in this object.")]
	[Category("Property Changed")]
	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	[Description("Occurs when the Caption value changes in this object.")]
	public event TextChangedEventHandler CaptionChanged;

	[DocumentationExclude]
	[Browsable(false)]
	protected internal virtual bool OnDrawBackground(PaintEventArgs args)
	{
		if (this.DrawBackground != null)
		{
			this.DrawBackground(this, args);
			return true;
		}
		return false;
	}

	protected virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	public Bar()
		: this(null)
	{
	}

	public Bar(BarManager manager)
		: this(manager, "", BarStyle.AllowQuickCustomizing | BarStyle.Visible | BarStyle.DrawDragBorder, null, null)
	{
	}

	public Bar(BarManager manager, int[] separatorIndices)
		: this(manager, "", BarStyle.AllowQuickCustomizing | BarStyle.Visible | BarStyle.DrawDragBorder, null, separatorIndices)
	{
	}

	public Bar(BarManager manager, string barName)
		: this(manager, barName, BarStyle.AllowQuickCustomizing | BarStyle.Visible | BarStyle.DrawDragBorder, null, null)
	{
	}

	public Bar(BarManager manager, string barName, BarStyle barStyle, BarItemsDesignTime barItemsDesignTime, int[] separatorIndices)
	{
		separatorList = CreateSeparatorList();
		this.manager = manager;
		this.barName = barName;
		this.barStyle = barStyle;
		barItems = new BarItems(this);
		if (barItemsDesignTime != null)
		{
			foreach (BarItem item in barItemsDesignTime)
			{
				barItems.Add(item);
			}
		}
		InitSeparatorList();
		barItems.CollectionChanged += OnItemsCollectionChanged;
		separators = new Hashtable();
		suspendSeparatorListUpdate = true;
		if (separatorIndices != null && barItems != null)
		{
			foreach (int num in separatorIndices)
			{
				if (num < barItems.Count)
				{
					BeginGroupAt(barItems[num]);
				}
			}
		}
		suspendSeparatorListUpdate = false;
		UpdateSeparatorIndices();
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
		if (disposing)
		{
			ReleaseSeparatorList();
			if (barItems != null)
			{
				barItems.CollectionChanged -= OnItemsCollectionChanged;
				barItems.Clear();
				barItems = null;
			}
			manager = null;
		}
		base.Dispose(disposing);
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
		if (suspendSeparatorListUpdate)
		{
			return;
		}
		separatorList.SuspendEvents();
		separatorList.Clear();
		int num = -1;
		if (Items != null)
		{
			foreach (BarItem item in Items)
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

	protected virtual void OnItemsCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		SetDirtyOnDesigner();
		if (!(args.Element is BarItem barItem))
		{
			return;
		}
		if (args.Action == CollectionChangeAction.Add)
		{
			if (manager == null || manager.DesignMode)
			{
				return;
			}
			if (!Manager.Initializing)
			{
				manager.CustomizationHelper.ParentItem = this;
			}
			if (barItem.Manager == null && !manager.Items.Contains(barItem))
			{
				if (barItem.CategoryIndex == -1)
				{
					barItem.CategoryIndex = 0;
				}
				barItem.Manager = manager;
			}
			else
			{
				barItem.Manager.MainFrameBarManager?.RecordInsertEx(barItem, overrideInfo: true);
			}
			if (!Manager.Initializing)
			{
				manager.CustomizationHelper.ParentItem = null;
			}
			barItem.OnContainmentChanged(new ContainmentChangedEventArgs(this, inserted: true));
		}
		else
		{
			barItem.OnContainmentChanged(new ContainmentChangedEventArgs(this, inserted: false));
		}
	}

	private void SetDirtyOnDesigner()
	{
		if (manager != null && manager.DesignMode && (manager.GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(manager) is IBarManagerDesigner barManagerDesigner)
		{
			barManagerDesigner.SetDirty();
		}
	}

	[DocumentationExclude]
	public virtual bool ShouldDrawVisible(BarItem item)
	{
		if (Manager != null)
		{
			MainFrameBarManager mainFrameBarManager = Manager.MainFrameBarManager;
			if (mainFrameBarManager != null)
			{
				bool flag = item.Visible | mainFrameBarManager.Customizing;
				if (mainFrameBarManager.Customizing && !mainFrameBarManager.IsItemCustomizable(item))
				{
					flag = false;
				}
				else
				{
					if (!ShouldDrawInactiveItems())
					{
						flag = mainFrameBarManager.ShouldDrawVisible(item);
					}
					if (mainFrameBarManager.IsBarItemVisibilityPrefAvailable(item, this))
					{
						flag = mainFrameBarManager.ShouldDrawVisibleInBar(item, this);
					}
					if (flag && item is MergedParentBarItem)
					{
						MergedParentBarItem mergedParentBarItem = item as MergedParentBarItem;
						if (!mergedParentBarItem.IsAnyChildItemManagerActive())
						{
							flag = false;
						}
					}
				}
				return flag;
			}
		}
		return item.Visible;
	}

	[DocumentationExclude]
	protected virtual bool ShouldDrawInactiveItems()
	{
		return true;
	}

	public void ClearSeparators()
	{
		separators.Clear();
	}

	public void BeginGroupAt(BarItem barItem)
	{
		if (separators[barItem] == null)
		{
			separators[barItem] = 1;
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "SeparatorIndices", null, null));
		}
		UpdateSeparatorIndices();
	}

	public void RemoveGroupAt(BarItem barItem)
	{
		if (separators[barItem] != null)
		{
			separators.Remove(barItem);
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

	public virtual void MergeItems(Bar barSrc)
	{
		if (barSrc == this)
		{
			throw new ArgumentException("Trying to Merge with Self", "barSrc");
		}
		MergeHelper.MergeItems(this, barSrc);
	}

	protected void RaiseCaptionChanged()
	{
		if (this.CaptionChanged != null)
		{
			this.CaptionChanged(this, new TextChangedEventArgs(m_strCaption));
		}
	}

	protected virtual void OnCaptionChanged()
	{
		if (manager is MainFrameBarManager mainFrameBarManager)
		{
			mainFrameBarManager.RecordBarCaption(this, m_strCaption);
		}
		RaiseCaptionChanged();
	}

	internal void LoadBarInfo(BarUpdateInfo updateInfo)
	{
		UpdateType updateType = updateInfo.updateType;
		if (updateType == UpdateType.ModifiedText)
		{
			Caption = updateInfo.updateData as string;
		}
	}

	protected void ResetAllowHiding()
	{
		allowHiding = true;
	}

	protected bool ShouldSerializeAllowHiding()
	{
		if ((BarStyle & BarStyle.IsMainMenu) > BarStyle.None && allowHiding)
		{
			return false;
		}
		if (allowHiding)
		{
			return false;
		}
		return true;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public object Clone()
	{
		Bar bar = new Bar();
		CopyTo(bar);
		return bar;
	}

	public void CopyTo(Bar bar)
	{
		if (!BarManager.preventCopyingItemsInContainers)
		{
			foreach (BarItem item in Items)
			{
				bar.Items.Add(item);
			}
			foreach (int separatorIndex in SeparatorIndices)
			{
				bar.SeparatorIndices.Add(separatorIndex);
			}
		}
		bar.BarName = BarName;
		bar.BarStyle = BarStyle;
		bar.MenuItemMergeOrder = MenuItemMergeOrder;
		bar.Caption = Caption;
	}

	public object Clone(bool copyClones)
	{
		Bar bar = new Bar();
		CopyTo(bar, copyClones);
		return bar;
	}

	public void CopyTo(Bar bar, bool copyClones)
	{
		if (!BarManager.preventCopyingItemsInContainers)
		{
			foreach (BarItem item in Items)
			{
				if (copyClones)
				{
					bar.Items.Add(item.Clone() as BarItem);
				}
				else
				{
					bar.Items.Add(item);
				}
			}
			foreach (int separatorIndex in SeparatorIndices)
			{
				bar.SeparatorIndices.Add(separatorIndex);
			}
		}
		bar.BarName = BarName;
		bar.BarStyle = BarStyle;
		bar.MenuItemMergeOrder = MenuItemMergeOrder;
	}

	protected Bar(SerializationInfo info, StreamingContext context)
		: this()
	{
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
			case "BarName":
				BarName = (string)current.Value;
				break;
			case "BarStyle":
				BarStyle = (BarStyle)current.Value;
				break;
			case "Items":
				deserializedItems = (ArrayList)info.GetValue("Items", typeof(ArrayList));
				break;
			}
		}
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		foreach (BarItem deserializedItem in deserializedItems)
		{
			Items.Add(deserializedItem);
		}
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		ArrayList value = new ArrayList(SeparatorIndices);
		info.AddValue("SeparatorIndices", value);
		info.AddValue("BarName", BarName);
		info.AddValue("BarStyle", BarStyle);
		value = new ArrayList(Items);
		info.AddValue("Items", value);
	}
}
