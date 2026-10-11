using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
public class ComboBoxBarItem : BarItemEx, IRequiresControl, ICloneable, IIgnoreWorkingArea, ISupportInitialize
{
	private bool m_bCloseOnClick = true;

	private bool editable = true;

	private bool autoAppend;

	private StringCollection list;

	private string curText = string.Empty;

	private bool persistTextBoxValue;

	private int minwidth = 50;

	private ListBox listBox;

	private int maxDropDownItems = 8;

	private int dropDownWidth = -1;

	private bool persistAutoAppendList = true;

	private bool deserializingValue;

	private static bool s_isDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;

	private object _value;

	private bool m_bIgnoreWorkingArea;

	object IRequiresControl.Value
	{
		get
		{
			if (_value != null)
			{
				return _value;
			}
			return TextBoxValue;
		}
		set
		{
			_value = value;
			TextBoxValue = ((value != null) ? value.ToString() : string.Empty);
		}
	}

	public override string ID
	{
		get
		{
			return base.ID;
		}
		set
		{
			if (base.ID != value)
			{
				base.ID = value;
				GetTextBoxValue();
			}
		}
	}

	[DefaultValue(50)]
	[Category("Layout")]
	[Description("Minimum width of this item when placed in a menu or toolbar.")]
	[Localizable(true)]
	public virtual int MinWidth
	{
		get
		{
			return minwidth;
		}
		set
		{
			if (minwidth != value)
			{
				minwidth = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "MinWidth", null, null));
			}
		}
	}

	[Description("Gets or sets the maximum number of items to be shown in the drop-down portion of the ComboBoxBarItem.")]
	[DefaultValue(8)]
	[Category("Appearance")]
	public virtual int MaxDropDownItems
	{
		get
		{
			return maxDropDownItems;
		}
		set
		{
			if (value < 1 || value > 100)
			{
				throw new ArgumentException("MaxDropDownItems should be within the range 1 to 100.");
			}
			maxDropDownItems = value;
		}
	}

	[DefaultValue(-1)]
	[Description("Specifies the minimum width of the dropdown.")]
	[Category("Layout")]
	public virtual int MinDropDownWidth
	{
		get
		{
			return dropDownWidth;
		}
		set
		{
			dropDownWidth = value;
		}
	}

	[Description("Indicates whether the DropDown list should close when an item is selected.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public virtual bool CloseOnClick
	{
		get
		{
			return m_bCloseOnClick;
		}
		set
		{
			if (value != m_bCloseOnClick)
			{
				m_bCloseOnClick = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether the user can edit the value in this item with a TextBox.")]
	[Category("Behavior")]
	public bool Editable
	{
		get
		{
			return editable;
		}
		set
		{
			if (editable != value)
			{
				editable = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Editable", null, null));
			}
		}
	}

	[Description("Indicates whether or not to automatically append items\tentered by the user in the TextBox into the drop-down list.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool AutoAppend
	{
		get
		{
			return autoAppend;
		}
		set
		{
			if (autoAppend != value)
			{
				autoAppend = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "AutoAppend", null, null));
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates whether or not to persist autoappend list when autoappend is true")]
	[DefaultValue(true)]
	public bool PersistAutoAppendList
	{
		get
		{
			return persistAutoAppendList;
		}
		set
		{
			persistAutoAppendList = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	[Description("Returns the choice list for the user.")]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	public StringCollection ChoiceList => list;

	[Bindable(BindableSupport.Yes)]
	[DefaultValue("")]
	[Category("Data")]
	[Description("Specifies the value in the TextBox.")]
	public string TextBoxValue
	{
		get
		{
			if (curText == null)
			{
				curText = string.Empty;
			}
			return curText;
		}
		set
		{
			if (!(curText != value))
			{
				return;
			}
			TextBoxValueChangeEventArgs e = new TextBoxValueChangeEventArgs(value);
			OnTextBoxValueChange(e);
			if (!e.Cancel)
			{
				value = e.NewValue;
				string oldValue = curText;
				curText = value;
				_value = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "TextBoxValue", oldValue, value));
				if (!deserializingValue)
				{
					SaveTextBoxValue();
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether or not the TextBoxValue should be persisted when the app. is shutsdown.")]
	[DefaultValue(false)]
	public bool PersistTextBoxValue
	{
		get
		{
			return persistTextBoxValue;
		}
		set
		{
			if (persistTextBoxValue != value)
			{
				persistTextBoxValue = value;
				if (value)
				{
					GetTextBoxValue();
				}
			}
		}
	}

	[DefaultValue(null)]
	[Description("Lets you specify a custom ListBox in the combo's dropdown.")]
	[Category("Data")]
	public ListBox ListBox
	{
		get
		{
			return listBox;
		}
		set
		{
			if (listBox != value)
			{
				ListBox oldValue = listBox;
				listBox = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "ListBox", oldValue, listBox));
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

	[Description("Lets handle the textBox inside the ComboBox.")]
	public event TextBoxBoundEventHandler TextBoxBound;

	[Description("This event optionally lets you customize the listbox before it's drop down.")]
	[Category("Data")]
	public event ComboBoxBarItemInitListBoxEventHandler InitListBox;

	[Description("This event optionally lets TextBoxValue change.")]
	public event TextBoxValueChangeEventHandler TextBoxValueChange;

	[Description("Occurs when combo dropdown is opened.")]
	public event EventHandler DownOpened;

	[Description("Occurs when combo dropdown is closed.")]
	public event EventHandler DownClosed;

	public virtual void OnTextBoxBound(TextBoxBoundEventArgs e)
	{
		if (this.TextBoxBound != null)
		{
			this.TextBoxBound(this, e);
		}
	}

	public void BeginInit()
	{
		OnBeginInit();
	}

	protected virtual void OnBeginInit()
	{
	}

	public void EndInit()
	{
		OnEndInit();
	}

	protected virtual void OnEndInit()
	{
		if (!base.DesignMode && ListBox != null)
		{
			ListBox.Visible = false;
		}
	}

	public ComboBoxBarItem()
	{
		Init();
	}

	private void Init()
	{
		list = new StringCollection();
	}

	private void SaveTextBoxValue()
	{
		if (PersistTextBoxValue && !base.DesignMode && !s_isDevEnv)
		{
			BarItemID barItemID = new BarItemID(ID, (Manager != null) ? BarManager.GetFormTypeName(Manager) : string.Empty);
			AppStateSerializer.GetSingleton().SerializeObject(barItemID.ToString(), TextBoxValue);
		}
	}

	private void GetTextBoxValue()
	{
		if (!PersistTextBoxValue || base.DesignMode || s_isDevEnv)
		{
			return;
		}
		BarItemID barItemID = new BarItemID(ID, (Manager != null) ? BarManager.GetFormTypeName(Manager) : string.Empty);
		deserializingValue = true;
		try
		{
			object obj = AppStateSerializer.GetSingleton().DeserializeObject(barItemID.ToString());
			if (obj != null && obj is string)
			{
				TextBoxValue = (string)obj;
			}
		}
		finally
		{
			deserializingValue = false;
		}
	}

	public virtual void OnInitListBox(ComboBoxBarItemInitListBoxEventArgs e)
	{
		if (this.InitListBox != null)
		{
			this.InitListBox(this, e);
		}
	}

	public virtual void OnTextBoxValueChange(TextBoxValueChangeEventArgs e)
	{
		if (this.TextBoxValueChange != null)
		{
			BarManager manager = Manager;
			if (manager != null)
			{
				MessageFilterEntryHelper.Suspend(manager.Form);
			}
			this.TextBoxValueChange(this, e);
			if (manager != null)
			{
				MessageFilterEntryHelper.Resume(manager.Form);
			}
		}
	}

	protected ComboBoxBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "MinWidth":
				if (current.Value is string)
				{
					MinWidth = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					MinWidth = (int)current.Value;
				}
				break;
			case "Editable":
				if (current.Value is string)
				{
					Editable = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					Editable = (bool)current.Value;
				}
				break;
			case "AutoAppend":
				if (current.Value is string)
				{
					AutoAppend = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					AutoAppend = (bool)current.Value;
				}
				break;
			case "ChoiceList":
			{
				StringCollection stringCollection = (StringCollection)current.Value;
				StringEnumerator enumerator2 = stringCollection.GetEnumerator();
				try
				{
					while (enumerator2.MoveNext())
					{
						string current2 = enumerator2.Current;
						ChoiceList.Add(current2);
					}
				}
				finally
				{
					if (enumerator2 is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				break;
			}
			case "TextBoxValue":
				TextBoxValue = (string)current.Value;
				break;
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue("MinWidth", MinWidth);
		info.AddValue("Editable", Editable);
		info.AddValue("AutoAppend", AutoAppend);
		info.AddValue("ChoiceList", ChoiceList);
		info.AddValue("TextBoxValue", TextBoxValue);
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		ComboBoxBarItem comboBoxBarItem = new ComboBoxBarItem();
		CopyTo(comboBoxBarItem);
		return comboBoxBarItem;
	}

	public override void CopyTo(BarItem barItem)
	{
		if (!(barItem is ComboBoxBarItem))
		{
			throw new ArgumentException("barItem should be of type ComboBoxBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		ComboBoxBarItem comboBoxBarItem = barItem as ComboBoxBarItem;
		comboBoxBarItem.MinWidth = MinWidth;
		comboBoxBarItem.Editable = Editable;
		comboBoxBarItem.AutoAppend = AutoAppend;
		StringEnumerator enumerator = ChoiceList.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				comboBoxBarItem.ChoiceList.Add(current);
			}
		}
		finally
		{
			if (enumerator is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		comboBoxBarItem.TextBoxValue = TextBoxValue;
	}

	internal void OnDropDownOpened()
	{
		if (this.DownOpened != null)
		{
			this.DownOpened(this, EventArgs.Empty);
		}
	}

	internal void OnDropDownClosed()
	{
		if (this.DownClosed != null)
		{
			this.DownClosed(this, EventArgs.Empty);
		}
	}
}
