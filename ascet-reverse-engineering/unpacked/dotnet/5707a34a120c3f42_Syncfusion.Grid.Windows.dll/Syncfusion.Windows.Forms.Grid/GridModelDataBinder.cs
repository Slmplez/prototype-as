#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelDataBinder : NonFinalizeDisposable, IGridModelDataProvider, ICurrencyManagerSource
{
	[DocumentationExclude]
	public delegate IList GetChildListHandler(PropertyDescriptor relation, object component);

	private const int DataSourceChangedFlag = 1;

	private const int MetaDataChangedFlag = 2;

	private const int DataSourcePositionChangedFlag = 4;

	private const int DataSourceRowChangedFlag = 8;

	internal GridModel gridModel;

	internal GridSortBehavior sortBehavior = GridSortBehavior.DoubleClick;

	private bool inSetListManager;

	private bool metaDataChanged;

	internal CurrencyManager listManager;

	private IList list;

	private object dataSource;

	private string dataMember;

	private bool rowDirty;

	private IEditableObject editableItem;

	private object currentItem;

	private bool inAddNew;

	private bool inEdit;

	private bool inRemoveRecords;

	private bool inRowChanged;

	private ArrayList listManagerToGridPositions = new ArrayList();

	private ArrayList recordStates = new ArrayList();

	internal ArrayList levels = new ArrayList(1);

	private ArrayList rowHeaderStates = new ArrayList();

	internal int expRecordCount;

	private bool directSaveCellInfo;

	private bool enableRemove = true;

	private bool enableEdit = true;

	private bool enableAddNew = true;

	internal bool outlineHeaderField;

	private BindingContext bindingContext;

	private string errorValue = string.Empty;

	private string errorMessage = string.Empty;

	private Exception exception;

	private bool hasError;

	private int currentPosition;

	private bool inSetCurrentPosition;

	internal GridBoundRecordState currentRecordState;

	private GridHierarchyLevel currentHierarchyLevel;

	private GridBoundColumnsCollection currentColumns;

	private int currentListManagerPosition = -1;

	private int savedPosition = -1;

	private ISite site;

	private bool isDesignMode;

	private static bool autoInitCellTypes = true;

	private static bool doNotDisposeLists = false;

	internal int viewCount;

	private bool useComplexBinding;

	private bool bindToCurrencyManager = true;

	private bool allowSetValueOnCurrentItem = true;

	private static Type boundColumnsCollectionType = typeof(GridBoundColumnsCollection);

	private bool optimizeListChangedEvent;

	private bool forceUpdateAfterListChangedEvent = true;

	[DocumentationExclude]
	public GetChildListHandler childListHandler;

	private bool inEndEdit;

	private static bool addNewForceItemChangedEventHack = false;

	private bool inCancelEdit;

	private int suspendBinding;

	private int suspendChangeFlags;

	private GridCurrentRecordItemChangedBehavior defaultCurrentRecordItemChangedBehavior = GridCurrentRecordItemChangedBehavior.ReloadCurrentRecord;

	internal bool inbindingList_ListChanged;

	private bool inbindingList_ListChangedCurrentRecord;

	private int currentListManagerCount;

	private int lastAddNewIndex = -1;

	[DefaultValue(true)]
	public bool BindToCurrencyManager
	{
		get
		{
			return bindToCurrencyManager;
		}
		set
		{
			bindToCurrencyManager = value;
		}
	}

	[Category("Grid")]
	[Browsable(false)]
	[DefaultValue(false)]
	internal bool UseComplexBinding
	{
		get
		{
			return useComplexBinding;
		}
		set
		{
			useComplexBinding = value;
		}
	}

	[Browsable(false)]
	public static bool AutoInitCellTypes
	{
		get
		{
			return autoInitCellTypes;
		}
		set
		{
			autoInitCellTypes = value;
		}
	}

	public GridHierarchyLevel RootHierarchyLevel => (GridHierarchyLevel)levels[0];

	public int HierarchyLevelCount => levels.Count;

	public int RelationCount => levels.Count - 1;

	public bool AllowAddNew
	{
		get
		{
			if (List == null || !enableAddNew)
			{
				return false;
			}
			IList list = List;
			if (list != null && !list.IsFixedSize && !list.IsReadOnly)
			{
				if (list is IBindingList bindingList)
				{
					return bindingList.AllowNew;
				}
				return false;
			}
			return false;
		}
	}

	public bool SupportsAddNew => AllowAddNew;

	public bool AllowEdit
	{
		get
		{
			IList list = List;
			if (list == null || !enableEdit)
			{
				return false;
			}
			if (list != null && !list.IsReadOnly)
			{
				if (list is IBindingList bindingList)
				{
					return bindingList.AllowEdit;
				}
				return true;
			}
			return false;
		}
	}

	public bool DirectSaveCellInfo
	{
		get
		{
			return directSaveCellInfo;
		}
		set
		{
			directSaveCellInfo = value;
		}
	}

	public bool AllowSetValueOnCurrentItem
	{
		get
		{
			return allowSetValueOnCurrentItem;
		}
		set
		{
			allowSetValueOnCurrentItem = value;
		}
	}

	public int RecordCount
	{
		get
		{
			if (List != null)
			{
				return List.Count;
			}
			return 0;
		}
	}

	public static Type BoundColumnsCollectionType
	{
		get
		{
			return boundColumnsCollectionType;
		}
		set
		{
			boundColumnsCollectionType = value;
		}
	}

	[DocumentationExclude]
	public bool OptimizeListChangedEvent
	{
		get
		{
			return optimizeListChangedEvent;
		}
		set
		{
			optimizeListChangedEvent = value;
		}
	}

	[DocumentationExclude]
	public bool ForceUpdateAfterListChangedEvent
	{
		get
		{
			return forceUpdateAfterListChangedEvent;
		}
		set
		{
			forceUpdateAfterListChangedEvent = value;
		}
	}

	internal int LastPosition => RecordCount * RootHierarchyLevel.rowCount + expRecordCount;

	public string ErrorMessage => errorMessage;

	public bool HasError => hasError;

	public Exception Exception => exception;

	private string ErrorValue => errorValue;

	public bool InEndEdit => inEndEdit;

	[DocumentationExclude]
	public static bool AddNewForceItemChangedEventHack
	{
		get
		{
			return addNewForceItemChangedEventHack;
		}
		set
		{
			addNewForceItemChangedEventHack = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool InCancelEdit => inCancelEdit;

	[Description("A value indicating if the grid supports editing records if the underlying datasource allows it.")]
	[DefaultValue(true)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool EnableEdit
	{
		get
		{
			return enableEdit;
		}
		set
		{
			enableEdit = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("A value indicating if the grid supports adding new records if the underlying datasource allows it.")]
	public bool EnableAddNew
	{
		get
		{
			return enableAddNew;
		}
		set
		{
			enableAddNew = value;
		}
	}

	public bool IsDirty => rowDirty;

	public bool IsEditing => inEdit;

	public bool IsAddNew => inAddNew;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int CurrentPosition
	{
		get
		{
			return currentPosition;
		}
		set
		{
			if (value != CurrentPosition)
			{
				bool flag = RecordDiffersAtPosition(value, CurrentPosition);
				if (inEdit && flag)
				{
					EndEdit();
				}
				SetCurrentPosition(value, raiseCurrentPositionChanged: true);
			}
		}
	}

	[Browsable(false)]
	public int SavedPosition => savedPosition;

	[Browsable(false)]
	public int CurrentRowIndex => PositionToRowIndex(CurrentPosition);

	[Browsable(false)]
	public int SavedRowIndex => PositionToRowIndex(SavedPosition);

	[Browsable(false)]
	public bool IsAppendRow
	{
		get
		{
			if (SupportsAddNew)
			{
				return !RecordDiffersAtPosition(CurrentPosition, LastPosition);
			}
			return false;
		}
	}

	public bool AllowRemove
	{
		get
		{
			if (enableRemove && List != null)
			{
				return GridListUtil.GetAllowRemove(List);
			}
			return false;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(true)]
	[Browsable(true)]
	[Description("A value indicating if the grid supports removing records if the underlying datasource allows it.")]
	public bool EnableRemove
	{
		get
		{
			return enableRemove;
		}
		set
		{
			enableRemove = value;
		}
	}

	[Description("Indicates the source of data for the DataGrid.")]
	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	[DefaultValue(null)]
	[Category("Data")]
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
				throw new Exception("BadDataSourceForComplexBinding");
			}
			if (dataSource != null && dataSource.Equals(value))
			{
				return;
			}
			if (value == null || (value == Convert.DBNull && string.Empty != DataMember))
			{
				dataSource = null;
				DataMember = string.Empty;
				if (list != null)
				{
					UnWireDataSource();
				}
				listManager = null;
				list = null;
				InitCurrentRecordState(-1);
			}
			else
			{
				Set_ListManager(value, DataMember, force: false);
			}
		}
	}

	[DefaultValue(null)]
	[Editor("System.Windows.Forms.Design.DataMemberListEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Design")]
	[Description("Indicates a sub-list of the DataSource to show in the grid.")]
	[Category("Data")]
	public string DataMember
	{
		get
		{
			return dataMember;
		}
		set
		{
			if (dataMember == null || !(dataMember == value))
			{
				Set_ListManager(DataSource, value, force: false);
			}
		}
	}

	private GridBoundColumnsCollection gridColumns
	{
		get
		{
			return RootHierarchyLevel.gridColumns;
		}
		set
		{
			RootHierarchyLevel.gridColumns = value;
		}
	}

	private GridBoundColumnsCollection internalGridColumns
	{
		get
		{
			return RootHierarchyLevel.internalGridColumns;
		}
		set
		{
			RootHierarchyLevel.internalGridColumns = value;
		}
	}

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridBoundColumnsCollection GridBoundColumns
	{
		get
		{
			return gridColumns;
		}
		set
		{
			if (gridColumns != value)
			{
				gridModel.BeginUpdate(BeginUpdateOptions.None);
				_ = gridColumns;
				gridColumns = value;
				InitializeColumns();
				OnGridBoundColumnsChanged(EventArgs.Empty);
				gridModel.EndUpdate(update: true);
			}
		}
	}

	public ISite Site
	{
		get
		{
			return site;
		}
		set
		{
			if (site != value)
			{
				site = value;
			}
		}
	}

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridBoundColumnsCollection InternalColumns => RootHierarchyLevel.InternalColumns;

	public BindingContext BindingContext
	{
		get
		{
			if (bindingContext == null && gridModel != null && gridModel.ActiveGridView != null)
			{
				bindingContext = gridModel.ActiveGridView.BindingContext;
			}
			return bindingContext;
		}
		set
		{
			if (bindingContext != value)
			{
				bindingContext = value;
				OnBindingContextChanged(EventArgs.Empty);
			}
		}
	}

	public bool IsSuspendBinding => suspendBinding > 0;

	private CurrencyManager ListManager
	{
		get
		{
			if (BindToCurrencyManager && listManager == null && BindingContext != null && DataSource != null)
			{
				return (CurrencyManager)BindingContext[DataSource, DataMember];
			}
			return listManager;
		}
		set
		{
			throw new NotSupportedException("DataGridSetListManager");
		}
	}

	internal IList List
	{
		get
		{
			if (BindToCurrencyManager)
			{
				CurrencyManager currencyManager = ListManager;
				if (currencyManager != null)
				{
					list = currencyManager.List;
				}
			}
			else if (list == null && DataSource != null)
			{
				object obj = DataSource;
				if (obj is IList)
				{
					list = (IList)obj;
				}
				else if (obj is IListSource)
				{
					list = ((IListSource)obj).GetList();
				}
			}
			return list;
		}
		set
		{
			throw new NotSupportedException("DataGridSetListManager");
		}
	}

	public bool InRowChanged => inRowChanged;

	public GridCurrentRecordItemChangedBehavior DefaultCurrentRecordItemChangedBehavior
	{
		get
		{
			return defaultCurrentRecordItemChangedBehavior;
		}
		set
		{
			defaultCurrentRecordItemChangedBehavior = value;
		}
	}

	public bool IsDesignMode
	{
		get
		{
			return isDesignMode;
		}
		set
		{
			isDesignMode = value;
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public static bool DoNotDisposeLists
	{
		get
		{
			return doNotDisposeLists;
		}
		set
		{
			doNotDisposeLists = value;
		}
	}

	public event EventHandler EditModeChanged;

	public event EventHandler CurrentPositionChanged;

	public event EventHandler GridBoundColumnsChanged;

	public event EventHandler DataSourceChanged;

	public event EventHandler RecordsRemoved;

	public event ItemChangedEventHandler ItemChanged;

	public event EventHandler RowChanged;

	public event GridCurrentCellListItemChangedEventHandler CurrentCellListItemChanged;

	[Description("Occurs before the GridModelDataBinder processes the IBindingList.ListChanged event.")]
	public event ListChangedEventHandler BindingListChanged;

	public GridModelDataBinder(GridModel model)
	{
		gridModel = model;
		model.QueryCellModel += ModelQueryCellModel;
		model.QueryCoveredRange += ModelQueryCoveredRange;
		model.CommandStack.Enabled = false;
		model.Rows.DefaultSize = 17;
		model.Cols.DefaultSize = 65;
		model.RowHeights[0] = 21;
		model.ColWidths[0] = 35;
		model.Options.ExcelLikeCurrentCell = false;
		model.Options.ExcelLikeSelectionFrame = false;
		model.Options.AllowDragSelectedCols = true;
		model.Options.AllowDragSelectedRows = false;
		model.Options.FloatCellsMode = GridFloatCellsMode.None;
		model.Options.NumberedRowHeaders = false;
		model.Options.NumberedColHeaders = false;
		model.Options.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.GrayWhenLostFocus;
		model.Options.DataObjectConsumerOptions = GridDataObjectConsumerOptions.None;
		model.Options.DragDropDropTargetFlags &= -17;
		model.Properties.MarkRowHeader = true;
		model.Properties.MarkColHeader = true;
		model.CellModels.Add("RowHeaderCell", new GridDataBoundRowHeaderCellModel(model));
		model.CellModels.Add("ColumnHeaderCell", new GridSortColumnHeaderCellModel(model));
		model.CellModels.Add("DataBoundRowExpandCell", new GridDataBoundRowExpandCellModel(model));
		InitBaseStyles();
		model.CommandStack.Enabled = false;
		model.Options.FloatCellsMode = GridFloatCellsMode.None;
		levels.Add(new GridHierarchyLevel(this, 0));
		gridColumns.CollectionChanged += GridColumnsCollectionChanged;
	}

	internal void ResetBaseStyles()
	{
		GridModel gridModel = this.gridModel;
		gridModel.BaseStylesMap.RegisterStandardStyles();
		InitBaseStyles();
	}

	internal void InitBaseStyles()
	{
		GridModel gridModel = this.gridModel;
		if (!gridModel.BaseStylesMap.Modified)
		{
			GridStyleInfo styleInfo = gridModel.BaseStylesMap["Row Header"].StyleInfo;
			styleInfo.CellType = "RowHeaderCell";
			styleInfo.Enabled = true;
			styleInfo = gridModel.BaseStylesMap["Column Header"].StyleInfo;
			styleInfo.Enabled = false;
			styleInfo.CellType = "ColumnHeaderCell";
			styleInfo.Font.Bold = false;
			styleInfo = gridModel.BaseStylesMap["Standard"].StyleInfo;
			styleInfo.CheckBoxOptions.CheckedValue = "True";
			styleInfo.CheckBoxOptions.UncheckedValue = "False";
			gridModel.BaseStylesMap.Modified = false;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (gridColumns != null)
			{
				foreach (GridBoundColumn gridColumn in gridColumns)
				{
					gridColumn?.Dispose();
				}
				gridColumns.CollectionChanged -= GridColumnsCollectionChanged;
				gridColumns.Clear();
			}
			UnWireDataSource();
			listManager = null;
		}
		base.Dispose(disposing);
	}

	public int ColIndexToField(int colIndex)
	{
		return Math.Max(colIndex - gridModel.Cols.HeaderCount, 0) - 1;
	}

	public int FieldToColIndex(int fieldNum)
	{
		if (fieldNum < 0)
		{
			return -1;
		}
		return fieldNum + gridModel.Cols.HeaderCount + 1;
	}

	public int NameToField(string name)
	{
		GridBoundColumnsCollection internalColumns = InternalColumns;
		for (int i = 0; i < internalColumns.Count; i++)
		{
			GridBoundColumn gridBoundColumn = internalColumns[i];
			if ((gridBoundColumn.MappingName != null && gridBoundColumn.MappingName == name) || (gridBoundColumn.PropertyDescriptor != null && gridBoundColumn.PropertyDescriptor.Name == name))
			{
				return i;
			}
		}
		return -1;
	}

	public int NameToColIndex(string name)
	{
		int num = NameToField(name);
		if (num != -1)
		{
			return FieldToColIndex(num);
		}
		return -1;
	}

	public int NameToRowIndex(string name)
	{
		int result = -1;
		try
		{
			result = int.Parse(name);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		return result;
	}

	public void InitializeColumns()
	{
		RootHierarchyLevel._InitializeColumns(List);
	}

	public void LayoutColumns(params string[] mappingNames)
	{
		RootHierarchyLevel.LayoutColumns(mappingNames);
	}

	public GridHierarchyLevel GetHierarchyLevel(string name)
	{
		for (int i = 0; i < levels.Count; i++)
		{
			GridHierarchyLevel gridHierarchyLevel = (GridHierarchyLevel)levels[i];
			if (gridHierarchyLevel.relation.Name == name)
			{
				return gridHierarchyLevel;
			}
		}
		return null;
	}

	public GridHierarchyLevel GetHierarchyLevel(int index)
	{
		if (index >= levels.Count || index < 0)
		{
			return null;
		}
		return (GridHierarchyLevel)levels[index];
	}

	public GridHierarchyLevel AddRelation(string nestedDataMember)
	{
		GridHierarchyLevel gridHierarchyLevel = levels[levels.Count - 1] as GridHierarchyLevel;
		return gridHierarchyLevel.AddRelation(nestedDataMember);
	}

	public virtual GridBoundColumnsCollection CreateBoundColumnsCollection()
	{
		return (GridBoundColumnsCollection)Activator.CreateInstance(boundColumnsCollectionType, this);
	}

	public int RowIndexToPosition(int rowIndex)
	{
		return Math.Max(rowIndex - gridModel.Rows.HeaderCount, 0) - 1;
	}

	public int PositionToRowIndex(int gridPosition)
	{
		return gridPosition + gridModel.Rows.HeaderCount + 1;
	}

	public int RowIndexToListManagerPosition(int rowIndex)
	{
		int num = RowIndexToPosition(rowIndex);
		if (num < 0)
		{
			return -1;
		}
		return PositionToListManagerPosition(num);
	}

	public int ListManagerPositionToRowIndex(int record)
	{
		int num = ListManagerPositionToPosition(record);
		if (num < 0)
		{
			return -1;
		}
		return PositionToRowIndex(num);
	}

	public GridBoundRecordState GetRecordStateAtRowIndex(int rowIndex)
	{
		if (rowIndex > gridModel.Rows.HeaderCount)
		{
			int position = RowIndexToPosition(rowIndex);
			return GetRecordStateAtPosition(position);
		}
		if (rowIndex < rowHeaderStates.Count)
		{
			return GetRowHeaderState(rowIndex);
		}
		return null;
	}

	public bool RecordEqualsAtRowIndex(int rowIndex1, int rowIndex2)
	{
		return !RecordDiffersAtRowIndex(rowIndex1, rowIndex2);
	}

	internal int ListManagerPositionToPosition(int position)
	{
		if (ForgetAboutRecordState())
		{
			return position;
		}
		if (position < 0)
		{
			return -1;
		}
		if (position >= listManagerToGridPositions.Count)
		{
			return position * RootHierarchyLevel.rowCount + expRecordCount;
		}
		return (int)listManagerToGridPositions[position];
	}

	internal int PositionToListManagerPosition(int gridPosition)
	{
		if (ForgetAboutRecordState())
		{
			return gridPosition;
		}
		GridBoundRecordState gridBoundRecordState = GetRecordStateAtPosition(gridPosition);
		if (gridBoundRecordState == null)
		{
			return -1;
		}
		while (gridBoundRecordState.parent != null)
		{
			gridBoundRecordState = gridBoundRecordState.parent;
		}
		return gridBoundRecordState.position;
	}

	internal bool RecordDiffersAtRowIndex(int rowIndex1, int rowIndex2)
	{
		if (rowIndex1 == rowIndex2)
		{
			return false;
		}
		GridBoundRecordState recordStateAtRowIndex = GetRecordStateAtRowIndex(rowIndex1);
		GridBoundRecordState recordStateAtRowIndex2 = GetRecordStateAtRowIndex(rowIndex2);
		if (recordStateAtRowIndex == null || recordStateAtRowIndex2 == null)
		{
			return false;
		}
		if (object.ReferenceEquals(recordStateAtRowIndex.table, recordStateAtRowIndex2.table) && recordStateAtRowIndex.level == recordStateAtRowIndex2.level)
		{
			return recordStateAtRowIndex.position != recordStateAtRowIndex2.position;
		}
		return true;
	}

	internal bool RecordDiffersAtPosition(int pos1, int pos2)
	{
		if (pos1 == pos2)
		{
			return false;
		}
		if (ForgetAboutRecordState())
		{
			return true;
		}
		GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(pos1);
		GridBoundRecordState recordStateAtPosition2 = GetRecordStateAtPosition(pos2);
		if (recordStateAtPosition == null || recordStateAtPosition2 == null)
		{
			return false;
		}
		if (object.ReferenceEquals(recordStateAtPosition.table, recordStateAtPosition2.table) && recordStateAtPosition.level == recordStateAtPosition2.level)
		{
			return recordStateAtPosition.position != recordStateAtPosition2.position;
		}
		return true;
	}

	public void ResetHierarchyLevels()
	{
		gridModel.SuspendChangeEvents();
		levels = new ArrayList();
		levels.Add(new GridHierarchyLevel(this, 0));
		gridModel.Data.Clear();
		gridModel.CoveredRanges.Clear();
		gridModel.Rows.HeaderCount = 0;
		gridModel.Rows.FrozenCount = 0;
		gridModel.Cols.HeaderCount = 0;
		gridModel.Cols.FrozenCount = 0;
		ResetRecordState();
		gridModel.ResumeChangeEvents();
	}

	internal void ResetRecordState()
	{
		for (int i = 0; i < recordStates.Count; i++)
		{
			int index = i;
			if (recordStates[index] is IDisposable)
			{
				((IDisposable)recordStates[index]).Dispose();
			}
		}
		recordStates.Clear();
		rowHeaderStates.Clear();
		listManagerToGridPositions.Clear();
		gridModel.ResetVolatileData();
	}

	internal GridBoundRecordState GetRecordStateAtPosition(int position)
	{
		if (position < 0)
		{
			return null;
		}
		if (position < recordStates.Count)
		{
			return (GridBoundRecordState)recordStates[position];
		}
		if (ForgetAboutRecordState())
		{
			GridBoundRecordState gridBoundRecordState = new GridBoundRecordState(null);
			gridBoundRecordState.table = List;
			gridBoundRecordState.listManager = listManager;
			gridBoundRecordState.position = position;
			gridBoundRecordState.childList = null;
			gridBoundRecordState.hasChildList = false;
			gridBoundRecordState.level = 0;
			return gridBoundRecordState;
		}
		GridBoundRecordState gridBoundRecordState3;
		if (recordStates.Count == 0)
		{
			GridBoundRecordState gridBoundRecordState2 = new GridBoundRecordState(null);
			gridBoundRecordState2.table = List;
			gridBoundRecordState2.listManager = listManager;
			gridBoundRecordState2.expanded = false;
			gridBoundRecordState2.position = 0;
			gridBoundRecordState2.childList = null;
			gridBoundRecordState2.hasChildList = levels.Count > 1;
			gridBoundRecordState2.level = 0;
			recordStates.Add(gridBoundRecordState2);
			gridBoundRecordState3 = gridBoundRecordState2;
			expRecordCount = 0;
		}
		else
		{
			gridBoundRecordState3 = (GridBoundRecordState)recordStates[recordStates.Count - 1];
		}
		GridHierarchyLevel rootHierarchyLevel = RootHierarchyLevel;
		int num = position - recordStates.Count + 1;
		if (num > 0)
		{
			GridBoundRecordState[] array = new GridBoundRecordState[num];
			for (int i = 0; i < num; i++)
			{
				GridBoundRecordState gridBoundRecordState4 = new GridBoundRecordState(null);
				gridBoundRecordState4.table = gridBoundRecordState3.table;
				gridBoundRecordState4.listManager = gridBoundRecordState3.listManager;
				gridBoundRecordState4.expanded = false;
				if (gridBoundRecordState3.row < rootHierarchyLevel.rowCount - 1)
				{
					gridBoundRecordState4.row = gridBoundRecordState3.row + 1;
					gridBoundRecordState4.position = gridBoundRecordState3.position;
				}
				else
				{
					gridBoundRecordState4.row = 0;
					gridBoundRecordState4.position = gridBoundRecordState3.position + 1;
				}
				gridBoundRecordState4.childList = null;
				gridBoundRecordState4.hasChildList = levels.Count > 1;
				gridBoundRecordState4.level = 0;
				array[i] = gridBoundRecordState4;
				gridBoundRecordState3 = gridBoundRecordState4;
			}
			recordStates.AddRange(array);
		}
		return gridBoundRecordState3;
	}

	private void EnsureListManagerToGridPositionsCount(int lmPosition)
	{
		if (!ForgetAboutRecordState())
		{
			if (listManagerToGridPositions.Count == 0)
			{
				listManagerToGridPositions.Add(0);
			}
			int num = (int)listManagerToGridPositions[listManagerToGridPositions.Count - 1];
			while (listManagerToGridPositions.Count <= lmPosition)
			{
				listManagerToGridPositions.Add(++num);
			}
		}
	}

	private void IncreaseListManagerToGridPositionsAt(int lmPosition, int count)
	{
		if (!ForgetAboutRecordState())
		{
			EnsureListManagerToGridPositionsCount(lmPosition);
			for (int i = lmPosition; i < listManagerToGridPositions.Count; i++)
			{
				listManagerToGridPositions[i] = (int)listManagerToGridPositions[i] + count;
			}
		}
	}

	private void ReduceListManagerToGridPositionsAt(int lmPosition, int count)
	{
		if (!ForgetAboutRecordState())
		{
			EnsureListManagerToGridPositionsCount(lmPosition);
			for (int i = lmPosition; i < listManagerToGridPositions.Count; i++)
			{
				listManagerToGridPositions[i] = (int)listManagerToGridPositions[i] - count;
			}
		}
	}

	internal bool IsExpanded(int position)
	{
		if (ForgetAboutRecordState())
		{
			return false;
		}
		GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(position);
		if (recordStateAtPosition.row > 0)
		{
			recordStateAtPosition = GetRecordStateAtPosition(position - recordStateAtPosition.row);
		}
		return recordStateAtPosition.expanded;
	}

	internal bool ForgetAboutRecordState()
	{
		if (optimizeListChangedEvent && levels.Count == 1)
		{
			return GetHierarchyLevel(0).RowCountPerRecord == 1;
		}
		return false;
	}

	private IList GetChildList(PropertyDescriptor relation, object component)
	{
		IList list = null;
		if (childListHandler != null)
		{
			list = childListHandler(relation, component);
		}
		if (list == null)
		{
			list = relation.GetValue(component) as IList;
		}
		return list;
	}

	internal void ExpandRecord(int gridPosition)
	{
		if (ForgetAboutRecordState())
		{
			return;
		}
		GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(gridPosition);
		GetRecordStateAtPosition(gridPosition + 1);
		if (recordStateAtPosition == null || levels.Count <= 1 || recordStateAtPosition.expanded || !recordStateAtPosition.hasChildList)
		{
			return;
		}
		GridHierarchyLevel gridHierarchyLevel = levels[recordStateAtPosition.level] as GridHierarchyLevel;
		if (recordStateAtPosition.position >= recordStateAtPosition.table.Count)
		{
			return;
		}
		IList childList = GetChildList(gridHierarchyLevel.relation, recordStateAtPosition.table[recordStateAtPosition.position]);
		if (childList == null)
		{
			recordStateAtPosition.hasChildList = false;
			return;
		}
		int count = childList.Count;
		if (count == 0)
		{
			recordStateAtPosition.hasChildList = false;
			if (childList is IDisposable)
			{
				((IDisposable)childList).Dispose();
			}
			return;
		}
		GridHierarchyLevel gridHierarchyLevel2 = levels[recordStateAtPosition.level + 1] as GridHierarchyLevel;
		if (recordStateAtPosition.childList is IDisposable)
		{
			((IDisposable)recordStateAtPosition.childList).Dispose();
		}
		recordStateAtPosition.childList = childList;
		BindingManagerBase bindingManagerBase = null;
		if (BindToCurrencyManager)
		{
			bindingManagerBase = BindingContext[childList];
		}
		GridBoundRecordState[] array = new GridBoundRecordState[count * gridHierarchyLevel2.rowCount];
		int num = 0;
		for (int i = 0; i < count; i++)
		{
			for (int j = 0; j < gridHierarchyLevel2.rowCount; j++)
			{
				GridBoundRecordState gridBoundRecordState = new GridBoundRecordState(recordStateAtPosition);
				gridBoundRecordState.table = childList;
				gridBoundRecordState.listManager = bindingManagerBase;
				gridBoundRecordState.expanded = false;
				gridBoundRecordState.position = i;
				gridBoundRecordState.row = j;
				gridBoundRecordState.childList = null;
				gridBoundRecordState.hasChildList = gridHierarchyLevel2.relation != null;
				gridBoundRecordState.level = gridHierarchyLevel2.level;
				array[num++] = gridBoundRecordState;
			}
		}
		int insertAt = PositionToRowIndex(gridPosition + gridHierarchyLevel.rowCount);
		gridModel.Rows.OnRangeInserting(new GridRangeInsertingEventArgs(insertAt, count, null));
		int num2 = PositionToListManagerPosition(gridPosition);
		IncreaseListManagerToGridPositionsAt(num2 + 1, count * gridHierarchyLevel2.rowCount);
		recordStateAtPosition.expanded = true;
		recordStates.InsertRange(gridPosition + gridHierarchyLevel.rowCount, array);
		recordStateAtPosition.childCount = count;
		expRecordCount += count * gridHierarchyLevel2.rowCount;
		gridModel.ResetVolatileData();
		gridModel.Rows.OnRangeInserted(new GridRangeInsertedEventArgs(insertAt, count, null, success: true));
		DumpRecords();
	}

	internal void CollapseRecord(int gridPosition)
	{
		if (ForgetAboutRecordState())
		{
			return;
		}
		GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(gridPosition);
		if (!recordStateAtPosition.expanded)
		{
			return;
		}
		gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		try
		{
			int childCount = recordStateAtPosition.childCount;
			GridHierarchyLevel gridHierarchyLevel = levels[recordStateAtPosition.level] as GridHierarchyLevel;
			GridHierarchyLevel gridHierarchyLevel2 = levels[recordStateAtPosition.level + 1] as GridHierarchyLevel;
			int num = childCount * gridHierarchyLevel2.rowCount;
			for (int i = 0; i < num; i++)
			{
				CollapseRecord(i + gridPosition + gridHierarchyLevel.rowCount);
			}
			int num2 = PositionToListManagerPosition(gridPosition);
			gridModel.Rows.OnRangeRemoving(new GridRangeRemovingEventArgs(PositionToRowIndex(gridPosition + gridHierarchyLevel.rowCount), PositionToRowIndex(gridPosition + childCount + gridHierarchyLevel.rowCount - 1)));
			expRecordCount -= childCount * gridHierarchyLevel2.rowCount;
			for (int j = 0; j < childCount * gridHierarchyLevel2.rowCount; j++)
			{
				int index = gridPosition + gridHierarchyLevel.rowCount + j;
				if (recordStates[index] is IDisposable)
				{
					((IDisposable)recordStates[index]).Dispose();
				}
			}
			recordStates.RemoveRange(gridPosition + gridHierarchyLevel.rowCount, childCount * gridHierarchyLevel2.rowCount);
			ReduceListManagerToGridPositionsAt(num2 + 1, childCount * gridHierarchyLevel2.rowCount);
			recordStateAtPosition.childList = null;
			recordStateAtPosition.expanded = false;
			recordStateAtPosition.childCount = 0;
			gridModel.ResetVolatileData();
			gridModel.Rows.OnRangeRemoved(new GridRangeRemovedEventArgs(PositionToRowIndex(gridPosition + gridHierarchyLevel.rowCount), PositionToRowIndex(gridPosition + childCount * gridHierarchyLevel2.rowCount + gridHierarchyLevel.rowCount - 1), null, success: true));
			DumpRecords();
		}
		finally
		{
			gridModel.EndUpdate(update: true);
		}
	}

	internal void DumpRecords()
	{
	}

	internal void SynchronizeColCount()
	{
		int num = 0;
		foreach (GridHierarchyLevel level in levels)
		{
			num = Math.Max(num, level.GetColCount());
		}
		if (levels.Count > 1)
		{
			num++;
			gridModel.ColWidths[1] = gridModel.Rows.DefaultSize;
			gridModel.Cols.FrozenCount = 1;
			gridModel.Cols.HeaderCount = 1;
		}
		gridModel.Data.ColCount = num;
	}

	internal GridBoundRecordState GetRowHeaderState(int index)
	{
		if (rowHeaderStates.Count == 0)
		{
			InitRowHeaderStates();
		}
		if (index >= rowHeaderStates.Count || index < 0)
		{
			return null;
		}
		return rowHeaderStates[index] as GridBoundRecordState;
	}

	private void InitRowHeaderStates()
	{
		int num = 0;
		rowHeaderStates.Clear();
		GridBoundRecordState parent = null;
		foreach (GridHierarchyLevel level in levels)
		{
			if (level.showHeaders)
			{
				level.headerTopRow = num;
				for (int i = 0; i < level.rowCount; i++)
				{
					GridBoundRecordState gridBoundRecordState = new GridBoundRecordState(parent);
					gridBoundRecordState.level = level.level;
					gridBoundRecordState.row = i;
					gridBoundRecordState.position = -1;
					rowHeaderStates.Add(gridBoundRecordState);
					parent = gridBoundRecordState;
					num++;
				}
				continue;
			}
			break;
		}
	}

	internal void SynchronizeRowHeaderCount()
	{
		InitRowHeaderStates();
		gridModel.Rows.HeaderCount = rowHeaderStates.Count - 1;
		gridModel.Rows.FrozenCount = rowHeaderStates.Count - 1;
	}

	internal void ModelColsMoving(object sender, GridRangeMovingEventArgs e)
	{
		int num = ColIndexToField(e.From);
		int count = e.Count;
		int num2 = ColIndexToField(e.Target);
		GridBoundColumnsCollection internalColumns = InternalColumns;
		if (num2 == num || count == 0 || (internalColumns.Count < num && internalColumns.Count < num2))
		{
			return;
		}
		GridBoundColumnsCollection gridBoundColumnsCollection = CreateBoundColumnsCollection();
		if (num2 > num)
		{
			num2 += count;
		}
		for (int i = 0; i <= internalColumns.Count; i++)
		{
			if (i >= num && i < num + count)
			{
				i += count;
				if (i > internalColumns.Count)
				{
					break;
				}
			}
			if (i == num2)
			{
				for (int j = 0; j < count; j++)
				{
					gridBoundColumnsCollection.Add(internalColumns[num + j]);
				}
			}
			if (i < internalColumns.Count)
			{
				gridBoundColumnsCollection.Add(internalColumns[i]);
			}
		}
		BeginUpdateInternal();
		gridColumns = gridBoundColumnsCollection;
		gridModel.ResetVolatileData();
		EndUpdateInternal();
	}

	public void ResetError()
	{
		errorValue = string.Empty;
		errorMessage = string.Empty;
		exception = null;
		hasError = false;
	}

	private bool DataGridSourceHasErrors()
	{
		if (List == null)
		{
			return false;
		}
		int listManagerCount = GetListManagerCount();
		for (int i = 0; i < listManagerCount; i++)
		{
			object obj = List[i];
			if (obj is IDataErrorInfo)
			{
				string error = ((IDataErrorInfo)obj).Error;
				if (error != null && error.Length != 0)
				{
					return true;
				}
			}
		}
		return false;
	}

	private void GridColumnsCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new CollectionChangeEventHandler(GridColumnsCollectionChanged), sender, e);
			return;
		}
		gridModel.BeginUpdate(BeginUpdateOptions.None);
		if (site != null)
		{
			int count = gridColumns.Count;
			for (int i = 0; i < count; i++)
			{
				GridBoundColumn gridBoundColumn = gridColumns[i];
				if (gridBoundColumn != null && gridBoundColumn.Site != null && gridBoundColumn.Site != site)
				{
					site.Container.Add(gridBoundColumn);
				}
			}
		}
		gridModel.ResetVolatileData();
		gridModel.EndUpdate(update: false);
		OnGridBoundColumnsChanged(EventArgs.Empty);
	}

	private void RefreshRows(CurrencyManager bmb)
	{
		if (!inCancelEdit)
		{
			CancelEdit();
		}
		for (int i = 0; i < recordStates.Count; i++)
		{
			int index = i;
			if (recordStates[index] is IDisposable)
			{
				((IDisposable)recordStates[index]).Dispose();
			}
		}
		recordStates.Clear();
		listManagerToGridPositions.Clear();
		gridModel.ResetVolatileData();
		gridModel.Refresh();
	}

	internal static void ModelQueryCellModel(object sender, GridQueryCellModelEventArgs e)
	{
		if (e.CellModel == null)
		{
			IGridCellModelFactory cellModelFactory = GridFactoryProvider.CellModelFactory;
			if (cellModelFactory != null)
			{
				e.CellModel = cellModelFactory.CreateCellModel(e.CellType, ((IGridModelSource)sender).Model);
			}
		}
	}

	void IGridModelDataProvider.QueryColCount(GridRowColCountEventArgs e)
	{
		QueryColCount(e);
	}

	protected virtual void QueryColCount(GridRowColCountEventArgs e)
	{
		int num = 0;
		if (List != null)
		{
			num = gridModel.Cols.HeaderCount - ((levels.Count > 1) ? 1 : 0);
		}
		e.Count = gridModel.Data.ColCount + num;
		e.Handled = true;
	}

	void IGridModelDataProvider.QueryRowCount(GridRowColCountEventArgs e)
	{
		QueryRowCount(e);
	}

	protected virtual void QueryRowCount(GridRowColCountEventArgs e)
	{
		if (List != null)
		{
			int num = gridModel.Rows.HeaderCount;
			if (SupportsAddNew)
			{
				num += RootHierarchyLevel.rowCount;
			}
			e.Count = RecordCount * RootHierarchyLevel.rowCount + num + expRecordCount;
			e.Handled = true;
		}
		else
		{
			e.Count = 0;
			e.Handled = true;
		}
	}

	private void ModelQueryCoveredRange(object sender, GridQueryCoveredRangeEventArgs e)
	{
		if (List == null)
		{
			return;
		}
		GridBoundRecordState gridBoundRecordState = null;
		if (e.RowIndex > gridModel.Rows.HeaderCount)
		{
			int position = RowIndexToPosition(e.RowIndex);
			gridBoundRecordState = GetRecordStateAtPosition(position);
		}
		else
		{
			gridBoundRecordState = GetRowHeaderState(e.RowIndex);
		}
		if (gridBoundRecordState == null)
		{
			return;
		}
		GridHierarchyLevel gridHierarchyLevel = levels[gridBoundRecordState.level] as GridHierarchyLevel;
		if (e.ColIndex == 0)
		{
			if (e.RowIndex <= gridModel.Rows.HeaderCount)
			{
				e.Range = GridRangeInfo.Cells(0, 0, gridModel.Rows.HeaderCount, (levels.Count > 1) ? 1 : 0);
				e.Handled = true;
			}
			else if (gridHierarchyLevel.rowCount > 1 && gridBoundRecordState != null)
			{
				int num = e.RowIndex - gridBoundRecordState.row;
				e.Range = GridRangeInfo.Cells(num, 0, num + gridHierarchyLevel.rowCount - 1, 0);
				e.Handled = true;
			}
		}
		else if (e.ColIndex == 1 && levels.Count > 1)
		{
			if (e.RowIndex <= gridModel.Rows.HeaderCount)
			{
				e.Range = GridRangeInfo.Cells(0, 0, gridModel.Rows.HeaderCount, 1);
				e.Handled = true;
			}
			else if (gridHierarchyLevel.rowCount > 1 && gridBoundRecordState != null)
			{
				int num2 = e.RowIndex - gridBoundRecordState.row;
				e.Range = GridRangeInfo.Cells(num2, 1, num2 + gridHierarchyLevel.rowCount - 1, 1);
				e.Handled = true;
			}
		}
		else
		{
			if (e.ColIndex <= 0)
			{
				return;
			}
			int num3 = ColIndexToField(e.ColIndex);
			if (gridBoundRecordState != null)
			{
				num3 = gridHierarchyLevel.RowFieldToField(gridBoundRecordState.row, num3);
			}
			if (gridHierarchyLevel.coveredCells == null || num3 < 0 || num3 >= gridHierarchyLevel.coveredCells.Length)
			{
				return;
			}
			int num4 = gridHierarchyLevel.coveredCells[num3];
			if (num4 != -1)
			{
				int i;
				for (i = num4; i + 1 < gridHierarchyLevel.coveredCells.Length && gridHierarchyLevel.coveredCells[i + 1] == num4; i++)
				{
				}
				if (gridBoundRecordState != null)
				{
					num4 = gridHierarchyLevel.FieldToRowField(num4, out var row);
					i = gridHierarchyLevel.FieldToRowField(i, out row);
				}
				e.Range = GridRangeInfo.Cells(e.RowIndex, FieldToColIndex(num4), e.RowIndex, FieldToColIndex(i));
				e.Handled = true;
			}
		}
	}

	void IGridModelDataProvider.QueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		QueryCellInfo(e);
	}

	protected virtual void QueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		int num = ColIndexToField(e.ColIndex);
		IList list = List;
		if (levels == null)
		{
			return;
		}
		if (e.ColIndex == 1 && levels.Count > 1)
		{
			if (list == null || e.RowIndex <= gridModel.Rows.HeaderCount)
			{
				return;
			}
			int position = RowIndexToPosition(e.RowIndex);
			GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(position);
			if (recordStateAtPosition.row != 0)
			{
				return;
			}
			GridHierarchyLevel gridHierarchyLevel = levels[recordStateAtPosition.level] as GridHierarchyLevel;
			if (gridHierarchyLevel.RowStyle != null && gridHierarchyLevel.RowStyle.Store != null && !gridHierarchyLevel.RowStyle.IsEmpty)
			{
				e.Style.ModifyStyle(gridHierarchyLevel.RowStyle, StyleModifyType.Override);
			}
			if (gridHierarchyLevel.relation != null)
			{
				e.Style.CellType = "DataBoundRowExpandCell";
				if (recordStateAtPosition.HasChildList)
				{
					e.Style.CellValue = (IsExpanded(position) ? 1 : 0);
				}
				else
				{
					e.Style.CellValue = -1;
				}
			}
			else
			{
				e.Style.CellType = "Static";
			}
			e.Style.Borders.Right = gridModel.TableStyle.Borders.Right;
		}
		else
		{
			if (num < 0)
			{
				return;
			}
			if (e.RowIndex >= 0 && e.RowIndex < rowHeaderStates.Count)
			{
				GridBoundRecordState rowHeaderState = GetRowHeaderState(e.RowIndex);
				if (rowHeaderState == null)
				{
					return;
				}
				GridHierarchyLevel gridHierarchyLevel2 = levels[rowHeaderState.level] as GridHierarchyLevel;
				num = gridHierarchyLevel2.RowFieldToField(rowHeaderState.row, num);
				if (gridHierarchyLevel2.HeaderStyle != null && gridHierarchyLevel2.HeaderStyle.Store != null && !gridHierarchyLevel2.HeaderStyle.IsEmpty)
				{
					e.Style.ModifyStyle(gridHierarchyLevel2.HeaderStyle, StyleModifyType.Override);
				}
				GridBoundColumnsCollection internalColumns = gridHierarchyLevel2.InternalColumns;
				if (num >= 0 && num < internalColumns.Count)
				{
					GridBoundColumn gridBoundColumn = internalColumns[num];
					if (gridBoundColumn.HeaderText.Length > 0)
					{
						e.Style.CellValue = gridBoundColumn.HeaderText;
					}
					else
					{
						e.Style.CellValue = gridBoundColumn.MappingName;
					}
					if (gridBoundColumn.PropertyDescriptor != null)
					{
						ListSortDirection sortDirection = GridListUtil.GetSortDirection(List);
						PropertyDescriptor sortProperty = GridListUtil.GetSortProperty(List);
						if (sortProperty != null && sortProperty.Equals(gridBoundColumn.PropertyDescriptor))
						{
							e.Style.Tag = sortDirection;
						}
					}
					e.Handled = true;
				}
				else
				{
					e.Style.Enabled = false;
					e.Style.Borders.Right = GridBorder.Empty;
					e.Style.CellType = "Static";
				}
			}
			else
			{
				if (e.RowIndex <= gridModel.Rows.HeaderCount || list == null)
				{
					return;
				}
				int num2 = RowIndexToPosition(e.RowIndex);
				GridBoundRecordState recordStateAtPosition2 = GetRecordStateAtPosition(num2);
				GridHierarchyLevel gridHierarchyLevel3 = levels[recordStateAtPosition2.level] as GridHierarchyLevel;
				num = gridHierarchyLevel3.RowFieldToField(recordStateAtPosition2.row, num);
				GridBoundColumnsCollection internalColumns2 = gridHierarchyLevel3.InternalColumns;
				if (gridHierarchyLevel3.RowStyle != null && gridHierarchyLevel3.RowStyle.Store != null && !gridHierarchyLevel3.RowStyle.IsEmpty)
				{
					e.Style.ModifyStyle(gridHierarchyLevel3.RowStyle, StyleModifyType.Override);
				}
				if (num >= 0 && num < internalColumns2.Count)
				{
					GridBoundColumn gridBoundColumn2 = internalColumns2[num];
					PropertyDescriptor propertyDescriptor = gridBoundColumn2.PropertyDescriptor;
					if (gridBoundColumn2.StyleInfo != null && gridBoundColumn2.StyleInfo.Store != null && !gridBoundColumn2.StyleInfo.IsEmpty)
					{
						e.Style.ModifyStyle(gridBoundColumn2.StyleInfo, StyleModifyType.Override);
					}
					if (propertyDescriptor != null)
					{
						if (recordStateAtPosition2.position < recordStateAtPosition2.table.Count)
						{
							if (inEdit && !RecordDiffersAtPosition(num2, currentPosition) && gridBoundColumn2.dirty)
							{
								e.Style.CellValue = gridBoundColumn2.value;
							}
							else
							{
								object obj = recordStateAtPosition2.table[recordStateAtPosition2.position];
								if (obj is DataRowView && ((DataRowView)obj).Row == null)
								{
									obj = null;
								}
								object cellValue = ((obj == null) ? null : ((!gridBoundColumn2.MappingName.Contains(".") || !useComplexBinding) ? propertyDescriptor.GetValue(obj) : GetPropertyValue(obj, gridBoundColumn2.MappingName)));
								e.Style.CellValue = cellValue;
							}
						}
						e.Style.ReadOnly |= propertyDescriptor.IsReadOnly || gridBoundColumn2.ReadOnly;
						if (list is DataView && !((DataView)list).AllowEdit)
						{
							e.Style.ReadOnly = true;
						}
					}
					else
					{
						e.Style.CellValue = string.Empty;
					}
					e.Handled = true;
				}
				else
				{
					e.Style.Enabled = false;
					e.Style.Borders.Right = GridBorder.Empty;
				}
			}
		}
	}

	private object GetPropertyValue(object obj, string mappingName)
	{
		if (mappingName.Contains("."))
		{
			PropertyDescriptorCollection instanceProperties = GridListUtil.GetInstanceProperties(obj.GetType(), isCollection: false);
			string[] array = mappingName.Split(new char[1] { '.' }, StringSplitOptions.RemoveEmptyEntries);
			if (array.Length > 0)
			{
				_ = array[array.Length - 1];
				PropertyDescriptorCollection propertyDescriptorCollection = null;
				for (int i = 0; i <= array.Length - 2; i++)
				{
					propertyDescriptorCollection = instanceProperties;
					foreach (PropertyDescriptor item in propertyDescriptorCollection)
					{
						if (item.Name.Equals(array[i]))
						{
							obj = item.GetValue(obj);
							instanceProperties = GridListUtil.GetInstanceProperties(obj.GetType(), isCollection: false);
							break;
						}
					}
					if (instanceProperties.Equals(propertyDescriptorCollection))
					{
						return string.Empty;
					}
				}
				string value = array[array.Length - 1];
				foreach (PropertyDescriptor item2 in instanceProperties)
				{
					if (item2.Name.Equals(value))
					{
						return item2.GetValue(obj);
					}
				}
			}
		}
		return string.Empty;
	}

	void IGridModelDataProvider.SaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		SaveCellInfo(e);
	}

	protected virtual void SaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		if (List == null || e.RowIndex <= gridModel.Rows.HeaderCount)
		{
			return;
		}
		int num = RowIndexToPosition(e.RowIndex);
		int num2 = ColIndexToField(e.ColIndex);
		if (num2 >= 0)
		{
			GridBoundRecordState recordStateAtPosition = GetRecordStateAtPosition(num);
			GridHierarchyLevel gridHierarchyLevel = levels[recordStateAtPosition.level] as GridHierarchyLevel;
			num2 = gridHierarchyLevel.RowFieldToField(recordStateAtPosition.row, num2);
			GridBoundColumnsCollection internalColumns = gridHierarchyLevel.InternalColumns;
			if (num2 >= 0 && num2 < internalColumns.Count)
			{
				GridBoundColumn gridBoundColumn = internalColumns[num2];
				PropertyDescriptor propertyDescriptor = gridBoundColumn.PropertyDescriptor;
				if (propertyDescriptor != null)
				{
					if (DirectSaveCellInfo)
					{
						object obj = recordStateAtPosition.table[recordStateAtPosition.position];
						if (gridBoundColumn.MappingName.Contains(".") && useComplexBinding)
						{
							SetPropertyValue(obj, e.Style.CellValue, gridBoundColumn.MappingName);
						}
						else
						{
							propertyDescriptor.SetValue(obj, e.Style.CellValue);
						}
						if (!RecordDiffersAtPosition(CurrentPosition, num) && editableItem != null)
						{
							editableItem.EndEdit();
						}
					}
					else
					{
						object obj2 = ((recordStateAtPosition.position < recordStateAtPosition.table.Count) ? recordStateAtPosition.table[recordStateAtPosition.position] : null);
						if (!RecordDiffersAtPosition(CurrentPosition, num))
						{
							if (currentItem != null)
							{
								obj2 = currentItem;
							}
							else
							{
								CurrentPosition = num;
								BeginEdit();
								obj2 = ((!BindToCurrencyManager) ? List[currentPosition] : ListManager.Current);
							}
						}
						if (obj2 != null)
						{
							try
							{
								gridBoundColumn.value = e.Style.CellValue;
								if (!gridBoundColumn.dirty)
								{
									gridBoundColumn.dirty = true;
									if (gridBoundColumn.MappingName.Contains(".") && useComplexBinding)
									{
										gridBoundColumn.savedValue = GetPropertyValue(obj2, gridBoundColumn.MappingName);
									}
									else
									{
										gridBoundColumn.savedValue = propertyDescriptor.GetValue(obj2);
									}
								}
								if (obj2 is IDataErrorInfo)
								{
									string error = ((IDataErrorInfo)obj2).Error;
									if (error != null && error.Length > 0)
									{
										Trace.WriteLine(error);
									}
								}
								if (obj2 is DataRowView && AllowSetValueOnCurrentItem)
								{
									object value = propertyDescriptor.GetValue(obj2);
									if ((value != null && !value.Equals(gridBoundColumn.value)) || (value == null && gridBoundColumn.value != null))
									{
										if (gridBoundColumn.MappingName.Contains(".") && useComplexBinding)
										{
											SetPropertyValue(obj2, e.Style.CellValue, gridBoundColumn.MappingName);
										}
										else
										{
											propertyDescriptor.SetValue(obj2, gridBoundColumn.value);
										}
									}
								}
								rowDirty = true;
							}
							catch (Exception ex)
							{
								TraceUtil.TraceExceptionCatched(ex);
								errorMessage = ex.Message;
								exception = ex;
								hasError = true;
								errorValue = e.Style.Text;
								throw;
							}
						}
					}
				}
			}
		}
		e.Handled = true;
	}

	private void SetPropertyValue(object obj, object value, string mappingName)
	{
		if (!mappingName.Contains("."))
		{
			return;
		}
		PropertyDescriptorCollection instanceProperties = GridListUtil.GetInstanceProperties(obj.GetType(), isCollection: false);
		string[] array = mappingName.Split(new char[1] { '.' }, StringSplitOptions.RemoveEmptyEntries);
		if (array.Length <= 0)
		{
			return;
		}
		_ = array[array.Length - 1];
		PropertyDescriptorCollection propertyDescriptorCollection = null;
		for (int i = 0; i <= array.Length - 2; i++)
		{
			propertyDescriptorCollection = instanceProperties;
			foreach (PropertyDescriptor item in propertyDescriptorCollection)
			{
				if (item.Name.Equals(array[i]))
				{
					obj = item.GetValue(obj);
					instanceProperties = GridListUtil.GetInstanceProperties(obj.GetType(), isCollection: false);
					break;
				}
			}
			if (instanceProperties.Equals(propertyDescriptorCollection))
			{
				return;
			}
		}
		string value2 = array[array.Length - 1];
		foreach (PropertyDescriptor item2 in instanceProperties)
		{
			if (item2.Name.Equals(value2))
			{
				item2.SetValue(obj, value);
			}
		}
	}

	internal bool DataBoundPaste(IDataObject iData, int clipboardFlags, GridRangeInfoList rangeList, GridCutPasteEventArgs e)
	{
		int nFirstRow = gridModel.Rows.HeaderCount + 1;
		int nFirstCol = gridModel.Cols.HeaderCount + 1;
		GridRangeInfo gridRangeInfo = rangeList.GetOuterRange(rangeList.ActiveRange).ExpandRange(nFirstRow, nFirstCol, gridModel.RowCount, gridModel.ColCount);
		if (GridUtil.IsSet(clipboardFlags, 8))
		{
			string text = null;
			if (iData.GetDataPresent(DataFormats.UnicodeText))
			{
				text = iData.GetData(DataFormats.UnicodeText) as string;
			}
			else if (iData.GetDataPresent(DataFormats.Text))
			{
				text = iData.GetData(DataFormats.Text) as string;
			}
			if (text != null)
			{
				OperationFeedback operationFeedback = new OperationFeedback(gridModel);
				bool flag = DirectSaveCellInfo;
				try
				{
					int num = gridRangeInfo.Top;
					int left = gridRangeInfo.Left;
					operationFeedback.AllowRollback = true;
					operationFeedback.Description = SR.GetString("GRID_IDM_PASTINGDATA");
					operationFeedback.AllowNestedProgress = false;
					int nRows;
					int nCols;
					ArrayList arrayList = gridModel.TextDataExchange.CreateTableFromCVSBuffer(text, out nRows, out nCols, operationFeedback);
					if (nRows == 1 && nCols == 1 && e != null && !e.IgnoreCurrentCell)
					{
						GridCellRendererBase currentCellRenderer = gridModel.CurrentCellRenderer;
						if (currentCellRenderer != null && currentCellRenderer.HasFocusControl && currentCellRenderer.CurrentCell.IsEditing && currentCellRenderer.CanPaste() && currentCellRenderer.Paste())
						{
							return true;
						}
					}
					int num2 = 0;
					int num3 = nRows * nCols;
					gridModel.BeginUpdate(BeginUpdateOptions.Invalidate);
					gridModel.ConfirmChanges();
					if (nRows > 1)
					{
						EndEdit();
						DirectSaveCellInfo = true;
					}
					gridModel.CommandStack.BeginTrans(SR.GetString("GRID_IDM_PASTEDATA"));
					bool flag2 = false;
					int num4 = 0;
					while (!flag2 && num4 < arrayList.Count)
					{
						if (arrayList[num4] is ArrayList arrayList2)
						{
							left = gridRangeInfo.Left;
							int num5 = 0;
							while (!flag2 && num5 < arrayList2.Count)
							{
								_ = gridModel[num, left];
								flag2 = !gridModel.TextDataExchange.PasteTextRowCol(num, left, arrayList2[num5] as string);
								operationFeedback.PercentComplete = num2++ * 100 / num3;
								if (operationFeedback.ShouldCancel)
								{
									flag2 = true;
								}
								left++;
								num5++;
							}
							num++;
						}
						num4++;
					}
					if (flag2 && operationFeedback.RollbackConfirmed)
					{
						gridModel.CommandStack.Rollback();
					}
					else
					{
						gridModel.CommandStack.CommitTrans();
					}
					gridModel.Refresh();
					return !flag2;
				}
				finally
				{
					DirectSaveCellInfo = flag;
					operationFeedback.Close();
					gridModel.EndUpdate();
				}
			}
		}
		return false;
	}

	private void InitCurrentRecordState(int currentPosition)
	{
		if (currentPosition < 0)
		{
			currentRecordState = null;
			currentHierarchyLevel = RootHierarchyLevel;
			currentColumns = currentHierarchyLevel.InternalColumns;
			currentListManagerPosition = -1;
		}
		else
		{
			currentRecordState = GetRecordStateAtPosition(currentPosition);
			currentHierarchyLevel = levels[currentRecordState.level] as GridHierarchyLevel;
			currentColumns = currentHierarchyLevel.InternalColumns;
			currentListManagerPosition = PositionToListManagerPosition(currentPosition);
		}
	}

	public virtual void BeginEdit()
	{
		if (List == null)
		{
			return;
		}
		if (List.Count == 0)
		{
			currentPosition = 0;
		}
		if (IsAppendRow)
		{
			AddNew();
		}
		InitCurrentRecordState(CurrentPosition);
		if (currentRecordState.position >= currentRecordState.table.Count)
		{
			return;
		}
		object obj = currentRecordState.table[currentRecordState.position];
		if (currentItem == null || !object.Equals(currentItem, obj))
		{
			if (editableItem != null)
			{
				editableItem.EndEdit();
			}
			currentItem = obj;
			editableItem = obj as IEditableObject;
			if (editableItem != null)
			{
				editableItem.BeginEdit();
			}
			if (!inAddNew)
			{
				inEdit = true;
				OnEditModeChanged(EventArgs.Empty);
			}
		}
	}

	public virtual void EndEdit()
	{
		if (List == null || inEndEdit)
		{
			return;
		}
		GridBoundColumnsCollection gridBoundColumnsCollection = currentColumns;
		if (currentItem != null)
		{
			for (int i = 0; i < gridBoundColumnsCollection.Count; i++)
			{
				if (!gridBoundColumnsCollection[i].dirty)
				{
					continue;
				}
				PropertyDescriptor propertyDescriptor = gridBoundColumnsCollection[i].PropertyDescriptor;
				if (propertyDescriptor != null)
				{
					object value = NullableHelper.ChangeType(gridBoundColumnsCollection[i].value, propertyDescriptor.PropertyType);
					if (gridBoundColumnsCollection[i].MappingName.Contains(".") && useComplexBinding)
					{
						SetPropertyValue(currentItem, value, gridBoundColumnsCollection[i].MappingName);
					}
					else
					{
						propertyDescriptor.SetValue(currentItem, value);
					}
				}
			}
			inEndEdit = true;
			try
			{
				if (editableItem != null)
				{
					if (IsAnyDirtyField())
					{
						int listManagerCount = GetListManagerCount();
						DataView dataView = null;
						if (!optimizeListChangedEvent)
						{
							dataView = List as DataView;
						}
						if (dataView != null && dataView.RowFilter != null && dataView.RowFilter != string.Empty)
						{
							if (!inAddNew)
							{
								editableItem.EndEdit();
								int listManagerCount2 = GetListManagerCount();
								if (listManagerCount + 1 == listManagerCount2)
								{
									string rowFilter = dataView.RowFilter;
									dataView.BeginInit();
									dataView.RowFilter = string.Empty;
									dataView.RowFilter = rowFilter;
									dataView.EndInit();
									if (BindToCurrencyManager)
									{
										listManager = (CurrencyManager)BindingContext[dataView];
									}
									ResetRecordState();
									RefreshRows(ListManager);
								}
							}
						}
						else
						{
							editableItem.EndEdit();
						}
					}
					else
					{
						editableItem.CancelEdit();
					}
				}
			}
			finally
			{
				inEndEdit = false;
			}
		}
		if (inAddNew)
		{
			CurrencyManager currencyManager = ListManager;
			if (currencyManager != null)
			{
				if (IsAnyDirtyField())
				{
					currencyManager.EndCurrentEdit();
					if (addNewForceItemChangedEventHack)
					{
						currencyManager.AddNew();
						currencyManager.CancelCurrentEdit();
					}
				}
				else
				{
					currencyManager.CancelCurrentEdit();
				}
			}
		}
		if (gridBoundColumnsCollection != null)
		{
			for (int j = 0; j < gridBoundColumnsCollection.Count; j++)
			{
				gridBoundColumnsCollection[j].dirty = false;
				gridBoundColumnsCollection[j].value = null;
			}
		}
		inEdit = false;
		inAddNew = false;
		rowDirty = false;
		editableItem = null;
		currentItem = null;
		OnEditModeChanged(EventArgs.Empty);
	}

	public virtual void CancelEdit()
	{
		if (inCancelEdit)
		{
			return;
		}
		inCancelEdit = true;
		try
		{
			GridBoundColumnsCollection gridBoundColumnsCollection = currentColumns;
			if (inAddNew && ListManager != null)
			{
				CurrencyManager currencyManager = ListManager;
				currencyManager.CancelCurrentEdit();
			}
			else if (currentItem != null)
			{
				for (int i = 0; i < gridBoundColumnsCollection.Count; i++)
				{
					GridBoundColumn gridBoundColumn = gridBoundColumnsCollection[i];
					if (gridBoundColumn.dirty && !inbindingList_ListChangedCurrentRecord)
					{
						gridBoundColumn.PropertyDescriptor.SetValue(currentItem, gridBoundColumn.savedValue);
					}
				}
				if (editableItem != null)
				{
					editableItem.CancelEdit();
				}
			}
			if (gridBoundColumnsCollection != null)
			{
				for (int j = 0; j < gridBoundColumnsCollection.Count; j++)
				{
					GridBoundColumn gridBoundColumn2 = gridBoundColumnsCollection[j];
					gridBoundColumn2.dirty = false;
					gridBoundColumn2.value = null;
					gridBoundColumn2.savedValue = null;
				}
			}
			inEdit = false;
			inAddNew = false;
			rowDirty = false;
			editableItem = null;
			currentItem = null;
			OnEditModeChanged(EventArgs.Empty);
		}
		finally
		{
			inCancelEdit = false;
		}
	}

	public void ResetField(int fieldNum)
	{
		GridBoundColumnsCollection gridBoundColumnsCollection = currentColumns;
		if (gridBoundColumnsCollection == null)
		{
			return;
		}
		GridBoundColumn gridBoundColumn = gridBoundColumnsCollection[fieldNum];
		if (gridBoundColumn.dirty)
		{
			gridBoundColumn.dirty = false;
			gridBoundColumn.value = null;
			if (currentItem != null && rowDirty)
			{
				PropertyDescriptor propertyDescriptor = gridBoundColumn.PropertyDescriptor;
				propertyDescriptor.SetValue(currentItem, gridBoundColumn.savedValue);
			}
		}
	}

	public bool IsFieldDirty(int fieldNum)
	{
		GridBoundColumnsCollection gridBoundColumnsCollection = currentColumns;
		if (gridBoundColumnsCollection == null || fieldNum < 0 || fieldNum >= gridBoundColumnsCollection.Count)
		{
			return false;
		}
		return gridBoundColumnsCollection[fieldNum].dirty;
	}

	public bool IsAnyDirtyField()
	{
		GridBoundColumnsCollection gridBoundColumnsCollection = currentColumns;
		if (gridBoundColumnsCollection != null)
		{
			for (int i = 0; i < gridBoundColumnsCollection.Count; i++)
			{
				if (gridBoundColumnsCollection[i].dirty)
				{
					return true;
				}
			}
		}
		return false;
	}

	public virtual void AddNew()
	{
		CurrencyManager currencyManager = ListManager;
		if (currencyManager != null && SupportsAddNew)
		{
			inAddNew = true;
			currencyManager.AddNew();
			inEdit = true;
			gridModel.ResetVolatileData();
			OnEditModeChanged(EventArgs.Empty);
		}
		else if (List != null && SupportsAddNew)
		{
			inAddNew = true;
			((IBindingList)List).AddNew();
			inEdit = true;
			gridModel.ResetVolatileData();
			OnEditModeChanged(EventArgs.Empty);
		}
	}

	protected virtual void OnEditModeChanged(EventArgs e)
	{
		if (this.EditModeChanged != null)
		{
			this.EditModeChanged(this, e);
		}
	}

	internal void SyncCurrentRecordState(int pos)
	{
		if (RecordDiffersAtPosition(pos, currentPosition))
		{
			throw new InvalidOperationException("Do not move current position with this method!");
		}
		if (currentPosition != pos)
		{
			savedPosition = currentPosition;
			currentPosition = pos;
			currentRecordState = GetRecordStateAtPosition(pos);
			currentHierarchyLevel = levels[currentRecordState.level] as GridHierarchyLevel;
			currentColumns = currentHierarchyLevel.InternalColumns;
			OnCurrentPositionChanged(EventArgs.Empty);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void SetCurrentPosition(int value, bool raiseCurrentPositionChanged)
	{
		if (value == CurrentPosition)
		{
			return;
		}
		inSetCurrentPosition = true;
		try
		{
			gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			savedPosition = currentPosition;
			currentPosition = value;
			InitCurrentRecordState(currentPosition);
			for (GridBoundRecordState parent = currentRecordState; parent != null; parent = parent.Parent)
			{
				if (parent.listManager != null && parent.listManager.Position != parent.position)
				{
					parent.listManager.Position = parent.position;
				}
			}
			if (raiseCurrentPositionChanged)
			{
				OnCurrentPositionChanged(EventArgs.Empty);
			}
			gridModel.EndUpdate(update: true);
		}
		finally
		{
			inSetCurrentPosition = false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void RaiseCurrentPositionChanged()
	{
		OnCurrentPositionChanged(EventArgs.Empty);
	}

	protected virtual void OnCurrentPositionChanged(EventArgs e)
	{
		if (this.CurrentPositionChanged != null)
		{
			this.CurrentPositionChanged(this, e);
		}
	}

	public virtual void Sort(int fieldNum)
	{
		GridBoundColumnsCollection internalColumns = InternalColumns;
		PropertyDescriptor propertyDescriptor = internalColumns[fieldNum].PropertyDescriptor;
		_Sort(List, propertyDescriptor);
	}

	internal void _Sort(CurrencyManager lm, PropertyDescriptor pd)
	{
		if (lm != null && GridListUtil.SupportsSort(lm.List) && pd != null)
		{
			ListSortDirection sortDirection = GridListUtil.GetSortDirection(lm.List);
			PropertyDescriptor sortProperty = GridListUtil.GetSortProperty(lm.List);
			sortDirection = ((sortProperty != null && sortProperty.Equals(pd) && sortDirection == ListSortDirection.Ascending) ? ListSortDirection.Descending : ListSortDirection.Ascending);
			IList list = lm.List;
			GridListUtil.SetSort(list, pd, sortDirection);
		}
	}

	internal void _Sort(IList lm, PropertyDescriptor pd)
	{
		if (lm != null && GridListUtil.SupportsSort(lm) && pd != null)
		{
			ListSortDirection sortDirection = GridListUtil.GetSortDirection(lm);
			PropertyDescriptor sortProperty = GridListUtil.GetSortProperty(lm);
			sortDirection = ((sortProperty != null && sortProperty.Equals(pd) && sortDirection == ListSortDirection.Ascending) ? ListSortDirection.Descending : ListSortDirection.Ascending);
			GridListUtil.SetSort(lm, pd, sortDirection);
		}
	}

	public virtual void RemoveRecords(int first, int last)
	{
		inRemoveRecords = true;
		try
		{
			if (List == null || !GridListUtil.GetAllowRemove(List))
			{
				return;
			}
			gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			for (int num = last; num >= first; num--)
			{
				if (listManager != null)
				{
					ListManager.RemoveAt(num);
				}
				else
				{
					List.RemoveAt(num);
				}
			}
			if (BindToCurrencyManager)
			{
				listManager_PositionChanged(ListManager, EventArgs.Empty);
			}
			OnRowChanged(EventArgs.Empty);
			OnRecordsRemoved(EventArgs.Empty);
			gridModel.EndUpdate(update: true);
		}
		finally
		{
			inRemoveRecords = false;
		}
	}

	protected internal virtual void OnGridBoundColumnsChanged(EventArgs e)
	{
		if (this.GridBoundColumnsChanged != null)
		{
			this.GridBoundColumnsChanged(this, e);
		}
	}

	private void SetSite(GridBoundColumnsCollection gridColumns, GridBoundColumnsCollection diffColumns, bool add)
	{
		if (gridColumns == null)
		{
			return;
		}
		if (!add)
		{
			gridColumns.CollectionChanged -= GridColumnsCollectionChanged;
		}
		if (site != null)
		{
			foreach (GridBoundColumn gridColumn in gridColumns)
			{
				if (gridColumn == null)
				{
					continue;
				}
				if (add)
				{
					if (diffColumns.Contains(gridColumn))
					{
						string name = gridColumn.Site.Name;
						site.Container.Remove(gridColumn);
						site.Container.Add(gridColumn, name);
					}
					else
					{
						site.Container.Add(gridColumn);
					}
				}
				else if (!diffColumns.Contains(gridColumn))
				{
					site.Container.Remove(gridColumn);
				}
			}
		}
		if (add)
		{
			gridColumns.CollectionChanged += GridColumnsCollectionChanged;
		}
	}

	public void SetDataBinding(object dataSource, string dataMember)
	{
		Set_ListManager(dataSource, dataMember, force: false);
	}

	internal void Set_ListManager(object newDataSource, string newDataMember, bool force)
	{
		Set_ListManager(newDataSource, newDataMember, force, forceColumnCreation: true);
	}

	private void UpdateListManager()
	{
	}

	protected virtual void OnBindingContextChanged(EventArgs e)
	{
		Set_ListManager(dataSource, dataMember, force: true);
	}

	private void BeginUpdateInternal()
	{
		gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
	}

	private void EndUpdateInternal()
	{
		gridModel.EndUpdate();
	}

	internal void Set_ListManager(object newDataSource, string newDataMember, bool force, bool forceColumnCreation)
	{
		bool flag = false;
		bool flag2 = DataSource != newDataSource;
		bool flag3 = DataMember != newDataMember;
		if (!force && !flag2 && !flag3 && inSetListManager)
		{
			return;
		}
		inSetListManager = true;
		currentListManagerCount = 0;
		try
		{
			UpdateListManager();
			if (this.list != null)
			{
				UnWireDataSource();
			}
			CurrencyManager currencyManager = listManager;
			IList list = List;
			bool flag4 = false;
			if (newDataSource == null)
			{
				_ = string.Empty;
			}
			else
			{
				newDataSource.ToString();
			}
			if (newDataMember == null)
			{
				_ = string.Empty;
			}
			else
			{
				newDataMember.ToString();
			}
			if (BindToCurrencyManager && newDataSource != null && BindingContext != null && newDataSource != Convert.DBNull)
			{
				listManager = (CurrencyManager)BindingContext[newDataSource, newDataMember];
			}
			else
			{
				listManager = null;
			}
			dataSource = newDataSource;
			if (newDataMember != null)
			{
				dataMember = newDataMember;
			}
			flag4 = listManager != currencyManager || List != list;
			if (listManager != null)
			{
				WireDataSource();
				currentListManagerCount = ListManager.Count;
			}
			else if (List != null)
			{
				WireDataSource();
				currentListManagerCount = List.Count;
			}
			if (!flag4 && !metaDataChanged && !forceColumnCreation)
			{
				return;
			}
			BeginUpdateInternal();
			flag = true;
			ResetRecordState();
			InitializeColumns();
			RefreshRows(ListManager);
			if (listManager != null)
			{
				if (listManager.Position == -1)
				{
					CurrencyManager currencyManager2 = listManager;
					int position = (CurrentPosition = 0);
					currencyManager2.Position = position;
				}
				else
				{
					currentPosition = -1;
					CurrentPosition = listManager.Position;
				}
			}
			else
			{
				InitCurrentRecordState(-1);
			}
			EndUpdateInternal();
			flag = false;
			OnDataSourceChanged(EventArgs.Empty);
		}
		finally
		{
			gridModel.ResetVolatileData();
			inSetListManager = false;
			if (flag)
			{
				EndUpdateInternal();
			}
		}
	}

	protected virtual void OnDataSourceChanged(EventArgs e)
	{
		if (this.DataSourceChanged != null)
		{
			this.DataSourceChanged(this, e);
		}
	}

	protected virtual void OnRecordsRemoved(EventArgs e)
	{
		if (this.RecordsRemoved != null)
		{
			this.RecordsRemoved(this, e);
		}
	}

	private void WireDataSource()
	{
		if (listManager != null)
		{
			listManager.CurrentChanged += listManager_CurrentChanged;
			listManager.PositionChanged += listManager_PositionChanged;
			listManager.ItemChanged += listManager_ItemChanged;
		}
		AddMetaDataChangedNotification();
	}

	private void AddMetaDataChangedNotification()
	{
		if (List is IBindingList bindingList)
		{
			bindingList.ListChanged += bindingList_ListChanged;
		}
	}

	private void UnWireDataSource()
	{
		if (listManager != null)
		{
			listManager.CurrentChanged -= listManager_CurrentChanged;
			listManager.PositionChanged -= listManager_PositionChanged;
			listManager.ItemChanged -= listManager_ItemChanged;
		}
		RemoveMetaDataChangedNotification();
	}

	private void RemoveMetaDataChangedNotification()
	{
		if (List is IBindingList bindingList)
		{
			bindingList.ListChanged -= bindingList_ListChanged;
		}
	}

	private Control GetInvokeRequiredControl()
	{
		if (gridModel != null && gridModel.ActiveGridView is GridDataBoundGrid { InvokeRequired: not false } gridDataBoundGrid)
		{
			return gridDataBoundGrid;
		}
		return null;
	}

	private void listManager_Changed(object sender, EventArgs ea)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new EventHandler(listManager_Changed), sender, ea);
		}
		else if (IsSuspendBinding)
		{
			suspendChangeFlags |= 1;
		}
		else
		{
			RootHierarchyLevel.table = List;
			RefreshRows(ListManager);
		}
	}

	public void SuspendBinding()
	{
		suspendBinding++;
	}

	public void ResumeBinding()
	{
		if (suspendBinding <= 0 || --suspendBinding != 0)
		{
			return;
		}
		if (OptimizeListChangedEvent)
		{
			if (suspendChangeFlags != 0)
			{
				suspendChangeFlags = 0;
				bindingList_ListChanged(List, new ListChangedEventArgs(ListChangedType.Reset, -1, -1));
			}
			return;
		}
		gridModel.BeginUpdate();
		if ((suspendChangeFlags & 2) != 0)
		{
			MetaDataChanged();
		}
		else if ((suspendChangeFlags & 1) != 0)
		{
			listManager_Changed(listManager, EventArgs.Empty);
		}
		else if ((suspendChangeFlags & 8) != 0)
		{
			listManager_CurrentChanged(listManager, EventArgs.Empty);
		}
		else if ((suspendChangeFlags & 4) != 0)
		{
			listManager_PositionChanged(listManager, EventArgs.Empty);
		}
		suspendChangeFlags = 0;
		gridModel.EndUpdate();
	}

	private void listManager_CurrentChanged(object sender, EventArgs ea)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new EventHandler(listManager_CurrentChanged), sender, ea);
		}
		else if ((!OptimizeListChangedEvent || !(List is IBindingList)) && !inAddNew && !inRemoveRecords && !inEndEdit)
		{
			if (IsSuspendBinding)
			{
				suspendChangeFlags |= 8;
				return;
			}
			inRowChanged = true;
			listManager_PositionChanged(sender, ea);
			OnRowChanged(ea);
			inRowChanged = false;
		}
	}

	private void listManager_PositionChanged(object sender, EventArgs ea)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new EventHandler(listManager_PositionChanged), sender, ea);
		}
		else if (BindToCurrencyManager && (!OptimizeListChangedEvent || !(List is IBindingList) || GetListManagerCount() == currentListManagerCount) && !inAddNew && !inEndEdit && !inSetCurrentPosition && ListManager.Position != currentListManagerPosition)
		{
			if (inEdit)
			{
				EndEdit();
			}
			if (IsSuspendBinding)
			{
				suspendChangeFlags |= 4;
			}
			else
			{
				CurrentPosition = ListManagerPositionToPosition(ListManager.Position);
			}
		}
	}

	private void listManager_ItemChanged(object sender, ItemChangedEventArgs ea)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new ItemChangedEventHandler(listManager_ItemChanged), sender, ea);
		}
		else
		{
			if (!BindToCurrencyManager)
			{
				return;
			}
			if (OptimizeListChangedEvent && listManager.List is IBindingList)
			{
				if (ea.Index == -1 && !inAddNew && RootHierarchyLevel.table != ListManager.List)
				{
					listManager_Changed(sender, EventArgs.Empty);
				}
			}
			else
			{
				if (inRemoveRecords)
				{
					return;
				}
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 8;
				}
				else if (ea.Index == -1)
				{
					if (inAddNew)
					{
						gridModel.ResetVolatileData();
						gridModel.Refresh();
					}
					else if (RootHierarchyLevel.table != ListManager.List)
					{
						listManager_Changed(sender, EventArgs.Empty);
					}
				}
				else
				{
					_ = ListManager.List[ea.Index];
					OnItemChanged(ea);
				}
			}
		}
	}

	protected virtual void OnItemChanged(ItemChangedEventArgs e)
	{
		if (this.ItemChanged != null)
		{
			this.ItemChanged(this, e);
		}
	}

	protected virtual void OnRowChanged(EventArgs e)
	{
		if (this.RowChanged != null)
		{
			this.RowChanged(this, e);
		}
	}

	protected virtual void OnCurrentCellListItemChanged(GridCurrentCellListItemChangedEventArgs e)
	{
		if (this.CurrentCellListItemChanged != null)
		{
			this.CurrentCellListItemChanged(this, e);
		}
	}

	protected virtual void OnBindingListChanged(ListChangedEventArgs e)
	{
		if (this.BindingListChanged != null)
		{
			this.BindingListChanged(this, e);
		}
	}

	private int GetListManagerCount()
	{
		if (BindToCurrencyManager)
		{
			if (ListManager == null)
			{
				return 0;
			}
			return ListManager.Count;
		}
		if (List == null)
		{
			return 0;
		}
		return List.Count;
	}

	private PropertyDescriptorCollection GetListManagerItemProperties()
	{
		return (listManager != null) ? listManager.GetItemProperties() : ListUtil.GetItemProperties(dataSource);
	}

	internal void bindingList_ListChanged(object sender, ListChangedEventArgs e)
	{
		Control invokeRequiredControl = GetInvokeRequiredControl();
		if (invokeRequiredControl != null)
		{
			invokeRequiredControl.Invoke(new ListChangedEventHandler(bindingList_ListChanged), sender, e);
			return;
		}
		try
		{
			inbindingList_ListChanged = true;
			OnBindingListChanged(e);
			int rowCountPerRecord = GetHierarchyLevel(0).RowCountPerRecord;
			if (e.ListChangedType != ListChangedType.ItemAdded)
			{
				lastAddNewIndex = -1;
			}
			switch (e.ListChangedType)
			{
			case ListChangedType.PropertyDescriptorAdded:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 2;
					return;
				}
				if (rowCountPerRecord == 1 && OptimizeListChangedEvent && GetListManagerCount() > 0)
				{
					PropertyDescriptorCollection listManagerItemProperties = GetListManagerItemProperties();
					PropertyDescriptor propertyDescriptor = null;
					int num3 = 0;
					int num4 = -1;
					foreach (PropertyDescriptor item in listManagerItemProperties)
					{
						if (!GridListUtil.PropertyDescriptorIsARelation(item))
						{
							if (num3 == internalGridColumns.Count)
							{
								num4 = internalGridColumns.Count;
								propertyDescriptor = item;
								break;
							}
							if (item.Name != internalGridColumns[num3].PropertyDescriptor.Name)
							{
								num4 = num3;
								propertyDescriptor = item;
								break;
							}
							num3++;
						}
					}
					if (propertyDescriptor != null && num4 >= 0)
					{
						GridBoundColumn column = InternalColumns.CreateBoundColumn(propertyDescriptor);
						if (num4 < internalGridColumns.Count)
						{
							internalGridColumns.Insert(num4, column);
						}
						else
						{
							internalGridColumns.Add(column);
						}
						int fieldNum = num4;
						if (object.ReferenceEquals(internalGridColumns, currentColumns))
						{
							int insertAt = FieldToColIndex(fieldNum);
							GridModelInsertRangeOptions gridModelInsertRangeOptions = new GridModelInsertRangeOptions();
							gridModelInsertRangeOptions.RowColSizes = new int[1] { gridModel.Cols.DefaultSize };
							bool[] rowColHide = new bool[1];
							gridModelInsertRangeOptions.RowColHide = rowColHide;
							gridModel.Cols.OnRangeInserted(new GridRangeInsertedEventArgs(insertAt, 1, gridModelInsertRangeOptions, success: true));
						}
						SynchronizeColCount();
					}
				}
				else
				{
					MetaDataChanged();
				}
				break;
			case ListChangedType.PropertyDescriptorChanged:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 2;
					return;
				}
				if (rowCountPerRecord == 1 && OptimizeListChangedEvent && GetListManagerCount() > 0)
				{
					PropertyDescriptorCollection listManagerItemProperties3 = GetListManagerItemProperties();
					PropertyDescriptor propertyDescriptor5 = listManagerItemProperties3[e.NewIndex];
					GridBoundColumn gridBoundColumn2 = InternalColumns.CreateBoundColumn(propertyDescriptor5);
					int num9 = internalGridColumns.Add(gridBoundColumn2);
					if (object.ReferenceEquals(internalGridColumns, currentColumns))
					{
						for (int m = 0; m < currentColumns.Count; m++)
						{
							if (currentColumns[m].PropertyDescriptor == gridBoundColumn2.PropertyDescriptor)
							{
								currentColumns[m].PropertyDescriptor = propertyDescriptor5;
								num9 = m;
								break;
							}
						}
					}
					gridBoundColumn2.PropertyDescriptor = propertyDescriptor5;
					if (num9 >= 0)
					{
						int colIndex = FieldToColIndex(num9);
						gridModel.NotifyCellsChanged(new GridCellsChangedEventArgs(GridRangeInfo.Col(colIndex), null, success: true));
					}
					SynchronizeColCount();
				}
				else
				{
					MetaDataChanged();
				}
				break;
			case ListChangedType.PropertyDescriptorDeleted:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 2;
					return;
				}
				if (rowCountPerRecord == 1 && OptimizeListChangedEvent && e.NewIndex >= 0 && e.NewIndex < internalGridColumns.Count)
				{
					PropertyDescriptorCollection listManagerItemProperties2 = GetListManagerItemProperties();
					int num6 = 0;
					int num7 = -1;
					num7 = internalGridColumns.Count - 1;
					foreach (PropertyDescriptor item2 in listManagerItemProperties2)
					{
						if (!GridListUtil.PropertyDescriptorIsARelation(item2))
						{
							if (item2.Name != internalGridColumns[num6].PropertyDescriptor.Name)
							{
								num7 = num6;
								break;
							}
							num6++;
						}
					}
					if (num7 >= 0)
					{
						GridBoundColumn gridBoundColumn = internalGridColumns[num7];
						PropertyDescriptor propertyDescriptor4 = gridBoundColumn.PropertyDescriptor;
						int fieldNum2 = num7;
						internalGridColumns.RemoveAt(num7);
						if (!object.ReferenceEquals(internalGridColumns, currentColumns))
						{
							for (int l = 0; l < currentColumns.Count; l++)
							{
								if (currentColumns[l].PropertyDescriptor == propertyDescriptor4)
								{
									currentColumns.RemoveAt(l);
									fieldNum2 = l;
									break;
								}
							}
						}
						int num8 = FieldToColIndex(fieldNum2);
						GridModelInsertRangeOptions gridModelInsertRangeOptions3 = new GridModelInsertRangeOptions();
						gridModelInsertRangeOptions3.RowColSizes = new int[1] { gridModel.ColWidths[num8] };
						gridModelInsertRangeOptions3.RowColHide = new bool[1] { gridModel.HideCols[num8] };
						gridModel.Cols.OnRangeRemoved(new GridRangeRemovedEventArgs(num8, num8, gridModelInsertRangeOptions3, success: true));
					}
					SynchronizeColCount();
				}
				else
				{
					MetaDataChanged();
				}
				break;
			case ListChangedType.Reset:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 12;
					return;
				}
				ResetRecordState();
				gridModel.Refresh();
				list = null;
				break;
			case ListChangedType.ItemMoved:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 12;
					return;
				}
				if (!OptimizeListChangedEvent)
				{
					break;
				}
				if (!ForgetAboutRecordState())
				{
					goto case ListChangedType.Reset;
				}
				if (e.OldIndex >= 0)
				{
					if (e.NewIndex >= 0)
					{
						int num = PositionToRowIndex(e.OldIndex);
						int target = PositionToRowIndex(e.NewIndex);
						gridModel.ResetVolatileData();
						gridModel.Rows.OnRangeMoved(new GridRangeMovedEventArgs(num, rowCountPerRecord, target, success: true));
						break;
					}
					goto case ListChangedType.ItemDeleted;
				}
				goto case ListChangedType.ItemAdded;
			case ListChangedType.ItemChanged:
			{
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 8;
					return;
				}
				if (e.NewIndex == -1)
				{
					break;
				}
				int num2 = PositionToRowIndex(e.NewIndex);
				if (e.NewIndex == currentPosition && !inEndEdit && gridModel.ActiveGridView != null)
				{
					GridCurrentCell currentCell = gridModel.ActiveGridView.CurrentCell;
					if (currentCell.RowIndex >= num2 && currentCell.RowIndex <= num2 + rowCountPerRecord - 1)
					{
						inbindingList_ListChangedCurrentRecord = true;
						try
						{
							GridCurrentCellListItemChangedEventArgs e2 = new GridCurrentCellListItemChangedEventArgs(e.NewIndex, IsEditing, currentCell, DefaultCurrentRecordItemChangedBehavior);
							OnCurrentCellListItemChanged(e2);
							bool flag = (e2.CurrentRecordItemChangedBehavior & GridCurrentRecordItemChangedBehavior.KeepCurrentRecord) != 0;
							if ((e2.CurrentRecordItemChangedBehavior & GridCurrentRecordItemChangedBehavior.KeepCurrentCellText) != GridCurrentRecordItemChangedBehavior.None && currentCell.HasCurrentCell)
							{
								string text = gridModel[currentCell.RowIndex, currentCell.ColIndex].Text;
								string controlText = currentCell.Renderer.ControlText;
								if (text != controlText && !currentCell.IsModified)
								{
									if (!IsEditing)
									{
										BeginEdit();
									}
									if (!currentCell.IsModified)
									{
										currentCell.BeginEdit();
									}
									currentCell.IsModified = true;
								}
							}
							else if (!flag && !currentCell.IsInConfirmChanges)
							{
								if (currentCell.IsEditing)
								{
									currentCell.CancelEdit();
								}
								if (IsEditing)
								{
									CancelEdit();
								}
							}
						}
						finally
						{
							inbindingList_ListChangedCurrentRecord = false;
						}
					}
				}
				gridModel.InvalidateRange(GridRangeInfo.Rows(num2, num2 + rowCountPerRecord - 1), GridRangeOptions.MergeAllSpannedCells);
				break;
			}
			case ListChangedType.ItemDeleted:
			{
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 12;
					return;
				}
				if (!OptimizeListChangedEvent || e.NewIndex == -1)
				{
					break;
				}
				int num10 = ListManagerPositionToPosition(e.NewIndex);
				int num11 = ListManagerPositionToPosition(e.NewIndex + 1);
				int last = PositionToRowIndex(num11) - 1;
				int num12 = num11 - num10;
				int num2 = PositionToRowIndex(num10);
				GridModelInsertRangeOptions gridModelInsertRangeOptions4 = new GridModelInsertRangeOptions();
				gridModelInsertRangeOptions4.RowColSizes = new int[rowCountPerRecord];
				for (int n = 0; n < rowCountPerRecord; n++)
				{
					gridModelInsertRangeOptions4.RowColSizes[n] = gridModel.Rows.DefaultSize;
				}
				gridModelInsertRangeOptions4.RowColHide = new bool[0];
				if (inAddNew && currentPosition == num10)
				{
					num2++;
					gridModel.ResetVolatileData();
					gridModel.Rows.OnRangeRemoved(new GridRangeRemovedEventArgs(num2, last, gridModelInsertRangeOptions4, success: true));
					break;
				}
				if (currentPosition == num10)
				{
					gridModel.InvalidateRange(GridRangeInfo.Row(num2), GridRangeOptions.None);
				}
				if (gridModel.ActiveGridView != null)
				{
					int rowIndex2 = gridModel.ActiveGridView.CurrentCell.RowIndex;
					if (rowIndex2 >= num2 && rowIndex2 <= num2 + rowCountPerRecord - 1)
					{
						gridModel.ActiveGridView.CurrentCell.ResetCurrentCellWithoutDeactivate();
						gridModel.ActiveGridView.CurrentCell.SetCurrentCellNoActivate(-1, -1);
					}
				}
				if (!ForgetAboutRecordState())
				{
					_ = (GridBoundRecordState)recordStates[num10];
					expRecordCount = Math.Max(0, expRecordCount - num12 + 1);
					recordStates.RemoveRange(num10, num12);
					gridModel.Rows.OnRangeRemoving(new GridRangeRemovingEventArgs(num2, last));
					for (int num13 = num10; num13 < recordStates.Count; num13++)
					{
						GridBoundRecordState gridBoundRecordState3 = (GridBoundRecordState)recordStates[num13];
						if (gridBoundRecordState3.level == 0)
						{
							gridBoundRecordState3.position--;
						}
					}
					if (RootHierarchyLevel.rowCount == 1 || levels.Count > 1)
					{
						ReduceListManagerToGridPositionsAt(num10 + 1, num12 - 1);
					}
				}
				gridModel.ResetVolatileData();
				gridModel.Rows.OnRangeRemoved(new GridRangeRemovedEventArgs(num2, last, gridModelInsertRangeOptions4, success: true));
				if (currentPosition >= num10)
				{
					SetCurrentPosition(currentPosition - 1, raiseCurrentPositionChanged: true);
				}
				currentListManagerPosition = currentPosition;
				InitCurrentRecordState(currentPosition);
				break;
			}
			case ListChangedType.ItemAdded:
				if (IsSuspendBinding)
				{
					suspendChangeFlags |= 12;
					return;
				}
				if (!OptimizeListChangedEvent || e.NewIndex == -1)
				{
					break;
				}
				if (e.NewIndex != lastAddNewIndex || e.NewIndex != RecordCount - 1)
				{
					lastAddNewIndex = e.NewIndex;
					int num5 = ListManagerPositionToPosition(e.NewIndex);
					int num2 = PositionToRowIndex(num5);
					GridModelInsertRangeOptions gridModelInsertRangeOptions2 = new GridModelInsertRangeOptions();
					gridModelInsertRangeOptions2.RowColSizes = new int[rowCountPerRecord];
					for (int i = 0; i < rowCountPerRecord; i++)
					{
						gridModelInsertRangeOptions2.RowColSizes[i] = gridModel.Rows.DefaultSize;
					}
					gridModelInsertRangeOptions2.RowColHide = new bool[0];
					if (inAddNew || e.NewIndex == GetListManagerCount() - 1)
					{
						if (inAddNew)
						{
							num2 += rowCountPerRecord;
						}
						gridModel.ResetVolatileData();
						gridModel.Rows.OnRangeInserted(new GridRangeInsertedEventArgs(num2, rowCountPerRecord, gridModelInsertRangeOptions2, success: true));
						break;
					}
					if (gridModel.ActiveGridView != null && !inAddNew)
					{
						int rowIndex = gridModel.ActiveGridView.CurrentCell.RowIndex;
						if (rowIndex >= num2)
						{
							gridModel.ActiveGridView.CurrentCell.ResetCurrentCellWithoutDeactivate();
							gridModel.ActiveGridView.CurrentCell.SetCurrentCellNoActivate(-1, -1);
						}
					}
					if (!ForgetAboutRecordState())
					{
						for (int j = 0; j < rowCountPerRecord; j++)
						{
							GridBoundRecordState gridBoundRecordState = new GridBoundRecordState(null);
							gridBoundRecordState.table = List;
							gridBoundRecordState.listManager = listManager;
							gridBoundRecordState.expanded = false;
							gridBoundRecordState.position = e.NewIndex;
							gridBoundRecordState.childList = null;
							gridBoundRecordState.row = j;
							gridBoundRecordState.hasChildList = levels.Count > 1;
							gridBoundRecordState.level = 0;
							recordStates.Insert(num5 + j, gridBoundRecordState);
						}
						gridModel.Rows.OnRangeInserting(new GridRangeInsertingEventArgs(num2, rowCountPerRecord, gridModelInsertRangeOptions2));
						for (int k = num5 + rowCountPerRecord; k < recordStates.Count; k++)
						{
							GridBoundRecordState gridBoundRecordState2 = (GridBoundRecordState)recordStates[k];
							if (gridBoundRecordState2.level == 0)
							{
								gridBoundRecordState2.position++;
							}
						}
						IncreaseListManagerToGridPositionsAt(num5 + 1, rowCountPerRecord);
					}
					gridModel.ResetVolatileData();
					gridModel.Rows.OnRangeInserted(new GridRangeInsertedEventArgs(num2, rowCountPerRecord, gridModelInsertRangeOptions2, success: true));
					if (currentPosition >= num5)
					{
						SetCurrentPosition(currentPosition + 1, raiseCurrentPositionChanged: true);
					}
					currentListManagerPosition = currentPosition;
					InitCurrentRecordState(currentPosition);
					break;
				}
				goto case ListChangedType.ItemChanged;
			}
			currentListManagerCount = GetListManagerCount();
			gridModel.ResetVolatileData();
			if (OptimizeListChangedEvent && gridModel.ActiveGridView != null && gridModel.ActiveGridView.Visible && ForceUpdateAfterListChangedEvent)
			{
				if (e.ListChangedType == ListChangedType.ItemChanged)
				{
					gridModel.activeGridView.ViewLayout.Lock();
					gridModel.ActiveGridView.Update();
					gridModel.activeGridView.ViewLayout.Unlock();
				}
				else
				{
					gridModel.ActiveGridView.Update();
				}
			}
		}
		finally
		{
			inbindingList_ListChanged = false;
		}
	}

	private void MetaDataChanged()
	{
		if (IsSuspendBinding)
		{
			suspendChangeFlags |= 2;
			return;
		}
		metaDataChanged = true;
		try
		{
			Set_ListManager(DataSource, DataMember, force: true);
		}
		finally
		{
			metaDataChanged = false;
		}
	}

	CurrencyManager ICurrencyManagerSource.GetCurrencyManager()
	{
		return ListManager;
	}
}
