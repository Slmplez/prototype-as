using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class ComboBoxBaseDataBound : ComboBoxBase
{
	private sealed class ItemComparer : IComparer
	{
		private ComboBoxBaseDataBound comboBox;

		public ItemComparer(ComboBoxBaseDataBound comboBox)
		{
			this.comboBox = comboBox;
		}

		public int Compare(object item1, object item2)
		{
			if (item1 == null)
			{
				if (item2 == null)
				{
					return 0;
				}
				return -1;
			}
			if (item2 == null)
			{
				return 1;
			}
			string itemText = comboBox.GetItemText(item1);
			string itemText2 = comboBox.GetItemText(item2);
			CompareInfo compareInfo = Application.CurrentCulture.CompareInfo;
			return compareInfo.Compare(itemText, itemText2, CompareOptions.StringSort);
		}
	}

	public enum CollectionChangeOperation
	{
		RemoveAt,
		Remove,
		Insert,
		Clear,
		SetItem,
		Add,
		AddRange
	}

	internal class CollectionChangeEventArgs : EventArgs
	{
		private CollectionChangeOperation m_operation;

		private int m_index;

		private object m_item;

		public CollectionChangeOperation Operation => m_operation;

		public int Index => m_index;

		public object Item => m_item;

		public CollectionChangeEventArgs(CollectionChangeOperation operation, int index, object item)
		{
			m_operation = operation;
			m_index = index;
			m_item = item;
		}
	}

	internal delegate void CollectionChangeEventHandler(object sender, CollectionChangeEventArgs args);

	[ListBindable(false)]
	public class ObjectCollection : IList, ICollection, IEnumerable, IDisposable
	{
		private ComboBoxBaseDataBound owner;

		private ArrayList innerList;

		private IComparer comparer;

		public virtual int Count => InnerList.Count;

		public virtual bool IsReadOnly => false;

		[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
		[Browsable(false)]
		public virtual object this[int index]
		{
			get
			{
				if (InnerList.Count == 0)
				{
					return null;
				}
				if (index < 0 || index >= InnerList.Count)
				{
					throw new ArgumentOutOfRangeException(SR.GetString("InvalidArgument", "index", index.ToString()));
				}
				return InnerList[index];
			}
			set
			{
				owner.CheckNoDataSource();
				SetItemInternal(index, value);
			}
		}

		bool IList.IsFixedSize => false;

		bool ICollection.IsSynchronized => false;

		object ICollection.SyncRoot => this;

		private IComparer Comparer
		{
			get
			{
				if (comparer == null)
				{
					comparer = new ItemComparer(owner);
				}
				return comparer;
			}
		}

		private ArrayList InnerList
		{
			get
			{
				if (innerList == null)
				{
					innerList = new ArrayList();
				}
				return innerList;
			}
		}

		internal event CollectionChangeEventHandler CollectionChange;

		public ObjectCollection(ComboBoxBaseDataBound owner)
		{
			this.owner = owner;
		}

		protected void OnCollectionChange(CollectionChangeOperation operation, int index, object item)
		{
			if (this.CollectionChange != null)
			{
				this.CollectionChange(this, new CollectionChangeEventArgs(operation, index, item));
			}
		}

		public virtual IEnumerator GetEnumerator()
		{
			return InnerList.GetEnumerator();
		}

		public virtual void RemoveAt(int index)
		{
			owner.CheckNoDataSource();
			if (index < 0 || index >= InnerList.Count)
			{
				throw new ArgumentOutOfRangeException(SR.GetString("InvalidArgument", "index", index.ToString()));
			}
			owner.NativeRemoveAt(index);
			InnerList.RemoveAt(index);
			owner.UpdateText(fireEvent: true);
			OnCollectionChange(CollectionChangeOperation.RemoveAt, index, null);
		}

		public virtual void Remove(object value)
		{
			int num = InnerList.IndexOf(value);
			if (num != -1)
			{
				RemoveAt(num);
				OnCollectionChange(CollectionChangeOperation.Remove, num, value);
			}
		}

		public virtual void Insert(int index, object item)
		{
			owner.CheckNoDataSource();
			if (item == null)
			{
				throw new ArgumentNullException("item");
			}
			if (index < 0 || index > InnerList.Count)
			{
				throw new ArgumentOutOfRangeException(SR.GetString("InvalidArgument", "index", index.ToString()));
			}
			if (owner.sorted)
			{
				Add(item);
				return;
			}
			InnerList.Insert(index, item);
			bool flag = false;
			try
			{
				owner.NativeInsert(index, item);
				flag = true;
			}
			finally
			{
				if (!flag)
				{
					InnerList.RemoveAt(index);
				}
			}
			OnCollectionChange(CollectionChangeOperation.Insert, index, item);
		}

		public virtual int IndexOf(object value)
		{
			if (value == null)
			{
				throw new ArgumentNullException(SR.GetString("InvalidArgument", "value", "null"));
			}
			return InnerList.IndexOf(value);
		}

		public virtual void Clear()
		{
			owner.CheckNoDataSource();
			ClearInternal();
		}

		public virtual bool Contains(object value)
		{
			return IndexOf(value) != -1;
		}

		void ICollection.CopyTo(Array dest, int index)
		{
			InnerList.CopyTo(dest, index);
		}

		int IList.Add(object item)
		{
			return Add(item);
		}

		public int Add(object item)
		{
			owner.CheckNoDataSource();
			if (item == null)
			{
				throw new ArgumentNullException("item");
			}
			InnerList.Add(item);
			int num = -1;
			bool flag = false;
			try
			{
				if (owner.sorted)
				{
					InnerList.Sort(Comparer);
					num = InnerList.IndexOf(item);
					owner.NativeInsert(num, item);
				}
				else
				{
					num = InnerList.Count - 1;
					owner.NativeAdd(item);
				}
				flag = true;
			}
			finally
			{
				if (!flag)
				{
					InnerList.Remove(item);
				}
			}
			OnCollectionChange(CollectionChangeOperation.Add, num, item);
			return num;
		}

		public void AddRange(object[] items)
		{
			owner.CheckNoDataSource();
			AddRangeInternal(items);
		}

		internal void AddRangeInternal(IList items)
		{
			if (items == null)
			{
				throw new ArgumentNullException("items");
			}
			if (owner.sorted)
			{
				{
					IEnumerator enumerator = items.GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							if (enumerator.Current == null)
							{
								throw new ArgumentNullException("item");
							}
						}
					}
					catch (Exception ex)
					{
						_ = ex.Message;
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
				InnerList.AddRange(items);
				InnerList.Sort(Comparer);
				Exception ex2 = null;
				object[] array = new object[checked((uint)items.Count)];
				items.CopyTo(array, 0);
				Array.Sort(array, Comparer);
				foreach (object obj in array)
				{
					if (ex2 == null)
					{
						try
						{
							int index = InnerList.IndexOf(obj);
							owner.NativeInsert(index, obj);
						}
						catch (Exception ex3)
						{
							ex2 = ex3;
							InnerList.Remove(obj);
						}
					}
					else
					{
						InnerList.Remove(obj);
					}
				}
				if (ex2 != null)
				{
					throw ex2;
				}
				return;
			}
			IEnumerator enumerator2 = items.GetEnumerator();
			try
			{
				while (enumerator2.MoveNext())
				{
					if (enumerator2.Current == null)
					{
						throw new ArgumentNullException("item");
					}
				}
			}
			catch (Exception ex4)
			{
				_ = ex4.Message;
			}
			finally
			{
				IDisposable disposable2 = enumerator2 as IDisposable;
				if (disposable2 != null)
				{
					disposable2.Dispose();
				}
			}
			InnerList.AddRange(items);
			Exception ex5 = null;
			foreach (object item in items)
			{
				if (ex5 == null)
				{
					try
					{
						owner.NativeAdd(item);
					}
					catch (Exception ex6)
					{
						ex5 = ex6;
						InnerList.Remove(item);
					}
				}
				else
				{
					InnerList.Remove(item);
				}
			}
			if (ex5 != null)
			{
				throw ex5;
			}
			OnCollectionChange(CollectionChangeOperation.AddRange, 0, items);
		}

		internal void ClearInternal()
		{
			InnerList.Clear();
			owner.NativeClear();
			owner.SelectedIndex = -1;
			OnCollectionChange(CollectionChangeOperation.Clear, 0, null);
		}

		public void CopyTo(object[] dest, int arrayIndex)
		{
			InnerList.CopyTo(dest, arrayIndex);
		}

		internal void SetItemInternal(int index, object value)
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			if (index < 0 || index >= InnerList.Count)
			{
				throw new ArgumentOutOfRangeException(SR.GetString("InvalidArgument", "index", index.ToString()));
			}
			InnerList[index] = value;
			bool flag = index == owner.SelectedIndex;
			owner.NativeRemoveAt(index);
			owner.NativeInsert(index, value);
			if (flag)
			{
				owner.SelectedIndex = index;
			}
			OnCollectionChange(CollectionChangeOperation.SetItem, index, value);
		}

		void IDisposable.Dispose()
		{
			owner = null;
		}
	}

	private object dataSource;

	private CurrencyManager dataManager;

	private BindingMemberInfo displayMember;

	private BindingMemberInfo valueMember;

	private int maxDropDownItems = 8;

	private bool integralHeight = true;

	private bool sorted;

	private ObjectCollection itemsCollection;

	private bool internalItemsChange;

	private int oldSelectedIndex = -1;

	private bool m_bAllowNewText = true;

	private int sIndex = -1;

	private bool m_bSuspendSelectedIndexRising;

	[Browsable(false)]
	public override ListControl ListControl
	{
		get
		{
			if (base.ListControl == null)
			{
				ListControl = CreateListControl();
				InitListControl(ListControl);
			}
			return base.ListControl;
		}
		set
		{
			if (base.ListControl != value)
			{
				base.ListControl = value;
				base.ListControl.Font = Font;
			}
		}
	}

	[SRCategory("Behavior")]
	[Description("Controls whether items in the list portion are sorted.")]
	[DefaultValue(false)]
	public bool Sorted
	{
		get
		{
			return sorted;
		}
		set
		{
			if (sorted != value && sorted != value)
			{
				if (DataSource != null && value)
				{
					throw new ArgumentException("ComboBox cannot be sorted with a DataSource.");
				}
				sorted = value;
				RefreshItems();
				SelectedIndex = -1;
			}
		}
	}

	[Description("Indicates whether the list portion can contain only complete items.")]
	[SRCategory("Behavior")]
	[DefaultValue(true)]
	[Localizable(true)]
	public virtual bool IntegralHeight
	{
		get
		{
			return integralHeight;
		}
		set
		{
			if (integralHeight != value)
			{
				integralHeight = value;
				SetNeedLayout(needLayout: true);
			}
		}
	}

	[Localizable(true)]
	[DefaultValue(8)]
	[Description("The maximum number of entries to display in the drop-down list.")]
	[SRCategory("Behavior")]
	public int MaxDropDownItems
	{
		get
		{
			return maxDropDownItems;
		}
		set
		{
			maxDropDownItems = value;
		}
	}

	[SRCategory("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The items in the combo box.")]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[Localizable(true)]
	public virtual ObjectCollection Items
	{
		get
		{
			if (itemsCollection == null)
			{
				itemsCollection = new ObjectCollection(this);
			}
			return itemsCollection;
		}
	}

	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	[Description("Indicates the list that this control will use to get its items.")]
	[SRCategory("Data")]
	[DefaultValue(null)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public object DataSource
	{
		get
		{
			return dataSource;
		}
		set
		{
			if (value != null && !(value is IList) && !(value is IListSource))
			{
				throw new Exception("Bad DataSource for ComplexBinding while setting DataSource in ComboBoxBaseDataBound.");
			}
			if (dataSource != value)
			{
				int selectedIndex = SelectedIndex;
				try
				{
					m_bSuspendSelectedIndexRising = true;
					SetDataConnection(value, displayMember, force: false);
					m_bSuspendSelectedIndexRising = false;
				}
				catch (Exception)
				{
					DisplayMember = string.Empty;
				}
				if (value == null)
				{
					DisplayMember = string.Empty;
				}
				if (selectedIndex != SelectedIndex)
				{
					OnSelectedItemChanged(EventArgs.Empty);
					OnSelectedIndexChanged(EventArgs.Empty);
				}
			}
		}
	}

	[DefaultValue("")]
	[SRCategory("Data")]
	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[TypeConverter("System.Windows.Forms.Design.DataMemberFieldConverter, System.Design")]
	[Description("Indicates the property to display for the items in this control.")]
	public string DisplayMember
	{
		get
		{
			return displayMember.BindingMember;
		}
		set
		{
			BindingMemberInfo bindingMemberInfo = displayMember;
			try
			{
				m_bSuspendSelectedIndexRising = true;
				SetDataConnection(dataSource, new BindingMemberInfo(value), force: false);
				m_bSuspendSelectedIndexRising = false;
			}
			catch (Exception)
			{
				displayMember = bindingMemberInfo;
			}
		}
	}

	[Description("Controls whether new items can be input in TextBox.")]
	[SRCategory("Behavior")]
	[DefaultValue(true)]
	public bool AllowNewText
	{
		get
		{
			return m_bAllowNewText;
		}
		set
		{
			if (m_bAllowNewText != value)
			{
				m_bAllowNewText = value;
			}
		}
	}

	[Description("Gets or sets the zero-based index of the currently selected item.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual int SelectedIndex
	{
		get
		{
			if (ListControl != null)
			{
				return ListControl.SelectedIndex;
			}
			return -1;
		}
		set
		{
			if (SelectedIndex == value)
			{
				return;
			}
			SelectedIndexChangingArgs selectedIndexChangingArgs = new SelectedIndexChangingArgs(SelectedIndex, value);
			OnSelectedIndexChanging(selectedIndexChangingArgs);
			if (selectedIndexChangingArgs.Cancel)
			{
				return;
			}
			bool flag = false;
			if (base.PopupContainer != null && base.PopupContainer.IsShowing() && GetIndexFromPoint(Control.MousePosition) != -1 && value == -1 && oldSelectedIndex == -1)
			{
				flag = true;
			}
			if (ListControl != null)
			{
				ListControl.SelectedIndex = value;
				if (base.DropDownStyle == ComboBoxStyle.DropDownList)
				{
					base.TextBox.Text = ListControl.Text;
				}
			}
			if (!m_bSuspendSelectedIndexRising && !flag)
			{
				OnSelectedItemChanged(EventArgs.Empty);
				OnSelectedIndexChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[Bindable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The currently selected item in the combo box, or null.")]
	public object SelectedItem
	{
		get
		{
			if (SelectedIndex != -1)
			{
				return Items[SelectedIndex];
			}
			return null;
		}
		set
		{
			int num = -1;
			if (value != null)
			{
				num = Items.IndexOf(value);
			}
			else
			{
				SelectedIndex = -1;
			}
			if (num != -1)
			{
				SelectedIndex = num;
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates the actual value of the currently selected item.  Setting it will cause the item who's actual value is equal to become selected.")]
	[SRCategory("Data")]
	[Bindable(true)]
	public object SelectedValue
	{
		get
		{
			if (SelectedIndex != -1 && dataManager != null)
			{
				object item = Items[SelectedIndex];
				return FilterItemOnProperty(item, valueMember.BindingField);
			}
			return null;
		}
		set
		{
			if (dataManager != null)
			{
				string bindingField = valueMember.BindingField;
				if (bindingField == string.Empty)
				{
					throw new Exception("Empty ValueMember encountered while setting SelectedValue property in ComboBoxBaseDataBound.");
				}
				PropertyDescriptorCollection itemProperties = dataManager.GetItemProperties();
				PropertyDescriptor property = itemProperties.Find(bindingField, ignoreCase: true);
				int selectedIndex = Find(dataManager, property, value, keepIndex: true);
				SelectedIndex = selectedIndex;
				if (value is DBNull)
				{
					base.TextBox.Clear();
				}
			}
		}
	}

	[Localizable(true)]
	[Bindable(true)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
			if (base.DesignMode || !base.IsHandleCreated)
			{
				return;
			}
			if (value == null)
			{
				SelectedIndex = -1;
			}
			else
			{
				if (value == null || (SelectedItem != null && string.Compare(value, FilterItemOnProperty(SelectedIndex).ToString(), ignoreCase: false, CultureInfo.CurrentCulture) == 0))
				{
					return;
				}
				int num = FindStringExact(value, ignoreCase: false);
				if (num > 0)
				{
					SelectedIndex = num;
					return;
				}
				num = FindStringExact(value, ignoreCase: true);
				if (num > 0)
				{
					SelectedIndex = num;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The selected text in the edit component of the combo box.")]
	public string SelectedText
	{
		get
		{
			if (base.DropDownStyle == ComboBoxStyle.DropDownList)
			{
				return string.Empty;
			}
			return base.TextBox.SelectedText;
		}
		set
		{
			if (base.TextBox != null)
			{
				base.TextBox.SelectedText = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The length of the selected text in the edit of the combo box.")]
	[Browsable(false)]
	public int SelectionLength
	{
		get
		{
			if (base.DropDownStyle == ComboBoxStyle.DropDownList)
			{
				return 0;
			}
			return base.TextBox.SelectionLength;
		}
		set
		{
			if (base.TextBox.Visible)
			{
				base.TextBox.SelectionLength = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[SRDescription("The index of the first character in the selected text.")]
	public int SelectionStart
	{
		get
		{
			if (base.DropDownStyle == ComboBoxStyle.DropDownList)
			{
				return 0;
			}
			return base.TextBox.SelectionStart;
		}
		set
		{
			if (base.TextBox.Visible)
			{
				base.TextBox.SelectionStart = value;
			}
		}
	}

	[SRCategory("Data")]
	[DefaultValue("")]
	[Description("Indicates the property to use as the actual value for the items in the control.")]
	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	public string ValueMember
	{
		get
		{
			return valueMember.BindingMember;
		}
		set
		{
			if (value == null)
			{
				value = string.Empty;
			}
			BindingMemberInfo bindingMemberInfo = new BindingMemberInfo(value);
			if (!bindingMemberInfo.Equals(valueMember))
			{
				if (DisplayMember.Length == 0)
				{
					SetDataConnection(DataSource, bindingMemberInfo, force: false);
				}
				if (dataManager != null && string.Empty != value && !BindingMemberInfoInDataManager(bindingMemberInfo))
				{
					throw new ArgumentException("Wrong ValueMember specified in ComboBoxBaseDataBound", "value");
				}
				valueMember = bindingMemberInfo;
				OnValueMemberChanged(EventArgs.Empty);
				OnSelectedValueChanged(EventArgs.Empty);
			}
		}
	}

	public override ComboFlatStyle FlatStyle
	{
		get
		{
			return base.FlatStyle;
		}
		set
		{
			if (base.FlatStyle != value)
			{
				base.FlatStyle = value;
				UpdateListBoxBorderStyle();
			}
		}
	}

	protected CurrencyManager DataManager => dataManager;

	internal bool BindingFieldEmpty
	{
		get
		{
			if (displayMember.BindingField.Length <= 0)
			{
				return true;
			}
			return false;
		}
	}

	[Description("Occurs whenever the 'SelectedIndex' property for this control changes.")]
	[SRCategory("Behavior")]
	public event EventHandler SelectedIndexChanged;

	[Description("Event fired when the value of DataSource property is changed.")]
	[SRCategory("Property Changed")]
	public event EventHandler DataSourceChanged;

	[SRCategory("Property Changed")]
	[Description("Event fired when the value of DisplayMember property is changed.")]
	public event EventHandler DisplayMemberChanged;

	[Description("Event fired when the value of ValueMember property is changed.")]
	[SRCategory("Property Changed")]
	public event EventHandler ValueMemberChanged;

	[Description("Event fired when the value of SelectedValue property is changed.")]
	[SRCategory("Behavior")]
	public event EventHandler SelectedValueChanged;

	public ComboBoxBaseDataBound()
	{
		Init();
	}

	private void Init()
	{
		if (ListControl == null)
		{
			ListControl = CreateListControl();
			InitListControl(ListControl);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (dataManager != null)
			{
				dataManager.ItemChanged -= DataManager_ItemChanged;
				dataManager.PositionChanged -= DataManager_PositionChanged;
			}
			if (dataSource is IComponent)
			{
				((IComponent)dataSource).Disposed -= DataSourceDisposed;
			}
			dataManager = null;
			dataSource = null;
			if (itemsCollection != null)
			{
				((IDisposable)itemsCollection).Dispose();
				itemsCollection = null;
			}
		}
		base.Dispose(disposing);
	}

	protected abstract ListControl CreateListControl();

	[DocumentationExclude]
	protected virtual void InitListControl(ListControl listControl)
	{
		UpdateListBoxBorderStyle();
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		if (base.Disposing)
		{
			ListControl.SelectedIndex = -1;
		}
		base.OnHandleDestroyed(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		if (ListControl != null)
		{
			ListControl.Font = Font;
		}
		base.OnFontChanged(e);
	}

	internal int Find(CurrencyManager dataManager, PropertyDescriptor property, object key, bool keepIndex)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		if (property != null && this.dataManager.List is IBindingList && ((IBindingList)this.dataManager.List).SupportsSearching)
		{
			return ((IBindingList)this.dataManager.List).Find(property, key);
		}
		for (int i = 0; i < this.dataManager.List.Count; i++)
		{
			object value = property.GetValue(this.dataManager.List[i]);
			if (key.Equals(value))
			{
				return i;
			}
		}
		return -1;
	}

	protected virtual void AddItemsCore(object[] value)
	{
		if (value != null && value.Length != 0)
		{
			Items.AddRange(value);
		}
	}

	private void CheckNoDataSource()
	{
		if (!internalItemsChange && DataSource != null)
		{
			throw new ArgumentException("DataSource lacks Items in ComboBoxBaseDataBound");
		}
	}

	public abstract int FindString(string s);

	public abstract int FindString(string s, int startIndex);

	public abstract int FindStringExact(string s);

	public abstract int FindStringExact(string s, int startIndex);

	public abstract int FindStringExact(string text, bool ignoreCase);

	protected override void OnDropDownStyleChanged(EventArgs e)
	{
		UpdateListBoxBorderStyle();
		base.OnDropDownStyleChanged(e);
	}

	[DocumentationExclude]
	protected virtual void UpdateListBoxBorderStyle()
	{
	}

	protected override void DetermineHeightsBasedOnFont(Graphics g, ref int textAreaHeight)
	{
		base.DetermineHeightsBasedOnFont(g, ref textAreaHeight);
		if (IntegralHeight && base.DropDownStyle == ComboBoxStyle.Simple)
		{
			Rectangle embeddedChildBounds = GetEmbeddedChildBounds();
			_ = base.Height;
			ListControl.Height = embeddedChildBounds.Height;
			if (ListControl.Height != embeddedChildBounds.Height)
			{
				int num = embeddedChildBounds.Height - ListControl.Height;
				base.PreventHeightChange = false;
				base.Height -= num;
			}
		}
	}

	protected virtual int GetListNCHeight()
	{
		return ListControl.Height - ListControl.ClientSize.Height;
	}

	protected override void OnListSelectedValueChangedWhileNotShowingPopup(int newIndex)
	{
		base.OnListSelectedValueChangedWhileNotShowingPopup(newIndex);
		OnSelectedIndexChanged(EventArgs.Empty);
	}

	protected override void OnSelectionChangedOnPopupClose()
	{
		base.OnSelectionChangedOnPopupClose();
		OnSelectedIndexChanged(EventArgs.Empty);
	}

	protected override void OnSelectionChangedByKey()
	{
		base.OnSelectionChangedByKey();
		OnSelectedIndexChanged(EventArgs.Empty);
	}

	protected override void OnUpdateSelectionBeforeValidate()
	{
		int selectedIndex = ListControl.SelectedIndex;
		base.OnUpdateSelectionBeforeValidate();
		if (selectedIndex != ListControl.SelectedIndex)
		{
			OnSelectedIndexChanged(EventArgs.Empty);
		}
	}

	protected override bool OnNewListItemKeyedIn(int indexFound)
	{
		if (SelectedIndex != indexFound)
		{
			SelectedIndex = indexFound;
		}
		return true;
	}

	protected override void OnTextBoxKeyUp(KeyEventArgs e)
	{
		if ((e.KeyCode == Keys.Delete || e.KeyCode == Keys.Back) && PopupControl != null && base.DropDownStyle != ComboBoxStyle.DropDownList)
		{
			ResetList();
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		IList listControlList = GetListControlList();
		if (ListControl != null)
		{
			int num = 0;
			num = ((CharacterCasing != CharacterCasing.Normal) ? FindItem(base.TextBox.Text, select: false, -1, ignoreCase: true) : FindItem(base.TextBox.Text, select: false, -1, ignoreCase: false));
			if (num != -1)
			{
				for (int i = num; i < listControlList.Count; i++)
				{
					string text = ListControl.GetItemText(listControlList[i]);
					if (text.Length > base.TextBox.Text.Length)
					{
						num = -1;
						continue;
					}
					if (CharacterCasing == CharacterCasing.Upper)
					{
						text = text.ToUpper();
					}
					else if (CharacterCasing == CharacterCasing.Lower)
					{
						text = text.ToLower();
					}
					if (text == base.TextBox.Text && i == ListControl.SelectedIndex)
					{
						num = i;
						break;
					}
				}
			}
			if (IsValidIndex(num) && IsValidIndex(m_lastFoundIndex) && num != m_lastFoundIndex && ListControl.GetItemText(listControlList[num]) == ListControl.GetItemText(listControlList[m_lastFoundIndex]))
			{
				num = m_lastFoundIndex;
			}
			if (AllowNewText || num != -1)
			{
				SelectedIndex = num;
			}
		}
		base.OnTextChanged(e);
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		autoCompleteSuccess = false;
		base.OnKeyPress(e);
		if (PopupControl != null && base.DropDownStyle != ComboBoxStyle.DropDownList && !base.PopupContainer.IsShowing() && !autoCompleteSuccess)
		{
			ResetList();
		}
	}

	private void ResetList()
	{
		bool flag = base.IgnorePopupValueChange;
		base.IgnorePopupValueChange = true;
		SetPopupText(string.Empty);
		base.IgnorePopupValueChange = flag;
	}

	public override bool PerformAllowNewText(Message m)
	{
		if (AllowNewText)
		{
			return false;
		}
		string text = null;
		string strAfterDel = null;
		int selectionStart = base.TextBox.SelectionStart;
		int selectionLength = base.TextBox.SelectionLength;
		if (selectionLength != 0)
		{
			strAfterDel = base.TextBox.Text.Substring(0, selectionStart) + base.TextBox.Text.Substring(selectionStart + selectionLength, base.TextBox.Text.Length - (selectionStart + selectionLength));
		}
		if (m.Msg == 256 && m.WParam.ToInt32() == 46)
		{
			if (selectionLength == 0 && selectionStart != base.TextBox.Text.Length)
			{
				strAfterDel = base.TextBox.Text.Remove(selectionStart, 1);
			}
			if (PerformShowPopUpAfterDel(strAfterDel))
			{
				return true;
			}
		}
		if (m.Msg == 258)
		{
			char c = (char)(int)m.WParam;
			if (char.IsLetterOrDigit(c) || char.IsSymbol(c) || char.IsSeparator(c) || char.IsPunctuation(c))
			{
				text = c.ToString();
			}
			else if (m.WParam.ToInt32() == 8)
			{
				if (selectionLength == 0 && selectionStart >= 1)
				{
					strAfterDel = base.TextBox.Text.Remove(selectionStart - 1, 1);
				}
				if (PerformShowPopUpAfterDel(strAfterDel))
				{
					return true;
				}
			}
		}
		else if (m.Msg == 770)
		{
			IDataObject dataObject = Clipboard.GetDataObject();
			if (dataObject.GetDataPresent(DataFormats.Text))
			{
				text = (string)dataObject.GetData(DataFormats.Text);
			}
		}
		else if (m.Msg == 768 && PerformShowPopUpAfterDel(strAfterDel))
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(base.TextBox.Handle, 769, 0, 0);
			return true;
		}
		if (text == null || text == string.Empty)
		{
			return false;
		}
		if (DisplayMember == ListControl.DisplayMember)
		{
			int selectionStart2 = base.TextBox.SelectionStart;
			int selectionLength2 = base.TextBox.SelectionLength;
			string prefix = base.TextBox.Text.Substring(0, selectionStart2) + text + base.TextBox.Text.Substring(selectionStart2 + selectionLength2, base.TextBox.Text.Length - (selectionStart2 + selectionLength2));
			bool ignoreCase = CharacterCasing != CharacterCasing.Normal || !base.CaseSensitiveAutocomplete;
			int num = FindItem(prefix, select: false, -1, ignoreCase);
			if (num == -1)
			{
				if (!base.PopupContainer.IsShowing())
				{
					ShowPopup();
				}
				return true;
			}
		}
		return false;
	}

	private bool PerformShowPopUpAfterDel(string strAfterDel)
	{
		if (base.TextBox.SelectionStart != base.TextBox.Text.Length)
		{
			bool ignoreCase = CharacterCasing != CharacterCasing.Normal;
			if (strAfterDel != string.Empty && FindItem(strAfterDel, select: false, -1, ignoreCase) == -1)
			{
				if (!base.PopupContainer.IsShowing())
				{
					ShowPopup();
				}
				return true;
			}
			if (base.PopupContainer.IsShowing())
			{
				HidePopup();
			}
		}
		else if (base.PopupContainer.IsShowing())
		{
			HidePopup();
		}
		return false;
	}

	protected override void OnPopupClosed(PopupClosedEventArgs e)
	{
		if (ListControl.SelectedIndex == -1 && Text != string.Empty)
		{
			ListControl.SelectedIndex = FindStringExact(Text, -1);
		}
		base.OnPopupClosed(e);
	}

	protected override void SetPopupText(string value)
	{
		if (ListControl == null)
		{
			return;
		}
		if (value == null)
		{
			ListControl.SelectedIndex = -1;
		}
		else if (GetPopupText().CompareTo(value) != 0)
		{
			int num = ListControl.SelectedIndex - 1;
			if (num < -1)
			{
				num = -1;
			}
			ListControl.SelectedIndex = FindStringExact(value, num);
		}
	}

	protected override string GetPopupText()
	{
		object selectedItem = SelectedItem;
		if (selectedItem != null)
		{
			return GetItemText(selectedItem);
		}
		return string.Empty;
	}

	protected override void SetSelectedText(string text, int foundIndex)
	{
		base.SetSelectedText(text, foundIndex);
		if (foundIndex >= 0)
		{
			SelectedIndex = foundIndex;
		}
	}

	private bool BindingMemberInfoInDataManager(BindingMemberInfo bindingMemberInfo)
	{
		if (dataManager == null)
		{
			return false;
		}
		PropertyDescriptorCollection itemProperties = dataManager.GetItemProperties();
		int count = itemProperties.Count;
		bool result = false;
		for (int i = 0; i < count; i++)
		{
			if (!typeof(IList).IsAssignableFrom(itemProperties[i].PropertyType) && itemProperties[i].Name == bindingMemberInfo.BindingField)
			{
				result = true;
				break;
			}
		}
		return result;
	}

	private void DataManager_ItemChanged(object sender, ItemChangedEventArgs e)
	{
		OnDataManagerItemChanged(e.Index);
	}

	[DocumentationExclude]
	private void OnDataManagerItemChanged(int index)
	{
		if (dataManager != null)
		{
			if (index == -1)
			{
				SetItemsCore(dataManager.List);
			}
			else
			{
				SetItemCore(index, dataManager.List[index]);
			}
		}
	}

	private void DataManager_PositionChanged(object sender, EventArgs e)
	{
		OnDataManagerPositionChanged();
	}

	[DocumentationExclude]
	protected abstract void OnDataManagerPositionChanged();

	private void DataSourceDisposed(object sender, EventArgs e)
	{
		SetDataConnection(null, new BindingMemberInfo(string.Empty), force: true);
	}

	protected object FilterItemOnProperty(object item)
	{
		return FilterItemOnProperty(item, displayMember.BindingField);
	}

	protected object FilterItemOnProperty(object item, string field)
	{
		if (item != null && field.Length > 0)
		{
			try
			{
				PropertyDescriptor propertyDescriptor = ((dataManager == null) ? TypeDescriptor.GetProperties(item).Find(field, ignoreCase: true) : dataManager.GetItemProperties().Find(field, ignoreCase: true));
				if (propertyDescriptor != null)
				{
					item = propertyDescriptor.GetValue(item);
				}
			}
			catch (Exception)
			{
			}
		}
		return item;
	}

	internal int FindStringInternal(string str, IList items, int startIndex, bool exact)
	{
		if (str == null || items == null)
		{
			return -1;
		}
		if (startIndex < -1 || startIndex >= items.Count - 1)
		{
			return -1;
		}
		bool flag = false;
		int length = str.Length;
		startIndex++;
		if ((!exact) ? (string.Compare(str, 0, GetItemText(items[startIndex]), 0, length, ignoreCase: true, CultureInfo.CurrentCulture) == 0) : (string.Compare(str, GetItemText(items[startIndex]), ignoreCase: true, CultureInfo.CurrentCulture) == 0))
		{
			return startIndex;
		}
		if (startIndex == items.Count - 1)
		{
			startIndex = -1;
		}
		return -1;
	}

	public string GetItemText(object item)
	{
		item = FilterItemOnProperty(item, displayMember.BindingField);
		if (item == null)
		{
			return string.Empty;
		}
		return Convert.ToString(item, CultureInfo.CurrentCulture);
	}

	protected override void OnBindingContextChanged(EventArgs e)
	{
		if (!m_bSuspendSelectedIndexRising)
		{
			m_bSuspendSelectedIndexRising = true;
		}
		if (!initializing && SelectedIndex != -1)
		{
			sIndex = SelectedIndex;
		}
		SetDataConnection(dataSource, displayMember, force: true);
		if (!initializing && sIndex != -1)
		{
			SelectedIndex = sIndex;
			IList listControlList = GetListControlList();
			base.TextBox.Text = GetItemText(listControlList[SelectedIndex]);
		}
		m_bSuspendSelectedIndexRising = false;
		base.OnBindingContextChanged(e);
	}

	protected virtual void OnDataSourceChanged(EventArgs e)
	{
		if (Sorted && DataSource != null && base.Created)
		{
			throw new Exception("Cannot set ComboBoxBaseDataBound's DataSource when Sorted is true.");
		}
		if (this.DataSourceChanged != null)
		{
			this.DataSourceChanged(this, e);
		}
		if (DataSource == null)
		{
			SelectedIndex = -1;
			Items.ClearInternal();
		}
		if (DataSource == null || SelectedIndex == -1)
		{
			UpdateText(fireEvent: false);
		}
	}

	protected virtual void OnDisplayMemberChanged(EventArgs e)
	{
		if (this.DisplayMemberChanged != null)
		{
			this.DisplayMemberChanged(this, e);
		}
	}

	protected virtual void OnSelectedIndexChanged(EventArgs e)
	{
		OnSelectedValueChanged(e);
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, e);
		}
		if (DataManager != null && DataManager.Position != SelectedIndex && SelectedIndex != -1)
		{
			DataManager.Position = SelectedIndex;
		}
		if (ListControl != null)
		{
			oldSelectedIndex = ListControl.SelectedIndex;
		}
	}

	protected virtual void OnSelectedValueChanged(EventArgs e)
	{
		if (this.SelectedValueChanged != null)
		{
			this.SelectedValueChanged(this, e);
		}
	}

	protected virtual void OnSelectedItemChanged(EventArgs e)
	{
	}

	protected virtual void OnValueMemberChanged(EventArgs e)
	{
		if (this.ValueMemberChanged != null)
		{
			this.ValueMemberChanged(this, e);
		}
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		base.OnValidating(e);
	}

	protected override void OnLeave(EventArgs e)
	{
		base.OnLeave(e);
		if (!AllowNewText && Items.Count > 0 && FindStringExact(base.TextBox.Text) == -1)
		{
			Focus();
			if (!base.PopupContainer.IsShowing())
			{
				ShowPopup();
			}
		}
	}

	private void SetDataConnection(object newDataSource, BindingMemberInfo newDisplayMember, bool force)
	{
		bool flag = dataSource != newDataSource;
		bool flag2 = !displayMember.Equals(newDisplayMember);
		if (force || flag || flag2)
		{
			if (dataSource is IComponent)
			{
				((IComponent)dataSource).Disposed -= DataSourceDisposed;
			}
			dataSource = newDataSource;
			displayMember = newDisplayMember;
			if (dataSource is IComponent)
			{
				((IComponent)dataSource).Disposed += DataSourceDisposed;
			}
			CurrencyManager currencyManager = null;
			if (newDataSource != null && BindingContext != null && newDataSource != Convert.DBNull)
			{
				currencyManager = (CurrencyManager)BindingContext[newDataSource, newDisplayMember.BindingPath];
			}
			if (dataManager != currencyManager)
			{
				if (dataManager != null)
				{
					dataManager.ItemChanged -= DataManager_ItemChanged;
					dataManager.PositionChanged -= DataManager_PositionChanged;
				}
				dataManager = currencyManager;
				if (dataManager != null)
				{
					dataManager.ItemChanged += DataManager_ItemChanged;
					dataManager.PositionChanged += DataManager_PositionChanged;
				}
			}
			if (dataManager != null && (flag2 || flag) && string.Empty != displayMember.BindingMember && !BindingMemberInfoInDataManager(displayMember))
			{
				throw new ArgumentException("Wrong DisplayMember specified in ComboBoxBaseDataBound.", "newDisplayMember");
			}
			if (dataManager != null && (flag || flag2 || force))
			{
				OnDataManagerItemChanged(-1);
			}
		}
		if (flag)
		{
			OnDataSourceChanged(EventArgs.Empty);
		}
		if (flag2)
		{
			OnDisplayMemberChanged(EventArgs.Empty);
		}
	}

	protected virtual void SetItemCore(int index, object value)
	{
		internalItemsChange = true;
		Items[index] = value;
		internalItemsChange = false;
	}

	protected virtual void SetItemsCore(IList items)
	{
		internalItemsChange = true;
		Items.ClearInternal();
		Items.AddRangeInternal(items);
		internalItemsChange = false;
		SelectedIndex = dataManager.Position;
	}

	public virtual bool ShouldSerializeText()
	{
		return Text != string.Empty;
	}

	public override string ToString()
	{
		string text = base.ToString();
		return text + ", Items.Count: " + Items.Count;
	}

	private void RefreshItems()
	{
		int selectedIndex = SelectedIndex;
		ObjectCollection objectCollection = itemsCollection;
		itemsCollection = null;
		NativeClear();
		object[] array = null;
		if (DataManager != null && DataManager.Count != -1)
		{
			array = new object[checked((uint)DataManager.Count)];
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = DataManager.List[i];
			}
		}
		else if (objectCollection != null)
		{
			array = new object[objectCollection.Count];
			objectCollection.CopyTo(array, 0);
		}
		if (array != null)
		{
			Items.AddRangeInternal(array);
		}
		if (DataManager != null)
		{
			SelectedIndex = DataManager.Position;
		}
		else
		{
			SelectedIndex = selectedIndex;
		}
	}

	[DocumentationExclude]
	protected virtual void NativeAdd(object item)
	{
		GetListControlList()?.Add(GetItemText(item));
	}

	[DocumentationExclude]
	protected virtual void NativeClear()
	{
		IList listControlList = GetListControlList();
		if (listControlList != null)
		{
			string empty = string.Empty;
			empty = null;
			if (base.DropDownStyle != ComboBoxStyle.DropDownList)
			{
				empty = Text;
			}
			listControlList.Clear();
			if (empty != string.Empty)
			{
				Text = empty;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void NativeInsert(int index, object item)
	{
		GetListControlList()?.Insert(index, GetItemText(item));
	}

	[DocumentationExclude]
	protected virtual void NativeRemoveAt(int index)
	{
		GetListControlList()?.RemoveAt(index);
	}

	protected override bool OtherChangesMade()
	{
		bool flag = base.OtherChangesMade();
		bool result = oldSelectedIndex != ListControl.SelectedIndex;
		if (!flag)
		{
			return result;
		}
		return true;
	}
}
