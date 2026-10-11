using System;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFilterBar
{
	private GridDataBoundGrid _grid;

	private int _row;

	private DataTable _dataTable;

	private GridStyleInfo _style;

	private bool _parenthesesAroundColumnFilters = true;

	private string _rowFilter;

	[DocumentationExclude]
	protected string originalFilterOnTable = string.Empty;

	[DocumentationExclude]
	protected string originalSortOnTable = string.Empty;

	[DocumentationExclude]
	protected DataView originalDataView;

	private string saveOriginalText;

	public string[] GridFilterBarStrings = new string[18]
	{
		"(none)", "(custom)", "equals", "does not equal", "is greater than", "is greater than or equal to", "is less than", "is less than or equal to", "begins with", "does not begin with",
		"ends with", "does not end with", "contains", "does not contain", "Use * to represent any series of characters", "Show rows where:", "Improper custom filter: ", " and "
	};

	internal int _none_;

	internal int _custom_ = 1;

	internal int _equals_ = 2;

	internal int does_not_equal = 3;

	internal int is_greater_than = 4;

	internal int is_greater_than_or_equal_to = 5;

	internal int is_less_than = 6;

	internal int is_less_than_or_equal_to = 7;

	internal int begins_with = 8;

	internal int does_not_begin_with = 9;

	internal int ends_with = 10;

	internal int does_not_end_with = 11;

	internal int _contains_ = 12;

	internal int does_not_contain = 13;

	internal int Use_to_represent_any_series_of_characters = 14;

	internal int Show_rows_where = 15;

	internal int Improper_custom_filter = 16;

	internal int _and_ = 17;

	public string RowFilter
	{
		get
		{
			string result = _rowFilter;
			if (originalFilterOnTable.Length > 0)
			{
				result = ((_rowFilter.Length <= 0) ? originalFilterOnTable : $"({originalFilterOnTable}) AND ({_rowFilter})");
			}
			return result;
		}
		set
		{
			if (!(_rowFilter != value))
			{
				return;
			}
			_rowFilter = value;
			OnFilterBarTextChanged(new GridFilterBarTextChangedEventArgs());
			try
			{
				GridDataBoundGrid grid = GetGrid();
				DataTable dataTable = GetDataTable();
				int filterRow = GetFilterRow();
				if (grid != null)
				{
					int colIndex = ((!grid.CurrentCell.HasCurrentCell) ? 1 : grid.CurrentCell.ColIndex);
					grid.BeginUpdate();
					if (originalDataView != null)
					{
						originalDataView.RowFilter = RowFilter;
					}
					else
					{
						dataTable.DefaultView.RowFilter = _rowFilter;
					}
					grid.CurrentCell.MoveTo(filterRow + 1, colIndex, GridSetCurrentCellOptions.None);
					if (GridUtil.IsEmpty(_rowFilter))
					{
						ResetFilterRow(grid);
					}
					grid.EndUpdate(update: true);
					OnFilterBarFilterCompleted(new GridFilterBarTextChangedEventArgs());
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				MessageBox.Show(ex.Message.ToString());
			}
		}
	}

	public GridStyleInfo StyleInfo
	{
		get
		{
			return _style;
		}
		set
		{
			_style = value;
		}
	}

	public bool ParenthesesAroundColumnFilters
	{
		get
		{
			return _parenthesesAroundColumnFilters;
		}
		set
		{
			_parenthesesAroundColumnFilters = value;
		}
	}

	public bool Wired => GetGrid() != null;

	public event GridFilterBarTextChangedEventHandler FilterBarTextChanged;

	public event GridFilterBarCreatingColumnHeaderEventHandler CreatingColumnHeader;

	public event GridFilterBarShowDialogEventHandler FilterBarShowDialog;

	public event GridFilterBarFilterCompletedEventHandler FilterBarFilterCompleted;

	public GridFilterBar()
	{
		_grid = null;
		_style = null;
		_row = -1;
		_dataTable = null;
	}

	protected virtual void OnFilterBarTextChanged(GridFilterBarTextChangedEventArgs e)
	{
		if (this.FilterBarTextChanged != null)
		{
			this.FilterBarTextChanged(this, e);
		}
	}

	protected virtual void OnCreatingColumnHeader(GridFilterBarCreatingColumnHeaderEventArgs e)
	{
		if (this.CreatingColumnHeader != null)
		{
			this.CreatingColumnHeader(this, e);
		}
	}

	protected virtual void OnFilterBarShowDialog(GridFilterBarShowDialogEventArgs e)
	{
		if (this.FilterBarShowDialog != null)
		{
			this.FilterBarShowDialog(this, e);
		}
	}

	protected virtual void OnFilterBarFilterCompleted(GridFilterBarTextChangedEventArgs e)
	{
		if (this.FilterBarFilterCompleted != null)
		{
			this.FilterBarFilterCompleted(this, e);
		}
	}

	protected virtual GridDataBoundGrid GetGrid()
	{
		return _grid;
	}

	protected virtual void SetGrid(GridDataBoundGrid g)
	{
		_grid = g;
	}

	protected virtual int GetFilterRow()
	{
		return _row;
	}

	protected virtual void SetFilterRow(int r)
	{
		_row = r;
	}

	protected virtual DataTable GetDataTable()
	{
		return _dataTable;
	}

	protected virtual void SetDataTable(DataTable dt)
	{
		_dataTable = dt;
	}

	public void WireGrid(GridDataBoundGrid grid)
	{
		if (grid != null)
		{
			GridStyleInfo gridStyleInfo = new GridStyleInfo();
			gridStyleInfo.ModifyStyle(grid.BaseStylesMap["Header"].StyleInfo, StyleModifyType.Copy);
			gridStyleInfo.CellType = "ComboBox";
			gridStyleInfo.ExclusiveChoiceList = true;
			gridStyleInfo.BaseStyle = "Standard";
			gridStyleInfo.Font.Bold = false;
			gridStyleInfo.BackColor = grid.TableStyle.BackColor;
			gridStyleInfo.Borders.Bottom = new GridBorder(GridBorderStyle.Dashed);
			WireGrid(grid, gridStyleInfo);
		}
	}

	public virtual void WireGrid(GridDataBoundGrid grid, GridStyleInfo style)
	{
		if (GetGrid() != null)
		{
			UnwireGrid();
		}
		if (grid == null)
		{
			return;
		}
		SetDataTable(grid.DataSource as DataTable);
		if (GetDataTable() == null && grid.DataSource is DataSet)
		{
			DataView dataView = ((grid.BindingContext[grid.DataSource, grid.DataMember] is CurrencyManager currencyManager) ? (currencyManager.List as DataView) : null);
			if (dataView != null)
			{
				originalFilterOnTable = dataView.RowFilter;
				originalSortOnTable = dataView.Sort;
				originalDataView = dataView;
				SetDataTable(dataView.Table);
			}
		}
		if (GetDataTable() == null && grid.DataSource is DataView dataView2)
		{
			originalFilterOnTable = dataView2.RowFilter;
			originalSortOnTable = dataView2.Sort;
			originalDataView = dataView2;
			SetDataTable(dataView2.Table);
		}
		DataTable dataTable = GetDataTable();
		if (dataTable == null)
		{
			return;
		}
		StyleInfo = style;
		grid.Model.Data.RowCount++;
		SetFilterRow(grid.Model.Rows.HeaderCount + 1);
		int filterRow = GetFilterRow();
		grid.Model.Rows.HeaderCount = filterRow;
		grid.Model.Rows.FrozenCount = grid.Model.Rows.FrozenCount + 1;
		grid.Model.ChangeCells(GridRangeInfo.Cells(filterRow, 1, filterRow, grid.Model.ColCount), style, StyleModifyType.Override);
		DataView dataView3 = new DataView(dataTable, originalFilterOnTable, originalSortOnTable, DataViewRowState.CurrentRows);
		GridBoundColumnsCollection gridBoundColumnsCollection = ((grid.GridBoundColumns.Count == 0) ? grid.Binder.InternalColumns : grid.GridBoundColumns);
		for (int i = 0; i < gridBoundColumnsCollection.Count; i++)
		{
			string mappingName = gridBoundColumnsCollection[i].MappingName;
			int colIndex = grid.Binder.NameToColIndex(mappingName);
			GridFilterBarCreatingColumnHeaderEventArgs e = new GridFilterBarCreatingColumnHeaderEventArgs(mappingName);
			OnCreatingColumnHeader(e);
			if (e.Cancel)
			{
				grid[filterRow, colIndex].ShowButtons = GridShowButtons.Hide;
				continue;
			}
			mappingName = (dataView3.Sort = e.ColName);
			grid[filterRow, colIndex].DataSource = CreateUniqueEntries(dataView3, mappingName);
			grid[filterRow, colIndex].DisplayMember = mappingName;
			grid[filterRow, colIndex].ValueMember = mappingName;
		}
		grid.CurrentCellAcceptedChanges += GridCurrentCellAcceptedChanges;
		grid.CurrentCellShowingDropDown += GridCurrentCellShowingDropDown;
		grid.CurrentCellCloseDropDown += GridCurrentCellCloseDropDown;
		grid.KeyDown += GridKeyDown;
		SetGrid(grid);
	}

	public virtual void UnwireGrid()
	{
		GridDataBoundGrid grid = GetGrid();
		if (grid != null)
		{
			grid.BeginUpdate();
			int filterRow = GetFilterRow();
			grid.Model.Rows.RemoveRange(filterRow, filterRow);
			grid.Model.Rows.HeaderCount--;
			grid.Model.Rows.FrozenCount--;
			grid.CurrentCellAcceptedChanges -= GridCurrentCellAcceptedChanges;
			grid.CurrentCellShowingDropDown -= GridCurrentCellShowingDropDown;
			grid.CurrentCellCloseDropDown -= GridCurrentCellCloseDropDown;
			grid.KeyDown -= GridKeyDown;
			if (originalDataView != null)
			{
				originalDataView.RowFilter = originalFilterOnTable;
				originalFilterOnTable = string.Empty;
				originalSortOnTable = string.Empty;
				originalDataView = null;
			}
			grid.EndUpdate();
			grid.Refresh();
			SetGrid(null);
		}
	}

	[DocumentationExclude]
	protected void GridKeyDown(object sender, KeyEventArgs e)
	{
		if (!(sender is GridDataBoundGrid gridDataBoundGrid) || !gridDataBoundGrid.CurrentCell.HasCurrentCellAt(GetFilterRow()))
		{
			return;
		}
		Keys keyCode = e.KeyCode;
		if (keyCode == Keys.Return)
		{
			bool flag = (e.Modifiers & Keys.Control) != 0;
			bool flag2 = (e.Modifiers & Keys.Shift) != 0;
			if ((e.Modifiers & Keys.Menu) == 0 && !flag && !flag2)
			{
				gridDataBoundGrid.CurrentCell.ConfirmChanges();
				e.Handled = true;
			}
		}
	}

	[DocumentationExclude]
	protected void GridCurrentCellShowingDropDown(object sender, GridCurrentCellShowingDropDownEventArgs e)
	{
		if (sender is GridDataBoundGrid { CurrentCell: var currentCell } gridDataBoundGrid && currentCell.RowIndex == GetFilterRow() && gridDataBoundGrid[currentCell.RowIndex, currentCell.ColIndex].DataSource is DataTable dataTable)
		{
			int val = Math.Max(12, gridDataBoundGrid.ViewLayout.LastVisibleRow - gridDataBoundGrid.TopRowIndex);
			int dropDownRows = Math.Min(val, dataTable.Rows.Count);
			if (gridDataBoundGrid.CellRenderers[gridDataBoundGrid[currentCell.RowIndex, currentCell.ColIndex].CellType] is GridComboBoxCellRenderer gridComboBoxCellRenderer)
			{
				((GridComboBoxListBoxPart)gridComboBoxCellRenderer.ListBoxPart).DropDownRows = dropDownRows;
			}
		}
	}

	[DocumentationExclude]
	protected void GridCurrentCellAcceptedChanges(object sender, CancelEventArgs e)
	{
		if (sender is GridDataBoundGrid { CurrentCell: var currentCell } gridDataBoundGrid && currentCell.RowIndex == GetFilterRow())
		{
			currentCell.Lock();
			RowFilter = GetFilterFromRow(gridDataBoundGrid);
			currentCell.Unlock();
		}
	}

	[DocumentationExclude]
	protected void GridCurrentCellCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (!(sender is GridDataBoundGrid gridDataBoundGrid) || e.PopupCloseType != PopupCloseType.Done)
		{
			return;
		}
		GridCurrentCell currentCell = gridDataBoundGrid.CurrentCell;
		if (currentCell.RowIndex == GetFilterRow())
		{
			if (currentCell.Renderer.ControlText == GridFilterBarStrings[_custom_])
			{
				saveOriginalText = gridDataBoundGrid[currentCell.RowIndex, currentCell.ColIndex].Text;
				currentCell.IsModified = true;
			}
			currentCell.ConfirmChanges();
		}
	}

	protected virtual DataTable CreateUniqueEntries(DataView dv, string colName)
	{
		DataTable dataTable = new DataTable(colName);
		dataTable.Columns.Add(new DataColumn(colName));
		if (GridFilterBarStrings[_none_].Length > 0)
		{
			DataRow dataRow = dataTable.NewRow();
			dataRow[0] = GridFilterBarStrings[_none_];
			dataTable.Rows.Add(dataRow);
		}
		if (GridFilterBarStrings[_custom_].Length > 0)
		{
			DataRow dataRow = dataTable.NewRow();
			dataRow[0] = GridFilterBarStrings[_custom_];
			dataTable.Rows.Add(dataRow);
		}
		string text = string.Empty;
		for (int i = 0; i < dv.Count; i++)
		{
			if (text != dv[i].Row[colName].ToString())
			{
				text = dv[i].Row[colName].ToString();
				DataRow dataRow = dataTable.NewRow();
				dataRow[0] = text;
				dataTable.Rows.Add(dataRow);
			}
		}
		return dataTable;
	}

	protected virtual string GetFilterFromRow(GridDataBoundGrid grid)
	{
		GridCurrentCell currentCell = grid.CurrentCell;
		int colIndex = currentCell.ColIndex;
		int filterRow = GetFilterRow();
		DataTable dataTable = GetDataTable();
		string text = currentCell.Renderer.ControlText;
		string text2 = string.Empty;
		if (currentCell.IsActive)
		{
			currentCell.Deactivate(discardChanges: false);
		}
		if (GridUtil.IsEmpty(text) || text == GridFilterBarStrings[_none_])
		{
			grid[filterRow, colIndex].Text = string.Empty;
			grid[filterRow, colIndex].Tag = string.Empty;
		}
		else if (text == GridFilterBarStrings[_custom_])
		{
			GridFilterBarShowDialogEventArgs e = new GridFilterBarShowDialogEventArgs(string.Empty, DialogResult.OK);
			grid.CurrentCell.ConfirmChanges();
			bool flag = true;
			while (flag)
			{
				OnFilterBarShowDialog(e);
				if (!e.Handled)
				{
					GridFilterBarCustomDlg gridFilterBarCustomDlg = new GridFilterBarCustomDlg();
					string mappingName = grid.Binder.InternalColumns[grid.Binder.ColIndexToField(colIndex)].MappingName;
					gridFilterBarCustomDlg.colLabel.Text = dataTable.Columns[mappingName].ColumnName;
					gridFilterBarCustomDlg.SetStrings(GridFilterBarStrings);
					if (gridFilterBarCustomDlg.ShowDialog() == DialogResult.OK)
					{
						grid[filterRow, colIndex].Text = GridFilterBarStrings[_custom_];
						grid[filterRow, colIndex].Tag = gridFilterBarCustomDlg.FilterString;
					}
					else
					{
						currentCell.Renderer.ControlText = saveOriginalText;
					}
				}
				else if (e.Result == DialogResult.OK)
				{
					if (!IsFilterStringValid(e.FilterCriteria))
					{
						continue;
					}
					grid[filterRow, colIndex].Text = GridFilterBarStrings[_custom_];
					grid[filterRow, colIndex].Tag = e.FilterCriteria;
				}
				flag = false;
			}
		}
		else
		{
			string mappingName2 = grid.Binder.InternalColumns[grid.Binder.ColIndexToField(colIndex)].MappingName;
			string columnName = dataTable.Columns[mappingName2].ColumnName;
			grid[filterRow, colIndex].Text = text;
			if (text.IndexOf("'") != -1)
			{
				text = text.Replace("'", "''");
			}
			grid[filterRow, colIndex].Tag = $"[{columnName}] = '{text}'";
		}
		for (int i = 1; i <= grid.Model.ColCount; i++)
		{
			if (grid[filterRow, i].Tag is string { Length: >0 } text3)
			{
				if (text2.Length > 0)
				{
					text2 += GridFilterBarStrings[_and_];
				}
				text2 = ((!ParenthesesAroundColumnFilters) ? (text2 + text3) : (text2 + $"({text3})"));
			}
		}
		return text2;
	}

	private bool IsFilterStringValid(string filterString)
	{
		string rowFilter = string.Empty;
		try
		{
			GetGrid().BeginUpdate();
			rowFilter = GetDataTable().DefaultView.RowFilter;
			GetDataTable().DefaultView.RowFilter = filterString;
		}
		catch (Exception ex)
		{
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			GetDataTable().DefaultView.RowFilter = rowFilter;
			GetGrid().CancelUpdate();
			MessageBox.Show(GridFilterBarStrings[Improper_custom_filter] + ex.Message);
			return false;
		}
		GetDataTable().DefaultView.RowFilter = rowFilter;
		GetGrid().CancelUpdate();
		return true;
	}

	public void ResetFilterRow(GridDataBoundGrid grid)
	{
		int filterRow = GetFilterRow();
		for (int i = 1; i <= grid.Model.ColCount; i++)
		{
			grid[filterRow, i].Text = string.Empty;
			grid[filterRow, i].Tag = string.Empty;
		}
	}
}
