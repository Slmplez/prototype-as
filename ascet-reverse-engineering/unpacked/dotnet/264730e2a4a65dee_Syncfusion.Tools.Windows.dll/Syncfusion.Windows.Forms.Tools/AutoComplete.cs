using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using Microsoft.Win32;
using Syncfusion.Core.Licensing;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides auto completion capabilities for edit controls")]
[ToolboxBitmap(typeof(AutoComplete), "ToolboxIcons.AutoComplete.bmp")]
[ToolboxItemFilter("System.Windows.Forms")]
[Designer(typeof(AutoCompleteDesigner), typeof(IDesigner))]
[ProvideProperty("AutoComplete", typeof(Control))]
public class AutoComplete : Component, IExtenderProvider, IEditControlsEmbedListener, IDataListViewOwner, IMessageFilter, ISupportInitialize
{
	private class DataSourceConverter : ReferenceConverter
	{
		public DataSourceConverter()
			: base(typeof(IListSource))
		{
		}
	}

	private const int DEF_MAX_KEY_COUNT = 32;

	private const string c_strAUTO_COMPLETE = "AutoComplete";

	private AutoCompleteItem selectedItem;

	private int selectedIndex = -1;

	private string selectedValue = string.Empty;

	private static int nCounter;

	private Container components;

	private Hashtable targetEnabledMap;

	private Hashtable targetComboUpDownMap;

	private Control activeControlObject;

	private string preChangeText;

	private int ignoreChangeMessage;

	private bool ignoreCase;

	private SizablePopupControlContainer dropDownContainer;

	private bool contentChanged;

	private VirtualListView dropDownList;

	private bool autoSerializeValue;

	private bool internalOverrideIgnoreCompletion;

	private AutoCompleteDataColumnInfoCollection columnInfoList;

	private ImageList imageListValue;

	private bool showColumnHeaderValue;

	private AutoCompleteBorderTypes borderType;

	private string categoryName = string.Empty;

	private static int minColumnWidth;

	private bool autoAddItemOnValidate;

	private DataTable tableData;

	private object dataSource;

	private bool controlsInitialized;

	private int preferredHeight;

	private int preferredWidth = -1;

	private bool adjustHeightToItemCount;

	private bool selectionChangeCommitted;

	private AutoCompleteMatchModes matchMode;

	protected bool overrideComboValue;

	private bool inInit;

	private DataView listDataView;

	private string accessibleName;

	private string accessibleDescription;

	private AccessibleRole accessibleRole;

	private Control parentForm;

	private int comboUpDownState;

	private string lastMatchColumnName = string.Empty;

	private bool changeDataManagerPosition;

	private int indexToEnsureVisible = -1;

	private bool singleClick;

	private string currentTextBeingMatched = string.Empty;

	private bool caseSensitiveValue;

	private bool allowListDelete;

	private bool autoSortList = true;

	private RightToLeft targetRightToLeft;

	private bool m_bPersistentDropDownSize;

	private bool bProcess = true;

	private bool bProcessingAutoComplete;

	[Description("Gets or sets the value of the selected item in the AutoComplete control.")]
	[DefaultValue("")]
	public object SelectedValue
	{
		get
		{
			return selectedValue;
		}
		set
		{
			selectedValue = (string)value;
		}
	}

