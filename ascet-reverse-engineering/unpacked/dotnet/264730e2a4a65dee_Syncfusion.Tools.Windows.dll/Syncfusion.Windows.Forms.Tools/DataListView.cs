using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class DataListView : ListView
{
	private const int WS_EX_LAYOUTRTL = 4194304;

	private const int WS_EX_NOINHERITLAYOUT = 1048576;

	private Container components;

	private object dataSource = new object();

	private bool imageFromOwner;

	private IDataListViewOwner listOwner;

	private int imageColumnIndex = -1;

	private bool _mirrored;

	[Description("Change to the right-to-left layout.")]
	[Browsable(true)]
	[DefaultValue(false)]
	[Localizable(true)]
	[Category("Appearance")]
	public bool Mirrored
	{
		get
		{
			return _mirrored;
		}
		set
		{
			if (_mirrored != value)
			{
				_mirrored = value;
				base.OnRightToLeftChanged(EventArgs.Empty);
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (_mirrored)
			{
				createParams.ExStyle = createParams.ExStyle | 0x400000 | 0x100000;
			}
			return createParams;
		}
	}

	[DefaultValue(-1)]
	[Description("Indicates the index of the image column in the data")]
	public int ImageColumnIndex
	{
		get
		{
			return imageColumnIndex;
		}
		set
		{
			imageColumnIndex = value;
		}
	}

	[DefaultValue(null)]
	[Description("The owner object that will provide formatting information")]
	public IDataListViewOwner ListOwner
	{
		get
		{
			return listOwner;
		}
		set
		{
			listOwner = value;
			imageColumnIndex = listOwner.GetImageColumnIndex();
		}
	}

	[DefaultValue(false)]
	[Description("TSpecifies if the image field will be provided by the Owner object")]
	public bool ImageFromOwner
	{
		get
		{
			return imageFromOwner;
		}
		set
		{
			imageFromOwner = value;
		}
	}

	[Category("Data")]
	[Description("Indicates the source of data for the DataListView")]
	[DefaultValue(null)]
	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	[RefreshProperties(RefreshProperties.Repaint)]
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
				object oldDataSource = dataSource;
				dataSource = value;
				OnDataSourceChanged(oldDataSource, dataSource);
				PopulateList();
			}
		}
	}

	public DataListView()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		InitializeComponent();
		base.View = View.Details;
		base.FullRowSelect = true;
	}

	protected override void OnResize(EventArgs e)
	{
		base.OnResize(e);
		ResizeListColumns(base.Width);
	}

	public virtual void PopulateList()
	{
		if (DataSource != null)
		{
			SetColumns();
			SetData();
		}
	}

	public void SetColumns()
	{
		try
		{
			Clear();
			if (DataSource != null && DataSource is DataTable)
			{
				DataTable dataTable = (DataTable)dataSource;
				int num = 0;
				{
					foreach (DataColumn column in dataTable.Columns)
					{
						if (num != imageColumnIndex && column.ColumnMapping != MappingType.Hidden)
						{
							AddColumn(column, num);
						}
						num++;
					}
					return;
				}
			}
			if (DataSource != null && DataSource is DataView)
			{
				DataView dataView = (DataView)dataSource;
				int num2 = 0;
				{
					foreach (DataColumn column2 in dataView.Table.Columns)
					{
						if (num2 != imageColumnIndex && column2.ColumnMapping != MappingType.Hidden)
						{
							AddColumn(column2, num2);
						}
						num2++;
					}
					return;
				}
			}
			AddColumn(string.Empty, 0);
		}
		catch (Exception innerException)
		{
			throw new Exception("There was a problem setting the columns in the DataListView.", innerException);
		}
	}

	public virtual void AdjustHeight(int maxHeight)
	{
		if (base.Items.Count > 0)
		{
			int adjustedMaxHeight = GetAdjustedMaxHeight(maxHeight);
			int num = GetItemRect(0).Height * base.Items.Count + GetItemRect(0).Height;
			if (num < adjustedMaxHeight)
			{
				base.Height = num;
			}
			else
			{
				base.Height = adjustedMaxHeight;
			}
		}
	}

	protected virtual int GetAdjustedMaxHeight(int actualMaxHeight)
	{
		int num = actualMaxHeight / GetItemRect(0).Height;
		return num * GetItemRect(0).Height;
	}

	protected virtual void OnDataSourceChanged(object oldDataSource, object newDataSource)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
				components = null;
			}
			if (dataSource != null)
			{
				dataSource = null;
			}
			listOwner = null;
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		if (this.ListOwner != null && this.ListOwner is Syncfusion.Windows.Forms.Tools.AutoComplete)
		{
			Syncfusion.Windows.Forms.Tools.AutoComplete autoComplete = (Syncfusion.Windows.Forms.Tools.AutoComplete)this.ListOwner;
			base.AccessibleDescription = autoComplete.AccessibleDescription;
			base.AccessibleName = autoComplete.AccessibleName;
			base.AccessibleRole = base.AccessibleRole;
		}
	}

	private void AddColumn(object column, int index)
	{
		ColumnHeader columnHeader = new ColumnHeader();
		if (column is DataColumn)
		{
			columnHeader.Text = ((DataColumn)column).ColumnName;
		}
		if (ListOwner != null)
		{
			columnHeader.Width = ListOwner.GetColumnWidth(index);
		}
		else
		{
			columnHeader.Width = AutoComplete.MinColumnWidth;
		}
		base.Columns.Add(columnHeader);
	}

	public void SetData()
	{
		if (DataSource is DataTable)
		{
			DataTable dataTable = (DataTable)dataSource;
			for (int i = 0; i < dataTable.Rows.Count; i++)
			{
				AddListRow(dataTable.Rows[i]);
			}
			return;
		}
		if (DataSource is DataView)
		{
			DataView dataView = (DataView)dataSource;
			{
				foreach (DataRowView item in dataView)
				{
					AddListRow(item);
				}
				return;
			}
		}
		if (DataSource is IList || DataSource is IListSource)
		{
			IList list = null;
			list = ((!(DataSource is IListSource)) ? ((IList)DataSource) : ((IListSource)DataSource).GetList());
			for (int j = 0; j < list.Count; j++)
			{
				AddListRow(list[j]);
			}
		}
	}

	private void AddListRow(object currentRow)
	{
		try
		{
			ListViewItem listViewItem = new ListViewItem();
			if (currentRow is DataRow)
			{
				int count = ((DataRow)currentRow).Table.Columns.Count;
				object[] array = new object[count];
				array = ((DataRow)currentRow).ItemArray;
				for (int i = 0; i < count; i++)
				{
					if (i != ImageColumnIndex)
					{
						if (i == 0)
						{
							listViewItem.Text = array[i].ToString();
						}
						else
						{
							listViewItem.SubItems.Add(array[i].ToString());
						}
					}
					else
					{
						string value = array[i].ToString();
						listViewItem.ImageIndex = Convert.ToInt16(value);
					}
				}
			}
			else if (currentRow is DataRowView)
			{
				int count2 = ((DataRowView)currentRow).DataView.Table.Columns.Count;
				object[] array2 = new object[count2];
				array2 = ((DataRowView)currentRow).Row.ItemArray;
				for (int j = 0; j < count2; j++)
				{
					if (j != ImageColumnIndex)
					{
						if (j == 0)
						{
							listViewItem.Text = array2[j].ToString();
						}
						else
						{
							listViewItem.SubItems.Add(array2[j].ToString());
						}
					}
					else if (array2[j] != null)
					{
						string text = array2[j].ToString();
						if (text != null && text != string.Empty)
						{
							listViewItem.ImageIndex = Convert.ToInt16(text);
						}
					}
				}
			}
			else
			{
				listViewItem.Text = currentRow.ToString();
			}
			base.Items.Add(listViewItem);
		}
		catch (Exception value2)
		{
			Console.WriteLine(value2);
		}
	}

	public virtual void ResizeListColumns(int totalWidth)
	{
		try
		{
			int num = 0;
			int num2 = 0;
			int num3 = ImageColumnIndex;
			int num4 = 0;
			if (base.Columns.Count > 0)
			{
				for (int i = 0; i < base.Columns.Count; i++)
				{
					if (ListOwner != null)
					{
						if (i != num3)
						{
							num += ListOwner.GetColumnWidth(i);
						}
					}
					else if (i != num3)
					{
						num += AutoComplete.MinColumnWidth;
					}
				}
			}
			if (num >= totalWidth - 20)
			{
				return;
			}
			num2 = ((base.Columns.Count <= 0) ? (totalWidth - 20 - num) : ((totalWidth - 20 - num) / base.Columns.Count));
			for (int j = 0; j < base.Columns.Count; j++)
			{
				if (ListOwner != null)
				{
					if (j != num3)
					{
						num4 = ListOwner.GetColumnWidth(j);
					}
				}
				else if (j != num3)
				{
					num4 = AutoComplete.MinColumnWidth;
				}
				base.Columns[j].Width = num4 + num2;
			}
		}
		catch
		{
		}
	}
}
