using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Designer("Syncfusion.Windows.Forms.Tools.Design.ButtonEditDesigner", typeof(IDesigner))]
[ToolboxItem(false)]
[DocumentationExclude]
public class DataLookupEdit : ButtonEdit, IDataListViewOwner
{
	private ButtonEditChildButton btnDown;

	private SizablePopupControlContainer dropDownContainer;

	private DataListView dropDownList;

	private AutoCompleteDataColumnInfoCollection columnInfoList;

	private bool isInitialized;

	private ImageList imageListValue;

	private Container components;

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("AutoComplete")]
	[Description("The collection of Columns for the drop down list when in AutoSuggest\r\n\t\tMode.")]
	[MergableProperty(false)]
	public AutoCompleteDataColumnInfoCollection Columns
	{
		get
		{
			return columnInfoList;
		}
		set
		{
			columnInfoList = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("The drop down list that is displayed with the matching items\r\n\t\twhen the mode is AutoSuggest.")]
	[Category("AutoComplete")]
	[Browsable(false)]
	public DataListView DropDownList
	{
		get
		{
			return dropDownList;
		}
		set
		{
			dropDownList = value;
		}
	}

	[Browsable(true)]
	[Description("The imagelist to be used by the control to display icons\r\n\t\tfor the items in the history list")]
	[Category("AutoComplete")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
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

	public DataListView ListView
	{
		get
		{
			return dropDownList;
		}
		set
		{
			dropDownList = value;
		}
	}

	[DefaultValue(null)]
	[Description("Indicates the source of data for the DataButtonEdit")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Data")]
	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	public object DataSource
	{
		get
		{
			if (DataListView != null)
			{
				return DataListView.DataSource;
			}
			return null;
		}
		set
		{
			DataListView.DataSource = value;
		}
	}

	[Browsable(false)]
	public DataListView DataListView
	{
		get
		{
			return dropDownList;
		}
		set
		{
			dropDownList = value;
		}
	}

	public event CancelEventHandler BeforeDataListPopupDisplay;

	public int GetImageColumnIndex()
	{
		return -1;
	}

	public int GetColumnWidth(int columnIndex)
	{
		return 100;
	}

	public DataLookupEdit()
	{
		InitializeComponent();
		imageListValue = null;
		btnDown = new ButtonEditChildButton();
		isInitialized = false;
		SuspendLayout();
		base.Buttons.Add(btnDown);
		btnDown.ButtonAlign = ButtonAlignment.Right;
		btnDown.ButtonType = ButtonTypes.Down;
		btnDown.Click += HandleDownBtnClick;
		dropDownList = new DataListView();
		dropDownContainer = new SizablePopupControlContainer(DropDownList);
		ResumeLayout();
	}

	public AutoCompleteDataColumnInfoCollection GetColumns()
	{
		return Columns;
	}

	protected virtual bool InitializeDropDown()
	{
		try
		{
			if (!isInitialized)
			{
				if (Columns.Count == 0)
				{
					Columns.Add(new AutoCompleteDataColumnInfo(string.Empty, 150, visible: true));
				}
				if (dropDownList == null)
				{
					dropDownList = new DataListView();
				}
				if (dropDownContainer == null)
				{
					dropDownContainer = new SizablePopupControlContainer(DropDownList);
				}
				WireEvents();
				isInitialized = true;
				DropDownList.ListOwner = this;
				dropDownContainer.InitializeContainer();
			}
		}
		catch
		{
			return false;
		}
		return true;
	}

	protected virtual void WireEvents()
	{
		dropDownContainer.CloseUp += HandlePopupClosed;
		dropDownList.SelectedIndexChanged += HandleListSelectionChanged;
		dropDownList.DoubleClick += HandleListDoubleClick;
	}

	private void HandleListSelectionChanged(object sender, EventArgs e)
	{
		_ = string.Empty;
	}

	private void SetSelectedValue(string selectedValue)
	{
		base.TextBox.Text = selectedValue;
	}

	private void HandlePopupClosed(object sender, PopupClosedEventArgs e)
	{
		if (e.PopupCloseType == PopupCloseType.Done)
		{
			string empty = string.Empty;
			if (dropDownList.SelectedItems.Count > 0)
			{
				empty = dropDownList.SelectedItems[0].Text;
			}
			SetSelectedValue(empty);
		}
	}

	private void HandleListDoubleClick(object sender, EventArgs e)
	{
		if (IsDropDownShowing())
		{
			dropDownContainer.HidePopup(PopupCloseType.Done);
		}
	}

	private bool IsDropDownShowing()
	{
		if (dropDownContainer != null)
		{
			return dropDownContainer.IsShowing();
		}
		return false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
	}

	private void HandleDownBtnClick(object sender, EventArgs e)
	{
		if (!IsDropDownShowing())
		{
			DisplayDataListView();
		}
	}

	public void DisplayDataListView()
	{
		ShowDataListView(Point.Empty);
	}

	public void ShowDataListView(Point location)
	{
		InitializeDropDown();
		dropDownContainer.ParentControl = this;
		if (DataListView.DataSource != null)
		{
			DataListView.PopulateList();
		}
		dropDownContainer.ShowPopup(location);
	}

	protected bool RaiseBeforeDataListPopupDisplayEvent()
	{
		bool cancel = false;
		CancelEventArgs args = new CancelEventArgs(cancel);
		return OnBeforeDataListPopupDisplay(args);
	}

	protected virtual bool OnBeforeDataListPopupDisplay(CancelEventArgs args)
	{
		if (this.BeforeDataListPopupDisplay != null)
		{
			this.BeforeDataListPopupDisplay(this, args);
		}
		return args.Cancel;
	}

	private void HandleDataListPopupClosedEvent(object sender, EventArgs e)
	{
		CloseDataList();
	}

	public void CloseDataList()
	{
		if (dropDownContainer.IsShowing())
		{
			dropDownContainer.HidePopup(PopupCloseType.Done);
		}
	}

	private void HandleDataListPopupContainerBeforePopup(object sender, CancelEventArgs e)
	{
	}
}