	[DefaultValue(-1)]
	[Description("Sets or retrieves the index of the selected option.")]
	public int SelectedIndex
	{
		get
		{
			return selectedIndex;
		}
		set
		{
			if (selectedIndex != value)
			{
				selectedIndex = value;
				dropDownList.SetSelectedIndex(selectedIndex);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public AutoCompleteItem SelectedItem => selectedItem;

	private int IgnoreChangeMessage
	{
		get
		{
			return ignoreChangeMessage;
		}
		set
		{
			ignoreChangeMessage = value;
		}
	}

	[Description("Indicates whether the dropdown for an AutoComplete enabled control appears in a single click.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool SingleClick
	{
		get
		{
			return singleClick;
		}
		set
		{
			singleClick = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether to allow deletion of items in the list when user pressed Delete Key.")]
	public bool AllowListDelete
	{
		get
		{
			return allowListDelete;
		}
		set
		{
			allowListDelete = value;
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether default sorting is to be performed.")]
	public bool AutoSortList
	{
		get
		{
			return autoSortList;
		}
		set
		{
			autoSortList = value;
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Set to true if you want items to be added to the history automatically when the control's validation event is raised.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool AutoAddItem
	{
		get
		{
			return autoAddItemOnValidate;
		}
		set
		{
			autoAddItemOnValidate = value;
		}
	}

	[Description("The category name under which history items will be persisted. This is also used when to build the history items this control will use.")]
	[Browsable(true)]
	[Category("Data")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public string CategoryName
	{
		get
		{
			return categoryName;
		}
		set
		{
			categoryName = value;
			DeSerializeList();
		}
	}

	[DefaultValue(AutoCompleteBorderTypes.Sizable)]
	[Description("The border type for the popup list displayed when in AutoSuggest Mode")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public AutoCompleteBorderTypes BorderType
	{
		get
		{
			return borderType;
		}
		set
		{
			borderType = value;
		}
	}

	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("The border type for the popup list displayed when in AutoSuggest Mode")]
	[DefaultValue(AutoCompleteMatchModes.Automatic)]
	[Browsable(true)]
	public AutoCompleteMatchModes MatchMode
	{
		get
		{
			return matchMode;
		}
		set
		{
			matchMode = value;
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[Description("The collection of Columns for the drop down list when in AutoSuggest Mode.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[MergableProperty(false)]
	public AutoCompleteDataColumnInfoCollection Columns => columnInfoList;

	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Specifies if the drop down list of possible matches will show their headers.")]
	[Browsable(true)]
	public bool ShowColumnHeader
	{
		get
		{
			return showColumnHeaderValue;
		}
		set
		{
			showColumnHeaderValue = value;
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether to show the close button at the bottom right of the DropDownContainer.")]
	public bool ShowCloseButton
	{
		get
		{
			return dropDownContainer.ShowCloseButton;
		}
		set
		{
			if (value != dropDownContainer.ShowCloseButton)
			{
				dropDownContainer.ShowCloseButton = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether sizing gripper is shown at the bottom right of the DropDownContainer")]
	public bool ShowGripper
	{
		get
		{
			return dropDownContainer.ShowGripper;
		}
		set
		{
			if (value != dropDownContainer.ShowGripper)
			{
				dropDownContainer.ShowGripper = value;
			}
		}
	}

	public PopupControlContainer AutoCompletePopup => dropDownContainer;

	[Browsable(true)]
	[Description("The imagelist to be used by the control to display icons for the items in the history list")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	public ImageList ImageList
	{
		get
		{
			return imageListValue;
		}
		set
		{
			imageListValue = value;
		}
	}

	[Browsable(true)]
	[Description("Specifies whether the AutoComplete control persists its data.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool AutoSerialize
	{
		get
		{
			return autoSerializeValue;
		}
		set
		{
			autoSerializeValue = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Specifies the case sensitivity for string comparison..")]
	[Browsable(true)]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool IgnoreCase
	{
		get
		{
			return ignoreCase;
		}
		set
		{
			ignoreCase = value;
		}
	}

	[Category("Behavior")]
	[Description("The target control with the current focus")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Control ActiveFocusControl
	{
		get
		{
			return activeControlObject;
		}
		set
		{
			if (activeControlObject != value)
			{
				activeControlObject = value;
			}
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Description("Indicates whether DropDown size is persistent.")]
	[Category("Behavior")]
	public bool AutoPersistentDropDownSize
	{
		get
		{
			return m_bPersistentDropDownSize;
		}
		set
		{
			m_bPersistentDropDownSize = value;
		}
	}

	public static int MinColumnWidth => minColumnWidth;

	[Description("Specifies if the DataManager position is to be changed when entries in the ListControl are selected.")]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool ChangeDataManagerPosition
	{
		get
		{
			return changeDataManagerPosition;
		}
		set
		{
			changeDataManagerPosition = value;
		}
	}

	[Browsable(true)]
	[Description("Specifies if the replacement of the matching entry is to be case sensitive.")]
	[DefaultValue(false)]
	public bool CaseSensitive
	{
		get
		{
			return caseSensitiveValue;
		}
		set
		{
			caseSensitiveValue = value;
		}
	}

	internal string PreChangeText
	{
		get
		{
			return preChangeText;
		}
		set
		{
			if (value != preChangeText)
			{
				preChangeText = value;
			}
		}
	}

	[DefaultValue(null)]
	[Category("Accessibility")]
	[Description("Gets or sets the description of the control used by accessibility client applications.")]
	public string AccessibleDescription
	{
		get
		{
			return accessibleDescription;
		}
		set
		{
			accessibleDescription = value;
		}
	}

	[Category("Accessibility")]
	[DefaultValue(null)]
	[Description("Gets or sets the name of the control used by accessibility client applications.")]
	public string AccessibleName
	{
		get
		{
			return accessibleName;
		}
		set
		{
			accessibleName = value;
		}
	}

	[DefaultValue(typeof(AccessibleRole), "None")]
	[Category("Accessibility")]
	[Description("Gets or sets the accessible role of the control.")]
	public AccessibleRole AccessibleRole
	{
		get
		{
			return accessibleRole;
		}
		set
		{
			accessibleRole = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Control ParentForm
	{
		get
		{
			if (parentForm == null && base.DesignMode)
			{
				IDesignerHost designerHost = Site.Container as IDesignerHost;
				Form form = designerHost.RootComponent as Form;
				parentForm = form;
			}
			return parentForm;
		}
		set
		{
			parentForm = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Initializing => inInit;

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Setting this property to true will override the ComboBox (target) control's drop down.")]
	[Browsable(true)]
	public bool OverrideCombo
	{
		get
		{
			return overrideComboValue;
		}
		set
		{
			overrideComboValue = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior")]
	[Description("Gets or sets the column that is to be used for matching during AutoCompletion.")]
	[Browsable(true)]
	public string MatchColumnName
	{
		get
		{
			for (int i = 0; i < Columns.Count; i++)
			{
				if (Columns[i].MatchingColumn)
				{
					return Columns[i].ColumnName;
				}
			}
			if (Columns.Count > 0)
			{
				return Columns[0].ColumnName;
			}
			return string.Empty;
		}
	}

	[Category("Appearance")]
	[Description("The column index that will serve as the image index.")]
	[Browsable(true)]
	public int ImageColumnIndex
	{
		get
		{
			int result = -1;
			int num = 0;
			foreach (AutoCompleteDataColumnInfo column in Columns)
			{
				if (column.ImageColumn)
				{
					return num;
				}
				num++;
			}
			return result;
		}
	}

	[Category("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("The internal DataTable object used by the AutoComplete control to manipulate the matching items history list.")]
	public DataTable TableData => tableData;

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Specifies if the height of the drop down should be adjusted based on the number of items.")]
	[Browsable(true)]
	public bool AdjustHeightToItemCount
	{
		get
		{
			return adjustHeightToItemCount;
		}
		set
		{
			adjustHeightToItemCount = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(200)]
	[Description("The preferred height for the drop down list displayed by the AutoComplete control.")]
	[Browsable(true)]
	public int PreferredHeight
	{
		get
		{
			return preferredHeight;
		}
		set
		{
			preferredHeight = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(-1)]
	[Description("The preferred width for the drop down list displayed by the AutoComplete control.")]
	[Category("Appearance")]
	public int PreferredWidth
	{
		get
		{
			return preferredWidth;
		}
		set
		{
			preferredWidth = value;
		}
	}

	[Description("Indicates the source of data for the AutoCompleteControl")]
	[Browsable(true)]
	[Category("Data")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(null)]
	[TypeConverter(typeof(DataSourceConverter))]
	public object DataSource
	{
		get
		{
			return dataSource;
		}
		set
		{
			if (value != null && (value is IList || value is IListSource))
			{
				dataSource = value;
				SetTableData();
			}
			else if (value == null)
			{
				dataSource = value;
			}
		}
	}

	internal bool ProcessingAutoComplete => bProcessingAutoComplete;

	[Description("InvalidDataType is raised when the specified  data type is not valid.")]
	public event AutoCompleteErrorEventHandler InvalidDataType;

	[Description("This event is raised before the AutoComplete performs a matching operation for the current text of the active edit control.")]
	public event AutoCompletePreMatchItemEventHandler PreMatchItem;

	[Description("This event is raised when the target control of the AutoComplete control changes.")]
	public event AutoCompleteTargetChangingEventHandler TargetChanging;

	[Description("Handle this event to customize the AutoCompletion (position, text for auto completion etc).")]
	public event AutoCompleteCustomizeEventHandler AutoCompleteCustomize;

	[Description("Occurs after the dropdown has been dropped down and made visible.")]
	public event EventHandler DropDownDisplayed;

	[Description("Occurs when a popup is closed.")]
	public event PopupClosedEventHandler DropDownClosed;

	[Category("Behavior")]
	[Description("The BeforeAddItem event is raised when a new item is about to be added.")]
	public event AutoCompleteAddItemCancelEventHandler BeforeAddItem;

	[Category("Behavior")]
	[Description("This event enables you to provide a custom matching routine for the current value in the edit control.")]
	public event AutoCompleteMatchItemEventHandler MatchItem;

	[Description("This event is raised when a new item has been selected by the user in the drop down list.")]
	[Category("Behavior")]
	public event AutoCompleteItemEventHandler AutoCompleteItemSelected;

	[Category("Behavior")]
	[Description("This event is raised when a new item has been selected and the text of the edit control is changed.")]
	public event AutoCompleteItemEventHandler AutoCompleteItemBrowsed;

	static AutoComplete()
	{
		nCounter = 0;
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(AutoComplete).Assembly);
		minColumnWidth = 100;
	}

	public AutoComplete(IContainer container)
		: this()
	{
		container.Add(this);
	}

	public AutoComplete()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(AutoComplete));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		targetEnabledMap = new Hashtable();
		targetComboUpDownMap = new Hashtable();
		ignoreCase = true;
		internalOverrideIgnoreCompletion = false;
		columnInfoList = new AutoCompleteDataColumnInfoCollection(this);
		imageListValue = null;
		selectionChangeCommitted = false;
		preferredHeight = 200;
		adjustHeightToItemCount = true;
		contentChanged = true;
		borderType = AutoCompleteBorderTypes.Sizable;
		matchMode = AutoCompleteMatchModes.Automatic;
		autoSerializeValue = true;
		autoAddItemOnValidate = false;
		tableData = new DataTable("AutoComplete");
		dropDownList = new VirtualListView();
		dropDownContainer = new SizablePopupControlContainer(dropDownList);
		MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
		nCounter++;
	}

	~AutoComplete()
	{
		Dispose(disposing: false);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			MessageFilterEntryHelper.RemoveMessageFilter(this);
			if (components != null)
			{
				components.Dispose();
			}
			if (IsDropDownShowing())
			{
				dropDownContainer.Hide();
			}
			if (controlsInitialized)
			{
				dropDownContainer.Popup -= HandlePopupDisplayed;
				dropDownContainer.CloseUp -= HandlePopupClosed;
				dropDownList.SelectedIndexChanged -= HandleAutoListSelectionChanged;
				dropDownList.DoubleClick -= HandleAutoListDoubleClick;
				dropDownList.Click -= HandleAutoListClick;
				dropDownList.KeyDown -= HandleListControlKeyDown;
				dropDownContainer.ParentControl = null;
				dropDownContainer.Dispose();
				dropDownContainer = null;
				dropDownList.Dispose();
				dropDownList = null;
			}
			if (dropDownContainer != null)
			{
				dropDownContainer.Dispose();
				dropDownContainer = null;
			}
			tableData.Dispose();
			tableData = null;
			DropDownClosed -= dropDown_Closed;
			IDictionaryEnumerator enumerator = targetEnabledMap.GetEnumerator();
			while (enumerator.MoveNext())
			{
				if ((AutoCompleteModes)enumerator.Value != AutoCompleteModes.Disabled)
				{
					Control control = (Control)enumerator.Key;
					UnadwiseControlEvents(control);
				}
			}
			if (dropDownList != null)
			{
				dropDownList.Dispose();
				dropDownList = null;
			}
			if (targetEnabledMap != null)
			{
				targetEnabledMap.Clear();
				targetEnabledMap = null;
			}
			if (targetComboUpDownMap != null)
			{
				targetComboUpDownMap.Clear();
				targetComboUpDownMap = null;
			}
			if (columnInfoList != null)
			{
				columnInfoList.Clear();
				columnInfoList = null;
			}
			dataSource = null;
			parentForm = null;
		}
		base.Dispose(disposing);
	}

	public void BeginInit()
	{
		if (inInit)
		{
			throw new Exception("BeginInit called twice.");
		}
		inInit = true;
	}

	public void EndInit()
	{
		inInit = false;
		SetTableData();
		DeSerializeList();
		DropDownClosed += dropDown_Closed;
	}

	private void InitializeComponent()
	{
	}

	private bool InitializeDropDown()
	{
		try
		{
			if (!controlsInitialized)
			{
				if (Columns.Count == 0)
				{
					if (tableData.Columns.Count > 0)
					{
						RefreshColumns();
					}
					else
					{
						Columns.Add(new AutoCompleteDataColumnInfo("", 150, visible: true));
					}
				}
				if (dropDownList == null)
				{
					dropDownList = new VirtualListView();
				}
				dropDownList.ListOwner = this;
				dropDownList.TabStop = false;
				dropDownList.BorderStyle = BorderStyle.None;
				dropDownList.Location = Point.Empty;
				dropDownList.FullRowSelect = true;
				dropDownList.TabIndex = 0;
				dropDownList.View = View.Details;
				dropDownList.MultiSelect = false;
				dropDownList.Scrollable = true;
				dropDownList.HideSelection = false;
				if (ImageList != null)
				{
					dropDownList.SmallImageList = ImageList;
				}
				if (!showColumnHeaderValue)
				{
					dropDownList.HeaderStyle = ColumnHeaderStyle.None;
				}
				else
				{
					dropDownList.HeaderStyle = ColumnHeaderStyle.Nonclickable;
				}
				for (int i = 0; i < Columns.Count; i++)
				{
					AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = Columns[i];
					if (autoCompleteDataColumnInfo == null || autoCompleteDataColumnInfo.Visible)
					{
						ColumnHeader columnHeader = new ColumnHeader();
						columnHeader.Tag = i;
						dropDownList.Columns.Add(columnHeader);
					}
				}
				UpdateDropDownListWidth();
				if (dropDownContainer == null)
				{
					dropDownContainer = new SizablePopupControlContainer(dropDownList);
				}
				dropDownContainer.SuspendLayout();
				dropDownContainer.BorderStyle = BorderStyle.None;
				dropDownContainer.Location = new Point(8, 16);
				dropDownContainer.Name = "dropDownContainer";
				dropDownContainer.TabIndex = 0;
				dropDownContainer.ResumeLayout(performLayout: false);
				dropDownContainer.Controls.Add(dropDownList);
				if (AutoPersistentDropDownSize)
				{
					LoadDropDownSizeState();
				}
				dropDownContainer.Popup += HandlePopupDisplayed;
				dropDownContainer.CloseUp += HandlePopupClosed;
				dropDownList.SelectedIndexChanged += HandleAutoListSelectionChanged;
				dropDownList.DoubleClick += HandleAutoListDoubleClick;
				dropDownList.Click += HandleAutoListClick;
				dropDownList.KeyDown += HandleListControlKeyDown;
				controlsInitialized = true;
			}
			dropDownList.RightToLeft = targetRightToLeft;
			dropDownList.RightToLeftLayout = targetRightToLeft == RightToLeft.Yes;
			if (targetRightToLeft == RightToLeft.Yes)
			{
				dropDownList.Mirrored = true;
			}
			else
			{
				dropDownList.Mirrored = false;
			}
		}
		catch
		{
			return false;
		}
		return true;
	}

	private void UpdateDropDownListWidth()
	{
		int num = 0;
		foreach (ColumnHeader column in dropDownList.Columns)
		{
			int num2 = (int)column.Tag;
			if (num2 != ImageColumnIndex)
			{
				AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = Columns[num2];
				if (autoCompleteDataColumnInfo != null)
				{
					column.Text = autoCompleteDataColumnInfo.ColumnHeaderText;
					column.Width = autoCompleteDataColumnInfo.MinColumnWidth;
				}
				else
				{
					column.Text = "";
					column.Width = minColumnWidth;
				}
				num += column.Width;
			}
			else if (ImageList != null)
			{
				column.Width = 20;
				num += 20;
			}
		}
		if (PreferredWidth != -1)
		{
			dropDownList.Width = PreferredWidth;
			return;
		}
		int width = GetActiveEditControl(ActiveFocusControl).Width;
		dropDownList.Width = Math.Max(num, width);
	}

	private bool ShouldSerializeImageList()
	{
		return ImageList != null;
	}

	private void ResetImageList()
	{
		ImageList = null;
	}

	protected bool ShouldSerializeParentForm()
	{
		if (parentForm == null)
		{
			return false;
		}
		return true;
	}

	protected virtual bool IgnoreCompletion(string currentText)
	{
		if (preChangeText == null)
		{
			preChangeText = "";
		}
		if (internalOverrideIgnoreCompletion)
		{
			return false;
		}
		if (preChangeText.Length >= currentText.Length)
		{
			return currentText == preChangeText.Substring(0, currentText.Length);
		}
		return false;
	}

	protected virtual int PopulateListWithMatches(string currentText, ref DataView listDataView)
	{
		DataRow matchingRow = null;
		return PopulateListWithMatches(currentText, ref listDataView, exactMatch: false, ref matchingRow);
	}

	[DocumentationExclude]
	protected void OnTargetChanging(AutoCompleteTargetChangingEventArgs args)
	{
		try
		{
			if (this.TargetChanging != null)
			{
				this.TargetChanging(this, args);
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected void OnAutoCompleteCustomize(AutoCompleteCustomizeEventArgs args)
	{
		try
		{
			if (this.AutoCompleteCustomize != null)
			{
				this.AutoCompleteCustomize(this, args);
			}
		}
		catch
		{
		}
	}

	protected virtual int PopulateListWithMatches(string currentText, ref DataView listDataView, bool exactMatch, ref DataRow matchingRow)
	{
		string rowFilter = string.Empty;
		string sort = string.Empty;
		if (tableData.Columns.Count == 0)
		{
			SetTableData();
		}
		currentText = RaisePreMatchItemEvent(currentText);
		currentText = FormatStringForSQL(currentText);
		int num = 0;
		string matchColumnName = MatchColumnName;
		for (int i = 0; i < tableData.Columns.Count; i++)
		{
			if (matchColumnName == tableData.Columns[i].ColumnName)
			{
				num = i;
				sort = matchColumnName;
				break;
			}
		}
		if (MatchMode == AutoCompleteMatchModes.Automatic)
		{
			if (currentText.Length > 0)
			{
				switch (GetControlAutoMode())
				{
				case AutoCompleteModes.MultiSuggest:
					listDataView = GetDataView(currentText, exactMatch, bExtended: false);
					break;
				case AutoCompleteModes.MultiSuggestExtended:
					listDataView = GetDataView(currentText, exactMatch, bExtended: true);
					break;
				default:
					if (tableData.Columns.Count > num)
					{
						if (tableData.Columns[num].DataType == currentText.GetType())
						{
							rowFilter = "[" + tableData.Columns[num].ColumnName + "] LIKE '" + currentText.ToString();
							rowFilter += (exactMatch ? "'" : "*'");
							listDataView = new DataView(tableData, rowFilter, null, DataViewRowState.CurrentRows);
						}
						else
						{
							OnInvalidDataType(new AutoCompleteErrorArgs(new Exception("Invalid data type for the matching column. Please change to a String data type column. See the MatchColumnIndex property.")));
						}
					}
					break;
				}
			}
			else if (tableData.Columns.Count > 0 && !exactMatch)
			{
				listDataView = new DataView(tableData, rowFilter, null, DataViewRowState.CurrentRows);
			}
		}
		else
		{
			DataTable dataTable = tableData;
			if (currentText.Length > 0)
			{
				dataTable = tableData.Clone();
				foreach (DataRow row in tableData.Rows)
				{
					string possibleMatch = (string)row.ItemArray[0];
					if (!MatchString(currentText, possibleMatch))
					{
						dataTable.ImportRow(row);
						if (GetControlAutoMode() == AutoCompleteModes.AutoAppend)
						{
							break;
						}
					}
				}
			}
			listDataView = new DataView(dataTable, rowFilter, null, DataViewRowState.CurrentRows);
		}
		if (listDataView == null)
		{
			listDataView = new DataView(tableData, rowFilter, null, DataViewRowState.CurrentRows);
		}
		if (AutoSortList)
		{
			listDataView.Sort = sort;
		}
		if (listDataView.Count > 0 && exactMatch)
		{
			matchingRow = listDataView[0].Row;
		}
		listDataView.Table.CaseSensitive = CaseSensitive;
		return listDataView.Count;
	}

	public virtual void SetTableData()
	{
		try
		{
			BindingManagerBase dataManager = GetDataManager(dataSource);
			if (dataManager != null)
			{
				if (dataManager is CurrencyManager)
				{
					IList list = ((CurrencyManager)dataManager).List;
					tableData = new DataTable();
					tableData.Columns.Clear();
					tableData.Rows.Clear();
					object obj = null;
					if (list.Count > 0)
					{
						obj = list[0];
					}
					if (obj != null && obj is string)
					{
						tableData.Columns.Add("Column0");
					}
					else
					{
						foreach (PropertyDescriptor itemProperty in dataManager.GetItemProperties())
						{
							tableData.Columns.Add(itemProperty.Name);
						}
					}
					if (tableData.Columns.Count == 0)
					{
						string columnName = "Column0";
						tableData.Columns.Add(columnName);
					}
					foreach (object item in list)
					{
						DataRow dataRow = tableData.NewRow();
						if (item is string)
						{
							dataRow["Column0"] = item.ToString();
						}
						else
						{
							foreach (PropertyDescriptor itemProperty2 in dataManager.GetItemProperties())
							{
								object value = itemProperty2.GetValue(item);
								string value2 = string.Empty;
								if (value != null)
								{
									value2 = value.ToString();
								}
								dataRow[itemProperty2.Name] = value2;
							}
						}
						tableData.Rows.Add(dataRow);
					}
				}
			}
			else
			{
				tableData = new DataTable();
				tableData.Columns.Clear();
				tableData.Rows.Clear();
				foreach (AutoCompleteDataColumnInfo column in Columns)
				{
					tableData.Columns.Add(column.ColumnName);
				}
				if (tableData.Columns.Count == 0)
				{
					tableData.Columns.Add("Column0");
				}
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.Message);
			Console.WriteLine(ex.GetType());
		}
		if (tableData.Columns.Count > 0)
		{
			tableData.CaseSensitive = true;
			int num = Math.Min(tableData.Columns.Count, 32);
			DataColumn[] array = new DataColumn[num];
			for (int i = 0; i < num; i++)
			{
				array[i] = tableData.Columns[i];
			}
			tableData.CaseSensitive = CaseSensitive;
			tableData.PrimaryKey = array;
		}
	}

	protected virtual void OnDropDownDisplayed(EventArgs args)
	{
		if (this.DropDownDisplayed != null)
		{
			this.DropDownDisplayed(this, args);
		}
	}

	protected virtual void OnDropDownClosed(PopupClosedEventArgs args)
	{
		if (this.DropDownClosed != null)
		{
			this.DropDownClosed(this, args);
		}
	}

	protected virtual void OnAutoCompleteItemSelected(AutoCompleteItemEventArgs args)
	{
		try
		{
			if (this.AutoCompleteItemSelected != null)
			{
				this.AutoCompleteItemSelected(this, args);
			}
		}
		catch
		{
		}
	}

	protected virtual void OnBeforeAddItem(AutoCompleteAddItemCancelEventArgs args)
	{
		if (this.BeforeAddItem != null)
		{
			try
			{
				this.BeforeAddItem(this, args);
			}
			catch
			{
			}
		}
	}

	public virtual void AddHistoryItem(string newItemText, int imageIndexValue)
	{
		string empty = string.Empty;
		string empty2 = string.Empty;
		if (tableData != null && tableData.Columns.Count == 0)
		{
			SetTableData();
		}
		try
		{
			if (newItemText == null || !(newItemText != string.Empty))
			{
				return;
			}
			empty = newItemText.Trim();
			empty2 = FormatStringForSQL(empty);
			if (tableData == null)
			{
				return;
			}
			string filterExpression = tableData.Columns[0].ColumnName + " = '" + empty2 + "'";
			DataRow[] array = tableData.Select(filterExpression);
			if (array.Length <= 0)
			{
				DataRow dataRow = tableData.NewRow();
				dataRow[0] = empty;
				for (int i = 1; i < tableData.Columns.Count; i++)
				{
					dataRow[i] = string.Empty;
				}
				if (ImageColumnIndex > 0 && ImageColumnIndex < tableData.Columns.Count)
				{
					dataRow[ImageColumnIndex] = imageIndexValue;
				}
				if (!RaiseBeforeAddItemEvent(dataRow))
				{
					tableData.Rows.Add(dataRow);
				}
			}
		}
		catch (Exception)
		{
		}
	}

	public virtual bool SetHistoryItem(string itemKey, int imageIndexValue)
	{
		string text = itemKey.Trim();
		string filterExpression = tableData.Columns[0].ColumnName + " = " + text;
		DataRow[] array = tableData.Select(filterExpression);
		if (array.Length > 0)
		{
			DataRow dataRow = array[0];
			if (ImageColumnIndex > 0 && ImageColumnIndex < tableData.Columns.Count)
			{
				dataRow[ImageColumnIndex] = imageIndexValue;
			}
		}
		return true;
	}

	public virtual void SetHistoryItem(string itemKey, int subindex, string subItemValue)
	{
		string text = itemKey.Trim();
		string filterExpression = tableData.Columns[0].ColumnName + " = " + text;
		DataRow[] array = tableData.Select(filterExpression);
		if (array.Length > 0)
		{
			DataRow dataRow = array[0];
			if (subindex < tableData.Columns.Count)
			{
				dataRow[subindex] = subItemValue;
			}
		}
	}

	protected virtual bool MatchString(string currentText, string possibleMatch)
	{
		return RaiseMatchItemEvent(currentText, possibleMatch);
	}

	protected virtual void OnMatchItem(AutoCompleteMatchItemEventArgs arg)
	{
		try
		{
			if (this.MatchItem != null)
			{
				this.MatchItem(this, arg);
			}
		}
		catch
		{
		}
	}

	protected virtual void OnAutoCompleteItemBrowsed(AutoCompleteItemEventArgs args)
	{
		try
		{
			if (this.AutoCompleteItemBrowsed != null)
			{
				this.AutoCompleteItemBrowsed(this, args);
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected void OnPreMatchItemEvent(AutoCompletePreMatchItemEventArgs args)
	{
		try
		{
			if (this.PreMatchItem != null)
			{
				this.PreMatchItem(this, args);
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected void OnInvalidDataType(AutoCompleteErrorArgs args)
	{
		try
		{
			if (this.InvalidDataType != null)
			{
				this.InvalidDataType(this, args);
			}
		}
		catch
		{
		}
	}

	private void dropDown_Closed(object sender, PopupClosedEventArgs e)
	{
		if (AutoPersistentDropDownSize)
		{
			SaveDropDownSizeState();
		}
	}

	private void HandleListControlKeyDown(object sender, KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Up)
		{
			if (dropDownList.ItemsCount > 0 && dropDownList.IsItemSelected(0))
			{
				Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
				if (activeEditControl != null && !AutoCompletePopup.IsShowing())
				{
					activeEditControl.Focus();
				}
			}
		}
		else
		{
			if (e.KeyCode != Keys.Delete || !AllowListDelete || !IsDropDownShowing())
			{
				return;
			}
			try
			{
				SelectedIndex = dropDownList.GetSelectedIndex();
				int index = 0;
				int num = 0;
				string matchColumnHeaderText = GetMatchColumnHeaderText();
				foreach (AutoCompleteDataColumnInfo column in Columns)
				{
					if (column.ColumnName == matchColumnHeaderText)
					{
						index = num;
						break;
					}
					num++;
				}
				string filterExpression = tableData.Columns[index].ColumnName + " = '" + dropDownList.GetSelectedItemText() + "'";
				string columnName = tableData.Columns[index].ColumnName;
				DataRow[] array = tableData.Select(filterExpression, columnName, DataViewRowState.CurrentRows);
				tableData.Rows.Remove(array[0]);
				ProcessAutoComplete(preChangeText);
				if (dropDownList.ItemsCount > SelectedIndex - 1)
				{
					dropDownList.SelectItem(Math.Max(0, SelectedIndex - 1), selected: true);
				}
			}
			catch (Exception)
			{
			}
		}
	}

	private void HandleControlKeyDown(object sender, KeyEventArgs e)
	{
		if (Keys.Alt != e.Modifiers)
		{
			HandleControlKeyDownNoModifiers(sender, e);
			HandleListControlKeyDown(sender, e);
		}
	}

	private void HandleControlKeyDownNoModifiers(object sender, KeyEventArgs e)
	{
		Control control = (Control)sender;
		if (e.KeyCode == Keys.Down)
		{
			if (IsDropDownShowing())
			{
				if (dropDownList.ItemsCount > 0)
				{
					if (dropDownList.SelectedIndices.Count > 0)
					{
						dropDownList.SelectItem(dropDownList.GetSelectedIndex() + 1, selected: true);
					}
					else
					{
						dropDownList.SelectItem(0, selected: true);
					}
					e.Handled = true;
				}
			}
			else
			{
				internalOverrideIgnoreCompletion = true;
				comboUpDownState = 1;
				ProcessAutoComplete(control.Text);
				internalOverrideIgnoreCompletion = false;
			}
		}
		else if (e.KeyCode == Keys.Up)
		{
			if (IsDropDownShowing())
			{
				if (dropDownList.GetSelectedIndex() > 0 && dropDownList.GetSelectedIndex() != 0)
				{
					dropDownList.SelectItem(dropDownList.GetSelectedIndex() - 1, selected: true);
				}
				e.Handled = true;
			}
			else
			{
				internalOverrideIgnoreCompletion = true;
				comboUpDownState = 2;
				ProcessAutoComplete(control.Text);
				internalOverrideIgnoreCompletion = false;
			}
		}
		else if (e.KeyCode == Keys.Escape)
		{
			CloseDropDownCancel();
		}
		else if (e.KeyCode == Keys.Return)
		{
			AddItemOnValidate(control);
			if (IsDropDownShowing())
			{
				dropDownContainer.HidePopup(PopupCloseType.Done);
			}
		}
		else if ((e.KeyCode == Keys.Prior || e.KeyCode == Keys.Next) && IsDropDownShowing())
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.PostMessage(dropDownList.Handle, 256, new IntPtr((int)e.KeyCode), new IntPtr(Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(1, 0)));
		}
	}

	private void HandleControlEnter(object sender, EventArgs e)
	{
		if (ActiveFocusControl == (Control)sender)
		{
			return;
		}
		ActiveFocusControl = (Control)sender;
		Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
		if (activeEditControl != null)
		{
			RaiseTargetChangingEvent(activeEditControl, isLeaving: false);
			activeEditControl.TextChanged += HandleControlTextChanged;
			activeEditControl.KeyDown += HandleControlKeyDown;
			activeEditControl.DoubleClick += HandleControlDoubleClick;
			activeEditControl.Click += HandleControlClick;
			activeEditControl.Validated += HandleControlValidated;
			activeEditControl.HandleDestroyed += HandleControlDestroyed;
			targetRightToLeft = activeEditControl.RightToLeft;
			if (activeEditControl is ComboBox)
			{
				((ComboBox)activeEditControl).SelectionChangeCommitted += HandleControlSelectionChangeCommitted;
				((ComboBox)activeEditControl).DropDown += HandleControlDropDown;
			}
			else
			{
				activeEditControl.MouseWheel += HandleControlMouseWheel;
			}
		}
	}

	private void HandleControlMouseWheel(object sender, MouseEventArgs e)
	{
		if (e.Delta != 0 && dropDownList != null && dropDownList.IsHandleCreated && dropDownList.Visible)
		{
			int delta = e.Delta;
			IntPtr wParam = (IntPtr)Syncfusion.Runtime.InteropServices.NativeMethods.MAKELONG(0, delta);
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(dropDownList.Handle, 522, wParam, IntPtr.Zero);
		}
	}

	private void HandleControlDestroyed(object sender, EventArgs e)
	{
		if (dropDownContainer != null)
		{
			dropDownContainer.ParentControl = null;
		}
	}

	private void HandleControlLeave(object sender, EventArgs e)
	{
		if (sender != ActiveFocusControl)
		{
			return;
		}
		Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
		if (activeEditControl != null)
		{
			RaiseTargetChangingEvent(activeEditControl, isLeaving: true);
			activeEditControl.TextChanged -= HandleControlTextChanged;
			activeEditControl.KeyDown -= HandleControlKeyDown;
			activeEditControl.DoubleClick -= HandleControlDoubleClick;
			activeEditControl.Click -= HandleControlClick;
			activeEditControl.HandleDestroyed -= HandleControlDestroyed;
			if (activeEditControl is ComboBox)
			{
				((ComboBox)activeEditControl).SelectionChangeCommitted -= HandleControlSelectionChangeCommitted;
				((ComboBox)activeEditControl).DropDown -= HandleControlDropDown;
			}
			else
			{
				activeEditControl.MouseWheel -= HandleControlMouseWheel;
			}
			if (dropDownContainer.IsShowing() && dropDownList.GetSelectedItemText() != "")
			{
				activeEditControl.Text = dropDownList.GetSelectedItemText();
				int num = 0;
				string matchColumnName = MatchColumnName;
				if (tableData != null && tableData.Columns != null)
				{
					for (int i = 0; i < tableData.Columns.Count; i++)
					{
						if (matchColumnName == tableData.Columns[i].ColumnName)
						{
							num = i;
							break;
						}
					}
				}
				PopulateListWithMatches(activeEditControl.Text, ref listDataView);
				DataRowView autoAppendEntry = GetAutoAppendEntry(activeEditControl.Text, listDataView, num);
				if (autoAppendEntry != null && autoAppendEntry.Row != null)
				{
					object[] itemArray = autoAppendEntry.Row.ItemArray;
					string newSelectedValue = string.Empty;
					string text = autoAppendEntry[num].ToString();
					SetSelectedItem(new AutoCompleteItem(itemArray, num));
					RaiseAutoCompleteItemSelectedEvent(itemArray, num, text, ref newSelectedValue);
				}
			}
		}
		ActiveFocusControl = null;
	}

	private void HandleControlTextChanged(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		string text = control.Text;
		dropDownContainer.ParentControl = control;
		if (control is TextBox)
		{
			_ = ((TextBox)control).Multiline;
		}
		if (!selectionChangeCommitted)
		{
			if (IgnoreChangeMessage++ <= 0 && StartProcess(bProcess))
			{
				ProcessAutoComplete(text);
			}
			IgnoreChangeMessage--;
		}
		else
		{
			selectionChangeCommitted = false;
		}
	}

	public bool StartProcess(bool process)
	{
		bProcess = process;
		return bProcess;
	}

	private void HandleControlSelectionChangeCommitted(object sender, EventArgs e)
	{
		selectionChangeCommitted = true;
	}

	private void HandleControlDropDown(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (!OverrideCombo && IsDropDownShowing())
		{
			CloseDropDownCancel();
		}
		else if (OverrideCombo && !IsDropDownShowing())
		{
			ProcessAutoComplete(control.Text);
		}
	}

	private void HandleControlDoubleClick(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		if (IsDropDownShowing())
		{
			CloseDropDownCancel();
		}
		else
		{
			ProcessAutoComplete(control.Text);
		}
	}

	private void HandleControlClick(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		if (SingleClick)
		{
			if (IsDropDownShowing())
			{
				CloseDropDownCancel();
			}
			else if (GetAutoComplete(control) != AutoCompleteModes.AutoAppend)
			{
				ProcessAutoComplete(control.Text);
			}
		}
	}

	private void HandleAutoListDoubleClick(object sender, EventArgs e)
	{
		if (IsDropDownShowing())
		{
			dropDownContainer.HidePopup(PopupCloseType.Done);
		}
	}

	private void HandleAutoListClick(object sender, EventArgs e)
	{
		if (IsDropDownShowing())
		{
			dropDownContainer.HidePopup(PopupCloseType.Done);
		}
	}

	private void HandleAutoListSelectionChanged(object sender, EventArgs e)
	{
		int matchColumnIndex = 0;
		int num = 0;
		string matchColumnHeaderText = GetMatchColumnHeaderText();
		foreach (AutoCompleteDataColumnInfo column in Columns)
		{
			if (column.ColumnName == matchColumnHeaderText)
			{
				matchColumnIndex = num;
				break;
			}
			num++;
		}
		if (dropDownList.SelectedIndices.Count > 0)
		{
			try
			{
				SelectedIndex = dropDownList.SelectedIndices[0];
				object[] itemArray = listDataView[SelectedIndex].Row.ItemArray;
				RaiseAutoCompleteItemBrowsedEvent(itemArray, matchColumnIndex);
			}
			catch
			{
			}
		}
	}

	protected void HandleControlValidated(object sender, EventArgs e)
	{
		AddItemOnValidate((Control)sender);
	}

	private void HandlePopupClosed(object sender, PopupClosedEventArgs e)
	{
		dropDownContainer.ParentControl = null;
		try
		{
			if (e.PopupCloseType == PopupCloseType.Done)
			{
				string empty = string.Empty;
				int num = 0;
				int num2 = 0;
				string matchColumnHeaderText = GetMatchColumnHeaderText();
				foreach (AutoCompleteDataColumnInfo column in Columns)
				{
					if (column.ColumnName == matchColumnHeaderText)
					{
						num = num2;
						break;
					}
					num2++;
				}
				if (dropDownList.SelectedItemsCount < 1 && dropDownList.ItemsCount > 0)
				{
					dropDownList.SelectItem(0, selected: true);
				}
				SelectedIndex = dropDownList.GetSelectedIndex();
				if (dropDownList.SelectedIndices.Count > 0)
				{
					object[] itemArray = listDataView[SelectedIndex].Row.ItemArray;
					if (num == 0)
					{
						empty = dropDownList.GetSelectedItemText();
					}
					else
					{
						int matchColumnIndexInDataTable = GetMatchColumnIndexInDataTable(MatchColumnName);
						empty = itemArray[matchColumnIndexInDataTable].ToString();
					}
					BindingManagerBase dataManager = GetDataManager(DataSource);
					int actualRowIndex = GetActualRowIndex(listDataView, SelectedIndex, num);
					if (dataManager != null && dataManager.Position != actualRowIndex && actualRowIndex != -1)
					{
						dataManager.Position = actualRowIndex;
					}
					string newSelectedValue = string.Empty;
					SetSelectedItem(new AutoCompleteItem(itemArray, num));
					if (RaiseAutoCompleteItemSelectedEvent(itemArray, num, empty, ref newSelectedValue))
					{
						SetSelectedValue(newSelectedValue);
					}
					else
					{
						SetSelectedValue(empty);
					}
				}
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.Message);
		}
		OnDropDownClosed(e);
	}

	private void HandlePopupDisplayed(object sender, EventArgs e)
	{
		OnDropDownDisplayed(e);
		if (indexToEnsureVisible != -1 && dropDownList.ItemsCount > indexToEnsureVisible)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(dropDownList.Handle, 4115, indexToEnsureVisible, IntPtr.Zero);
			dropDownList.SelectItem(indexToEnsureVisible, selected: true);
			indexToEnsureVisible = -1;
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(dropDownContainer.PopupHost.Handle, new IntPtr(-1), 0, 0, 0, 0, 19);
	}

	public void ProcessAutoComplete(string currentText, string selectedEntry, Point location)
	{
		bProcessingAutoComplete = true;
		DataView dataView = null;
		bool flag = true;
		int num = 0;
		AutoCompleteModes controlAutoMode = GetControlAutoMode();
		bool controlComboUpDownMode = GetControlComboUpDownMode();
		DataRowView dataRowView = null;
		AutoCompleteCustomizeEventArgs e = new AutoCompleteCustomizeEventArgs(currentText, location, ActiveFocusControl);
		OnAutoCompleteCustomize(e);
		if (e.Handled)
		{
			if (e.Cancel)
			{
				return;
			}
			currentText = e.TextForAutoCompletion;
			location = e.AutoSuggestLocation;
		}
		currentTextBeingMatched = currentText;
		string matchColumnName = MatchColumnName;
		for (int i = 0; i < tableData.Columns.Count; i++)
		{
			if (matchColumnName == tableData.Columns[i].ColumnName)
			{
				num = i;
				break;
			}
		}
		Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
		if (activeEditControl == null)
		{
			return;
		}
		ComboBox comboBox = null;
		TextBoxBase textBoxBase = null;
		dropDownContainer.ParentControl = activeEditControl;
		if (activeEditControl is ComboBox)
		{
			if (((ComboBox)activeEditControl).DroppedDown)
			{
				flag = false;
			}
			comboBox = (ComboBox)activeEditControl;
		}
		else
		{
			textBoxBase = (TextBoxBase)activeEditControl;
		}
		if (controlComboUpDownMode && (controlAutoMode == AutoCompleteModes.AutoAppend || controlAutoMode == AutoCompleteModes.Both) && comboUpDownState > 0)
		{
			int num2 = PopulateListWithMatches("", ref listDataView);
			if (num2 > 0)
			{
				if (comboUpDownState == 1)
				{
					dataRowView = GetAutoAppendEntryPrevious(currentText, listDataView, num);
				}
				else if (comboUpDownState == 2)
				{
					dataRowView = GetAutoAppendEntryNext(currentText, listDataView, num);
				}
				if (comboUpDownState > 0)
				{
					string empty = string.Empty;
					if (activeEditControl is ComboBox)
					{
						IgnoreChangeMessage++;
						empty = dataRowView[num].ToString();
						if (CaseSensitive && currentText.Length > 0 && empty.Length >= currentText.Length)
						{
							empty = currentText + empty.Substring(currentText.Length);
						}
						comboBox.Text = empty;
						IgnoreChangeMessage--;
						comboBox.SelectionStart = 0;
						comboBox.SelectionLength = comboBox.Text.Length;
					}
					else
					{
						IgnoreChangeMessage++;
						empty = dataRowView[num].ToString();
						if (CaseSensitive && currentText.Length > 0 && empty.Length >= currentText.Length)
						{
							empty = currentText + empty.Substring(currentText.Length);
						}
						textBoxBase.Text = empty;
						IgnoreChangeMessage--;
						textBoxBase.SelectionStart = 0;
						textBoxBase.SelectionLength = textBoxBase.TextLength;
					}
					object[] itemArray = dataRowView.Row.ItemArray;
					string newSelectedValue = string.Empty;
					SetSelectedItem(new AutoCompleteItem(itemArray, num));
					RaiseAutoCompleteItemSelectedEvent(itemArray, num, empty, ref newSelectedValue);
				}
			}
		}
		else
		{
			InitializeDropDown();
			if (flag && PopulateListWithMatches(currentText, ref listDataView) > 0)
			{
				if (controlAutoMode == AutoCompleteModes.AutoSuggest || controlAutoMode >= AutoCompleteModes.Both)
				{
					int num3 = 0;
					int num4 = 0;
					if (activeEditControl is ComboBox)
					{
						num3 = ((ComboBox)activeEditControl).SelectionStart;
						num4 = ((ComboBox)activeEditControl).SelectionLength;
					}
					else
					{
						num3 = ((TextBoxBase)activeEditControl).SelectionStart;
						num4 = ((TextBoxBase)activeEditControl).SelectionLength;
					}
					dataView = CreateDisplayDataView(listDataView, Columns);
					FillDropDownList(dataView, selectedEntry, num);
					if (!dropDownContainer.IsShowing())
					{
						UpdateDropDownListWidth();
						dropDownContainer.ShowPopup(location);
						activeEditControl.Focus();
					}
					else
					{
						dropDownContainer.AdjustPopupHostBounds();
					}
					if (activeEditControl is ComboBox)
					{
						((ComboBox)activeEditControl).SelectionStart = num3;
						((ComboBox)activeEditControl).SelectionLength = num4;
					}
					else
					{
						((TextBoxBase)activeEditControl).SelectionStart = num3;
						((TextBoxBase)activeEditControl).SelectionLength = num4;
					}
				}
				if ((controlAutoMode == AutoCompleteModes.AutoAppend || controlAutoMode == AutoCompleteModes.Both) && !IgnoreCompletion(currentText))
				{
					string empty2 = string.Empty;
					if (activeEditControl is ComboBox)
					{
						dataRowView = GetAutoAppendEntry(currentText, listDataView, num);
						IgnoreChangeMessage++;
						empty2 = dataRowView[num].ToString();
						if (CaseSensitive && currentText.Length > 0 && empty2.Length >= currentText.Length)
						{
							empty2 = currentText + empty2.Substring(currentText.Length);
						}
						comboBox.Text = empty2;
						comboBox.SelectionStart = currentText.Length;
						IgnoreChangeMessage--;
						comboBox.SelectionLength = comboBox.Text.Length - comboBox.SelectionStart;
					}
					else
					{
						dataRowView = GetAutoAppendEntry(currentText, listDataView, num);
						IgnoreChangeMessage++;
						empty2 = dataRowView[num].ToString();
						if (CaseSensitive && currentText.Length > 0 && empty2.Length >= currentText.Length)
						{
							empty2 = currentText + empty2.Substring(currentText.Length);
						}
						textBoxBase.Text = empty2;
						IgnoreChangeMessage--;
						textBoxBase.SelectionStart = currentText.Length;
						textBoxBase.SelectionLength = textBoxBase.TextLength - currentText.Length;
					}
					object[] itemArray2 = dataRowView.Row.ItemArray;
					string newSelectedValue2 = string.Empty;
					SetSelectedItem(new AutoCompleteItem(itemArray2, num));
					RaiseAutoCompleteItemSelectedEvent(itemArray2, num, empty2, ref newSelectedValue2);
				}
			}
			else
			{
				CloseDropDownCancel();
			}
		}
		preChangeText = currentText;
		comboUpDownState = 0;
		bProcessingAutoComplete = false;
	}

	public bool IsDropDownShowing()
	{
		if (dropDownContainer != null)
		{
			return dropDownContainer.IsShowing();
		}
		return false;
	}

	public int GetMatchesCount(string currentText)
	{
		DataView dataView = null;
		return PopulateListWithMatches(currentText, ref dataView);
	}

	public void ProcessAutoComplete(string currentText)
	{
		ProcessAutoComplete(currentText, string.Empty, Point.Empty);
	}

	public void ProcessAutoComplete(string currentText, string selectedEntry)
	{
		ProcessAutoComplete(currentText, selectedEntry, Point.Empty);
	}

	public object[] GetItemArray(string currentText)
	{
		DataRowView dataRowView = null;
		bool flag = false;
		int matchColumnIndex = GetMatchColumnIndex();
		for (int i = 0; i < tableData.DefaultView.Count; i++)
		{
			dataRowView = tableData.DefaultView[i];
			if (dataRowView[matchColumnIndex].ToString() == currentText)
			{
				flag = true;
				break;
			}
		}
		object[] result = null;
		if (dataRowView != null && flag)
		{
			result = dataRowView.Row.ItemArray;
		}
		return result;
	}

	public void UpdateSelectedItem(string currentText)
	{
		DataView dataView = null;
		DataRow matchingRow = null;
		AutoCompleteItem autoCompleteItem = null;
		int num = PopulateListWithMatches(currentText, ref dataView, exactMatch: true, ref matchingRow);
		if (num > 0 && matchingRow != null)
		{
			int matchColumnIndex = GetMatchColumnIndex();
			autoCompleteItem = new AutoCompleteItem(matchingRow.ItemArray, matchColumnIndex);
			SelectedIndex = FindIndex(matchingRow.Table, matchingRow);
			SelectedValue = matchingRow.ItemArray[matchColumnIndex].ToString();
		}
		SetSelectedItem(autoCompleteItem);
	}

	public virtual void SetSelectedItem(AutoCompleteItem item)
	{
		selectedItem = item;
	}

	public void FillDropDownList(DataView listDataView, string selectedEntry, int matchColumnIndex)
	{
		string empty = string.Empty;
		dropDownList.ImageColumnIndex = ImageColumnIndex;
		if (!dropDownList.DataSource.Equals(listDataView))
		{
			dropDownList.DataSource = listDataView;
			contentChanged = true;
		}
		if (AdjustHeightToItemCount && contentChanged)
		{
			dropDownList.AdjustHeight(PreferredHeight);
		}
		contentChanged = false;
		dropDownList.ResizeListColumns(dropDownList.Width);
		if (selectedEntry == null || !(selectedEntry != string.Empty) || matchColumnIndex >= listDataView.Table.Columns.Count)
		{
			return;
		}
		for (int i = 0; i < listDataView.Count; i++)
		{
			DataRowView dataRowView = listDataView[i];
			empty = dataRowView[matchColumnIndex].ToString().ToUpper();
			if (empty.CompareTo(selectedEntry.ToUpper()) == 0)
			{
				indexToEnsureVisible = i;
				dropDownList.SelectItem(i, selected: true);
				break;
			}
		}
	}

	public virtual void ResetHistory()
	{
		tableData.Clear();
	}

	public void SetActiveEditControl(IEditControlsEmbed parentControl, Control editControl)
	{
		if (parentControl == ActiveFocusControl && editControl != null)
		{
			editControl.TextChanged += HandleControlTextChanged;
			editControl.KeyDown += HandleControlKeyDown;
			editControl.DoubleClick += HandleControlDoubleClick;
			editControl.Click += HandleControlClick;
			editControl.Validated += HandleControlValidated;
			if (editControl is ComboBox)
			{
				((ComboBox)editControl).SelectionChangeCommitted += HandleControlSelectionChangeCommitted;
			}
		}
	}

	public bool RaiseBeforeAddItemEvent(DataRow newRow)
	{
		AutoCompleteAddItemCancelEventArgs e = new AutoCompleteAddItemCancelEventArgs();
		e.ImageColumnIndex = ImageColumnIndex;
		e.RowItem = newRow;
		OnBeforeAddItem(e);
		return e.Cancel;
	}

	public int GetImageColumnIndex()
	{
		return ImageColumnIndex;
	}

	public int GetColumnWidth(int columnIndex)
	{
		int actualIndex = GetActualIndex(columnIndex);
		if (Columns.Count > actualIndex)
		{
			return Columns[actualIndex].MinColumnWidth;
		}
		return MinColumnWidth;
	}

	public BindingManagerBase GetDataManager(object dataSource)
	{
		BindingManagerBase result = null;
		if (ParentForm != null && dataSource != null)
		{
			result = ParentForm.BindingContext[dataSource];
		}
		return result;
	}

	public void RefreshColumns()
	{
		try
		{
			SortedList sortedList = new SortedList();
			int num = 0;
			foreach (DataColumn column in tableData.Columns)
			{
				int num2 = 0;
				if (!sortedList.ContainsValue(num))
				{
					foreach (AutoCompleteDataColumnInfo column2 in Columns)
					{
						if (column.ColumnName == column2.ColumnName && !sortedList.ContainsKey(num2))
						{
							sortedList.Add(num2, num);
							break;
						}
						num2++;
					}
				}
				num++;
			}
			AutoCompleteDataColumnInfoCollection autoCompleteDataColumnInfoCollection = new AutoCompleteDataColumnInfoCollection(this);
			foreach (int key in sortedList.Keys)
			{
				autoCompleteDataColumnInfoCollection.Add(new AutoCompleteDataColumnInfo(Columns[key].ColumnHeaderText, Columns[key].MinColumnWidth, Columns[key].Visible));
				autoCompleteDataColumnInfoCollection[autoCompleteDataColumnInfoCollection.Count - 1].MatchingColumn = Columns[key].MatchingColumn;
				autoCompleteDataColumnInfoCollection[autoCompleteDataColumnInfoCollection.Count - 1].ImageColumn = Columns[key].ImageColumn;
			}
			num = 0;
			foreach (DataColumn column3 in tableData.Columns)
			{
				if (!sortedList.ContainsValue(num))
				{
					autoCompleteDataColumnInfoCollection.Add(new AutoCompleteDataColumnInfo(column3.ColumnName, MinColumnWidth, visible: true));
				}
				num++;
			}
			columnInfoList.Clear();
			columnInfoList = autoCompleteDataColumnInfoCollection;
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.Message);
			throw new Exception("There was a exception in synchronizing the column display data with the auto complete data. Please check the inner exception for more details.", ex);
		}
	}

	bool IExtenderProvider.CanExtend(object target)
	{
		try
		{
			if (target is TextBox || target is ComboBox || target is IEditControlsEmbed)
			{
				return true;
			}
		}
		catch
		{
			return false;
		}
		return false;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		bool result = false;
		if (m.Msg == 256)
		{
			Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
			if (activeEditControl != null)
			{
				Keys keys = (Keys)m.WParam.ToInt32();
				Form form = activeEditControl.FindForm();
				if (form != null && dropDownContainer != null && dropDownContainer.IsShowing())
				{
					if (form.AcceptButton != null && (keys == Keys.Return || keys == Keys.Return))
					{
						AddItemOnValidate(activeEditControl);
						if (IsDropDownShowing())
						{
							dropDownContainer.HidePopup(PopupCloseType.Done);
						}
						result = true;
					}
					else if (form.CancelButton != null && keys == Keys.Escape)
					{
						CloseDropDownCancel();
						result = true;
					}
				}
			}
		}
		return result;
	}

	[DefaultValue(AutoCompleteModes.Disabled)]
	[Category("AutoComplete")]
	public void SetAutoComplete(Control control, AutoCompleteModes enableAutoComplete)
	{
		targetEnabledMap[control] = (int)enableAutoComplete;
		if (enableAutoComplete != AutoCompleteModes.Disabled)
		{
			AdwiseControlEvents(control);
		}
		else
		{
			UnadwiseControlEvents(control);
		}
	}

	private void UnadwiseControlEvents(Control control)
	{
		control.Enter -= HandleControlEnter;
		control.GotFocus -= HandleControlEnter;
		control.Leave -= HandleControlLeave;
	}

	private void AdwiseControlEvents(Control control)
	{
		control.Enter += HandleControlEnter;
		control.GotFocus += HandleControlEnter;
		control.Leave += HandleControlLeave;
	}

	[DefaultValue(false)]
	[Category("AutoComplete")]
	public void SetAutoCompleteComboUpDown(Control control, bool enableComboUpDown)
	{
		targetComboUpDownMap[control] = enableComboUpDown;
	}

	[DefaultValue(AutoCompleteModes.Disabled)]
	[Category("AutoComplete")]
	public AutoCompleteModes GetAutoComplete(Control control)
	{
		int result = 0;
		if (targetEnabledMap[control] != null)
		{
			result = (int)targetEnabledMap[control];
		}
		return (AutoCompleteModes)result;
	}

	[Category("AutoComplete")]
	public bool GetAutoCompleteComboUpDown(Control control)
	{
		bool result = false;
		if (targetComboUpDownMap[control] != null && targetComboUpDownMap.Contains(control))
		{
			result = (bool)targetComboUpDownMap[control];
		}
		return result;
	}

	public void AddHistoryItem(string newItem)
	{
		if (newItem != null && newItem != string.Empty)
		{
			AddHistoryItem(newItem, -1);
		}
	}

	public virtual void SaveCurrentState()
	{
		RegistryKey currentUser = Registry.CurrentUser;
		currentUser = currentUser.CreateSubKey("Software\\Syncfusion\\AutoComplete");
		AppStateSerializer serializer = new AppStateSerializer(SerializeMode.WindowsRegistry, currentUser);
		SaveCurrentState(serializer);
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible SaveCurrentState(AppStateSerializer) variant, instead.", false)]
	public virtual void SaveCurrentState(SerializeMode mode, object persistpath)
	{
		string empty = string.Empty;
		try
		{
			if (!(CategoryName == string.Empty))
			{
				AutoCompleteInfo autoCompleteInfo = new AutoCompleteInfo();
				autoCompleteInfo.CompleteList = tableData;
				if (mode == SerializeMode.WindowsRegistry && persistpath == null)
				{
					persistpath = Registry.CurrentUser;
					persistpath = ((RegistryKey)persistpath).CreateSubKey("Software\\Syncfusion\\AutoComplete");
					empty = CategoryName;
				}
				AppStateSerializer appStateSerializer = new AppStateSerializer(mode, persistpath);
				appStateSerializer.SerializeObject(empty, autoCompleteInfo);
				appStateSerializer.PersistNow();
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	public virtual void SaveCurrentState(AppStateSerializer serializer)
	{
		string empty = string.Empty;
		try
		{
			if (!(CategoryName == string.Empty))
			{
				empty = CategoryName;
				AutoCompleteInfo autoCompleteInfo = new AutoCompleteInfo();
				autoCompleteInfo.CompleteList = tableData;
				serializer.SerializeObject(empty, autoCompleteInfo);
				serializer.PersistNow();
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	public bool LoadCurrentState()
	{
		RegistryKey currentUser = Registry.CurrentUser;
		currentUser = currentUser.CreateSubKey("Software\\Syncfusion\\AutoComplete");
		AppStateSerializer serializer = new AppStateSerializer(SerializeMode.WindowsRegistry, currentUser);
		return LoadCurrentState(serializer);
	}

	public virtual bool LoadCurrentState(AppStateSerializer serializer)
	{
		try
		{
			string strname = CategoryName;
			AutoCompleteInfo autoCompleteInfo = new AutoCompleteInfo();
			if (!(serializer.DeserializeObject(strname) is AutoCompleteInfo { CompleteList: not null } autoCompleteInfo2))
			{
				tableData = new DataTable();
				return false;
			}
			tableData = autoCompleteInfo2.CompleteList;
			return true;
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible LoadCurrentState(AppStateSerializer) variant, instead.", false)]
	public virtual bool LoadCurrentState(SerializeMode mode, object persistPath)
	{
		try
		{
			if (CategoryName == null)
			{
				return false;
			}
			string empty = string.Empty;
			AutoCompleteInfo autoCompleteInfo = new AutoCompleteInfo();
			if (mode == SerializeMode.WindowsRegistry && persistPath == null)
			{
				persistPath = Registry.CurrentUser;
				persistPath = ((RegistryKey)persistPath).CreateSubKey("Software\\Syncfusion\\AutoComplete");
				empty = CategoryName;
			}
			AppStateSerializer appStateSerializer = new AppStateSerializer(mode, persistPath);
			if (!(appStateSerializer.DeserializeObject(empty) is AutoCompleteInfo autoCompleteInfo2))
			{
				tableData = new DataTable();
				return false;
			}
			tableData = autoCompleteInfo2.CompleteList;
		}
		catch (Exception ex)
		{
			throw ex;
		}
		return true;
	}

	public void CloseDropDown()
	{
		if (IsDropDownShowing())
		{
			dropDownContainer.HidePopup(PopupCloseType.Canceled);
		}
	}

	private string RaisePreMatchItemEvent(string currentText)
	{
		AutoCompletePreMatchItemEventArgs e = new AutoCompletePreMatchItemEventArgs(currentText);
		OnPreMatchItemEvent(e);
		return e.CurrentText;
	}

	private void RaiseTargetChangingEvent(Control editControl, bool isLeaving)
	{
		AutoCompleteTargetChangingEventArgs args = new AutoCompleteTargetChangingEventArgs(editControl, isLeaving);
		OnTargetChanging(args);
	}

	private bool RaiseAutoCompleteItemSelectedEvent(object[] itemArray, int matchColumnIndex, string selectedValue, ref string newSelectedValue)
	{
		AutoCompleteItemEventArgs e = new AutoCompleteItemEventArgs(itemArray, matchColumnIndex);
		e.SelectedValue = selectedValue;
		OnAutoCompleteItemSelected(e);
		try
		{
			if (e.Handled)
			{
				newSelectedValue = e.SelectedValue;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw ex;
			}
		}
		return e.Handled;
	}

	protected bool RaiseMatchItemEvent(string currentText, string possibleMatch)
	{
		AutoCompleteMatchItemEventArgs e = new AutoCompleteMatchItemEventArgs(currentText, possibleMatch);
		OnMatchItem(e);
		return e.Cancel;
	}

	private void RaiseAutoCompleteItemBrowsedEvent(object[] itemArray, int matchColumnIndex)
	{
		AutoCompleteItemEventArgs args = new AutoCompleteItemEventArgs(itemArray, matchColumnIndex);
		OnAutoCompleteItemBrowsed(args);
	}

	private void SerializeList()
	{
		try
		{
			if (autoSerializeValue && !base.DesignMode && dataSource == null && CategoryName != null && CategoryName != string.Empty)
			{
				SaveCurrentState();
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	private void DeSerializeList()
	{
		try
		{
			if (autoSerializeValue && !base.DesignMode && dataSource == null && CategoryName != null && CategoryName != string.Empty)
			{
				LoadCurrentState();
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	private void LoadDropDownSizeState()
	{
		AppStateSerializer singleton = AppStateSerializer.GetSingleton();
		if (!(singleton.DeserializeObject("AutoComplete" + nCounter) is AutoCompleteStateSerializer autoCompleteStateSerializer))
		{
			return;
		}
		if (AutoCompletePopup.PopupHost == null)
		{
			SizablePopupHost sizablePopupHost = new SizablePopupHost(dropDownList);
			sizablePopupHost.ShowCloseButton = true;
			sizablePopupHost.ShowGripper = true;
			sizablePopupHost.LastSize = new Size(autoCompleteStateSerializer.DropDownWidth, autoCompleteStateSerializer.DropDownHeight);
			AutoCompletePopup.PopupHost = sizablePopupHost;
		}
		else
		{
			PopupHost popupHost = AutoCompletePopup.PopupHost;
			if (popupHost != null)
			{
				((SizablePopupHost)popupHost).LastSize = new Size(autoCompleteStateSerializer.DropDownWidth, autoCompleteStateSerializer.DropDownHeight);
			}
		}
	}

	private void SaveDropDownSizeState()
	{
		AppStateSerializer singleton = AppStateSerializer.GetSingleton();
		AutoCompleteStateSerializer obj = new AutoCompleteStateSerializer(this);
		singleton.SerializeObject("AutoComplete" + nCounter, obj);
	}

	private int GetActualIndex(int visibleIndex)
	{
		int num = 0;
		int num2 = 0;
		foreach (AutoCompleteDataColumnInfo column in Columns)
		{
			if (column.Visible || column.ImageColumn)
			{
				if (num == visibleIndex)
				{
					return num2;
				}
				num++;
			}
			num2++;
		}
		return visibleIndex;
	}

	private int GetMatchColumnIndexInDataTable(string matchColumnName)
	{
		int num = 0;
		foreach (DataColumn column in tableData.Columns)
		{
			if (!(column.ColumnName == matchColumnName))
			{
				num++;
				continue;
			}
			break;
		}
		return num;
	}

	private int GetMatchColumnIndexInDataView(string matchColumnName, ref DataView dataView)
	{
		int num = 0;
		foreach (DataColumn column in dataView.Table.Columns)
		{
			if (!(column.ColumnName == matchColumnName))
			{
				num++;
				continue;
			}
			break;
		}
		return num;
	}

	private string GetMatchColumnHeaderText()
	{
		for (int i = 0; i < Columns.Count; i++)
		{
			if (Columns[i].MatchingColumn)
			{
				return Columns[i].ColumnHeaderText;
			}
		}
		if (Columns.Count > 0)
		{
			return Columns[0].ColumnHeaderText;
		}
		return string.Empty;
	}

	private string FormatStringForSQL(string incomingText)
	{
		string text = string.Empty;
		try
		{
			if (incomingText.Length > 0)
			{
				text = incomingText;
				text = text.Replace("’", "'");
				text = text.Replace("‘", "'");
				text = text.Replace("'", "''");
				text = text.Replace("[", "[[]");
				text = text.Replace("%", "[%]");
				text = text.Replace("*", "[*]");
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.Message);
		}
		return text;
	}

	private void CloseDropDownCancel()
	{
		SetSelectedItem(null);
		CloseDropDown();
	}

	private AutoCompleteModes GetControlAutoMode()
	{
		AutoCompleteModes result = AutoCompleteModes.Disabled;
		try
		{
			if (targetEnabledMap != null && ActiveFocusControl != null)
			{
				result = (AutoCompleteModes)targetEnabledMap[ActiveFocusControl];
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
		return result;
	}

	private bool GetControlComboUpDownMode()
	{
		bool result = false;
		try
		{
			if (targetComboUpDownMap != null && ActiveFocusControl != null && targetComboUpDownMap.Contains(ActiveFocusControl))
			{
				result = (bool)targetComboUpDownMap[ActiveFocusControl];
			}
		}
		catch (Exception ex)
		{
			throw ex;
		}
		return result;
	}

	private int GetMatchColumnIndex()
	{
		int result = 0;
		string matchColumnName = MatchColumnName;
		for (int i = 0; i < tableData.Columns.Count; i++)
		{
			if (matchColumnName == tableData.Columns[i].ColumnName)
			{
				result = i;
				break;
			}
		}
		return result;
	}

	private DataRowView GetAutoAppendEntry(string currentText, DataView dataView, int matchColumnIndex)
	{
		int recordIndex = 0;
		BindingManagerBase dataManager = GetDataManager(DataSource);
		if (dataView.Count == 0)
		{
			return null;
		}
		if (!IsDropDownShowing())
		{
			for (int i = 0; i < dataView.Count; i++)
			{
				DataRowView dataRowView = dataView[i];
				if (!(dataRowView[matchColumnIndex].ToString() != currentText))
				{
					continue;
				}
				recordIndex = i;
				if (ChangeDataManagerPosition)
				{
					int actualRowIndex = GetActualRowIndex(dataView, i, matchColumnIndex);
					if (dataManager != null && dataManager.Position != actualRowIndex && actualRowIndex != -1)
					{
						dataManager.Position = actualRowIndex;
					}
				}
				break;
			}
		}
		return dataView[recordIndex];
	}

	private int GetActualRowIndex(DataView dataView, int index, int matchColumnIndex)
	{
		int num = 0;
		object[] array = dataView[index].Row.ItemArray;
		int num2 = array.Length;
		if (num2 > 32)
		{
			object[] itemArray = dataView[index].Row.ItemArray;
			array = new object[32];
			for (int i = 0; i < 32; i++)
			{
				array[i] = itemArray[i];
			}
		}
		DataRow dataRow = dataView.Table.Rows.Find(array);
		_ = string.Empty;
		DataView defaultView = dataView.Table.DefaultView;
		defaultView.Sort = dataView.Table.Columns[matchColumnIndex].ColumnName;
		return defaultView.Find(dataRow.ItemArray[matchColumnIndex]);
	}

	private DataRowView GetAutoAppendEntryPrevious(string currentText, DataView dataView, int matchColumnIndex)
	{
		int num = 0;
		BindingManagerBase dataManager = GetDataManager(DataSource);
		for (int i = 0; i < dataView.Count; i++)
		{
			DataRowView dataRowView = dataView[i];
			if (dataRowView[matchColumnIndex].ToString() == currentText)
			{
				num = Math.Min(dataView.Count - 1, i + 1);
				if (ChangeDataManagerPosition && dataManager != null && dataManager.Position != num)
				{
					dataManager.Position = num;
				}
				break;
			}
		}
		return dataView[num];
	}

	private DataRowView GetAutoAppendEntryNext(string currentText, DataView dataView, int matchColumnIndex)
	{
		int num = 0;
		BindingManagerBase dataManager = GetDataManager(DataSource);
		for (int i = 0; i < dataView.Count; i++)
		{
			DataRowView dataRowView = dataView[i];
			if (dataRowView[matchColumnIndex].ToString() == currentText)
			{
				num = Math.Max(0, i - 1);
				if (ChangeDataManagerPosition && dataManager != null && dataManager.Position != num)
				{
					dataManager.Position = num;
				}
				break;
			}
		}
		return dataView[num];
	}

	private int FindIndex(DataTable dt, DataRow dr)
	{
		for (int i = 0; i < dt.Rows.Count; i++)
		{
			if (object.ReferenceEquals(dt.Rows[i], dr))
			{
				return i;
			}
		}
		return -1;
	}

	private Control GetActiveEditControl(Control activeControl)
	{
		Control result = null;
		if (activeControl is IEditControlsEmbed)
		{
			result = ((IEditControlsEmbed)ActiveFocusControl).GetActiveEditControl(this);
		}
		else if (activeControl is ComboBox || activeControl is TextBox)
		{
			result = ActiveFocusControl;
		}
		return result;
	}

	private DataView GetDataView(string sText, bool exactMatch, bool bExtended)
	{
		string text = "";
		string text2 = " LIKE '";
		if (exactMatch)
		{
			text2 += sText;
		}
		else
		{
			if (bExtended)
			{
				text2 += "*";
			}
			text2 = text2 + sText + "*";
		}
		text2 += "'";
		foreach (AutoCompleteDataColumnInfo column in Columns)
		{
			if (!column.ImageColumn)
			{
				DataColumn dataColumn = tableData.Columns[column.ColumnName];
				if (text.Length > 0)
				{
					text += " OR ";
				}
				string text3 = text;
				text = text3 + "[" + dataColumn.ColumnName + "]" + text2;
			}
		}
		return new DataView(tableData, text, null, DataViewRowState.CurrentRows);
	}

	private DataView CreateDisplayDataView(DataView listDataView, AutoCompleteDataColumnInfoCollection columnsInfo)
	{
		DataView dataView = new DataView();
		DataTable dataTable = new DataTable();
		ArrayList arrayList = new ArrayList();
		int num = 0;
		int num2 = 0;
		foreach (AutoCompleteDataColumnInfo item in columnsInfo)
		{
			num2 = 0;
			if (!item.Visible && !item.ImageColumn)
			{
				continue;
			}
			foreach (DataColumn column in listDataView.Table.Columns)
			{
				if (column.ColumnName == item.ColumnName && !dataTable.Columns.Contains(item.ColumnHeaderText))
				{
					arrayList.Add(num2);
					dataTable.Columns.Add(item.ColumnHeaderText);
					break;
				}
				num2++;
			}
		}
		foreach (DataRowView item2 in listDataView)
		{
			DataRow dataRow = dataTable.NewRow();
			num = 0;
			foreach (int item3 in arrayList)
			{
				dataRow[num] = item2[item3];
				num++;
			}
			dataTable.Rows.Add(dataRow);
		}
		return dataTable.DefaultView;
	}

	private void SetSelectedValue(string selectedValue)
	{
		Control activeEditControl = GetActiveEditControl(ActiveFocusControl);
		if (activeEditControl != null)
		{
			IgnoreChangeMessage++;
			string text = selectedValue;
			if (CaseSensitive && currentTextBeingMatched.Length > 0 && text.Length >= currentTextBeingMatched.Length)
			{
				text = currentTextBeingMatched + text.Substring(currentTextBeingMatched.Length);
			}
			activeEditControl.Text = text;
			IgnoreChangeMessage--;
			if (activeEditControl is TextBox)
			{
				((TextBox)activeEditControl).SelectionStart = selectedValue.Length;
				((TextBox)activeEditControl).SelectionLength = 0;
			}
			else if (activeEditControl is ComboBox)
			{
				((ComboBox)activeEditControl).SelectionStart = selectedValue.Length;
				((ComboBox)activeEditControl).SelectionLength = 0;
			}
		}
	}

	private void AddItemOnValidate(Control editControl)
	{
		string newItem = string.Empty;
		bool flag = false;
		if (AutoAddItem)
		{
			if (editControl is ComboBox)
			{
				if (((ComboBox)editControl).SelectedIndex == -1)
				{
					newItem = editControl.Text;
					flag = true;
					if (editControl is ComboBoxAutoComplete comboBoxAutoComplete)
					{
						flag = flag && comboBoxAutoComplete.AllowNewText;
					}
				}
			}
			else if (editControl is TextBox)
			{
				newItem = editControl.Text;
				flag = true;
			}
		}
		if (flag)
		{
			AddHistoryItem(newItem);
			SerializeList();
			RefreshColumns();
		}
	}

	internal AutoCompleteModes GetAutoComplete()
	{
		return GetControlAutoMode();
	}

	internal Control GetActiveEditControl()
	{
		return GetActiveEditControl(ActiveFocusControl);
	}
}
