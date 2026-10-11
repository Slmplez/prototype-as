#define TRACE
using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Formatters.Soap;
using System.Security.Permissions;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[ToolboxItem(false)]
public class GridModel : Component, IGridVolatileDataContainer, IOperationFeedbackProvider, ICreateControl, IGridModelSource, ISerializable, IDisposable, IDeserializationCallback
{
	[DocumentationExclude]
	public class InternalGridDragDropData
	{
		[NonSerialized]
		[DocumentationExclude]
		public bool dndSource;

		[NonSerialized]
		[DocumentationExclude]
		public int dndStartRow;

		[NonSerialized]
		[DocumentationExclude]
		public int dndStartCol;

		[NonSerialized]
		[DocumentationExclude]
		public GridRangeInfoList dndSelList;

		[NonSerialized]
		[DocumentationExclude]
		public int dndForceDropCol;

		[NonSerialized]
		[DocumentationExclude]
		public int dndForceDropRow;

		[NonSerialized]
		[DocumentationExclude]
		public int dndRowOffset;

		[NonSerialized]
		[DocumentationExclude]
		public int dndColOffset;

		[NonSerialized]
		[DocumentationExclude]
		public bool dndCurrentCellText;

		[NonSerialized]
		[DocumentationExclude]
		public GridCellRendererBase dndCurrentCellControl;

		[DocumentationExclude]
		public static bool dndGridSource;

		[DocumentationExclude]
		public static int dndRowsCopied;

		[DocumentationExclude]
		public static int dndColsCopied;

		[DocumentationExclude]
		public static bool dndGridTargetStyle;

		[NonSerialized]
		[DocumentationExclude]
		public bool directDragDrop;
	}

	[DocumentationExclude]
	private sealed class Binder : SerializationBinder
	{
		public override Type BindToType(string assemblyName, string typeName)
		{
			Type type = Type.GetType(typeName);
			if (type != null)
			{
				return type;
			}
			type = SharedBaseAssembly.Assembly.GetType(typeName);
			if (type != null)
			{
				return type;
			}
			return GridWindowsAssembly.Assembly.GetType(typeName);
		}
	}

	internal GridData data;

	internal GridBaseStylesMap styleInfoMap;

	[NonSerialized]
	internal IGridData volatileData;

	[NonSerialized]
	internal IGridVolatileData gridVolatileData;

	[NonSerialized]
	internal string lastSyncText = string.Empty;

	internal GridNamespaceGroupItemCollection ngic;

	private static bool allowNewGridVolatileData = false;

	private bool inDispose;

	private bool isDisposed;

	private IGridModelEventsTarget eventsTarget;

	private GridRangeInfoList selectedRanges;

	[NonSerialized]
	internal bool modified;

	[NonSerialized]
	internal string fileName = string.Empty;

	[NonSerialized]
	internal int updateCount;

	[NonSerialized]
	internal bool updatePending;

	[NonSerialized]
	internal int currentRow;

	[NonSerialized]
	internal int currentCol;

	[NonSerialized]
	internal bool selectionStateChanged;

	[NonSerialized]
	internal GridControlBase activeGridView;

	[NonSerialized]
	internal bool inInit;

	[NonSerialized]
	internal string updateCommand;

	private GridCellInfoCollection gridCells;

	private GridRangeStyleCollection rangeStyles;

	[NonSerialized]
	private ListDictionary userData;

	private GridModelOptions options = new GridModelOptions();

	private bool ownOptions = true;

	private OperationFeedbackListener operationFeedbackListener;

	internal bool ignoreCellModelsChanged;

	[NonSerialized]
	private BeginUpdateOptions updateOptions;

	[NonSerialized]
	private bool inBeginUpdate;

	[NonSerialized]
	private bool inEndUpdate;

	[NonSerialized]
	private int suspendChangeEvents;

	[NonSerialized]
	private int suspendRecordUndo;

	private GridModelGraphicsProvider savedGridModelGraphicsProvider;

	[NonSerialized]
	private WeakReference graphicsProviderRef;

	[NonSerialized]
	private Stack feedbackStack = new Stack();

	private ArrayList deserializeList;

	internal bool shouldResetDesignTimeCollection = true;

	[NonSerialized]
	internal GridModelRowColSizeIndexer rowHeights;

	internal GridRowHeightCollection rowHeightEntries;

	internal GridModelRowColSizeIndexer colWidths;

	internal GridColWidthCollection colWidthEntries;

	internal GridRowHiddenCollection rowHiddenEntries;

	internal GridColHiddenCollection colHiddenEntries;

	internal GridBorder gridLineBorder;

	internal GridBorder fixedLineBorder;

	internal GridModelHideRowColsIndexer rowHidden;

	internal GridModelHideRowColsIndexer colHidden;

	[NonSerialized]
	private GridModelCommandManager commandStack;

	private GridModelRowColOperations rows;

	private GridModelRowColOperations cols;

	private IGridModelDataProvider dataProvider;

	[NonSerialized]
	private int inGetCellInfo;

	[NonSerialized]
	internal static int warnOnRecursionLevel = 6;

	private bool allowAdjustCellValue = true;

	[NonSerialized]
	private GridModelColStylesIndexer colStyles;

	[NonSerialized]
	private GridModelRowStylesIndexer rowStyles;

	[NonSerialized]
	private GridCurrentCellInfo currentCellInfo;

	[NonSerialized]
	private GridModelCutPaste cutPaste;

	[NonSerialized]
	private GridModelStyleDataExchange dataExchange;

	[NonSerialized]
	private GridModelTextDataExchange textDataExchange;

	[NonSerialized]
	private bool discardReadOnly;

	private bool readOnly;

	private GridModelSelections selections;

	private GridModelBanneredRanges banneredRangesObject;

	private GridModelCoveredRanges coveredRangesObject;

	[NonSerialized]
	private GridModelFloatingCells floatingCellsObject;

	private GridModelFloatingCells savedFloatingCellsObject;

	[NonSerialized]
	private GridModelMergeCells mergeCellsObject;

	private GridCellModelCollection cellModels;

	[NonSerialized]
	private int lastSyncEditRow;

	[NonSerialized]
	private int lastSyncEditCol;

	private InternalGridDragDropData dragDropModel;

	internal GridProperties properties;

	private Hashtable collectionToIListTable = new Hashtable();

	public IGridData VolatileData
	{
		get
		{
			return volatileData;
		}
		set
		{
			volatileData = value;
			gridVolatileData = volatileData as IGridVolatileData;
		}
	}

	public GridNamespaceGroupItemCollection NamespaceCollection
	{
		get
		{
			return ngic;
		}
		set
		{
			ngic = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public bool IsDisposing => inDispose;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public bool IsDisposed => isDisposed;

	public IGridModelEventsTarget GridModelEventsTarget
	{
		get
		{
			return eventsTarget;
		}
		set
		{
			eventsTarget = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridCellInfoCollection GridCells
	{
		get
		{
			if (gridCells == null)
			{
				gridCells = new GridCellInfoCollection(Data.sfTable);
			}
			return gridCells;
		}
		set
		{
			if (!object.ReferenceEquals(gridCells, value))
			{
				GridCells.WriteToData(value);
				gridCells = null;
				rangeStyles = null;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	public GridRangeStyleCollection RangeStyles
	{
		get
		{
			if (rangeStyles == null)
			{
				rangeStyles = new GridRangeStyleCollection(Data.sfTable);
			}
			ResetGridCells();
			return rangeStyles;
		}
		set
		{
			if (!object.ReferenceEquals(rangeStyles, value))
			{
				RangeStyles.WriteToData(Data.sfTable);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IDictionary UserData
	{
		get
		{
			if (userData == null)
			{
				userData = new ListDictionary();
			}
			return userData;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelOptions Options
	{
		[DebuggerStepThrough]
		get
		{
			return options;
		}
	}

	GridModel IGridModelSource.Model => this;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModel Model
	{
		[DebuggerStepThrough]
		get
		{
			return this;
		}
	}

	public OperationFeedbackListener OperationFeedbackListener
	{
		get
		{
			return operationFeedbackListener;
		}
		set
		{
			if (operationFeedbackListener != value)
			{
				if (operationFeedbackListener != null)
				{
					operationFeedbackListener.RemoveProvider(this);
				}
				operationFeedbackListener = value;
				if (operationFeedbackListener != null)
				{
					operationFeedbackListener.AddProvider(this);
				}
			}
		}
	}

	public GridControlBase ActiveGridView
	{
		get
		{
			return activeGridView;
		}
		set
		{
			if (activeGridView != value)
			{
				if (activeGridView != null)
				{
					activeGridView.NotifyDeactivate();
				}
				activeGridView = value;
				if (activeGridView != null)
				{
					activeGridView.NotifyActivate();
				}
				if (value.CurrentCell.GetCurrentCell(out var rowIndex, out var colIndex))
				{
					SetActiveCurrentCell(rowIndex, colIndex);
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public BeginUpdateOptions UpdateOptions
	{
		[DebuggerStepThrough]
		get
		{
			return updateOptions;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Updating
	{
		[DebuggerStepThrough]
		get
		{
			return updateCount > 0;
		}
	}

	internal string UpdateInfo => updateCommand;

	[Obsolete("Use CanGridRaiseEvents instead. There was a naming conflict with Whidbeys Component.CanRaiseEvents property.")]
	protected new bool CanRaiseEvents => CanGridRaiseEvents;

	protected virtual bool CanGridRaiseEvents => suspendChangeEvents == 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual bool ShouldRecordUndo
	{
		[DebuggerStepThrough]
		get
		{
			if (!inInit)
			{
				return suspendRecordUndo == 0;
			}
			return false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Initializing
	{
		[DebuggerStepThrough]
		get
		{
			return inInit;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridRangeInfo GridCellsRange
	{
		get
		{
			if (RowCount >= Rows.HeaderCount + 1 && ColCount >= Cols.HeaderCount + 1)
			{
				return GridRangeInfo.Cells(Rows.HeaderCount + 1, Cols.HeaderCount + 1, RowCount, ColCount);
			}
			return GridRangeInfo.Empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridRangeInfo ScrollableGridRangeInfo
	{
		get
		{
			if (RowCount >= Rows.FrozenCount + 1 && ColCount >= Cols.FrozenCount + 1)
			{
				return GridRangeInfo.Cells(Rows.FrozenCount + 1, Cols.FrozenCount + 1, RowCount, ColCount);
			}
			return GridRangeInfo.Empty;
		}
	}

	Stack IOperationFeedbackProvider.FeedbackStack => feedbackStack;

	public static bool AllowNewGridVolatileData
	{
		get
		{
			return allowNewGridVolatileData;
		}
		set
		{
			allowNewGridVolatileData = value;
		}
	}

	public GridBaseStylesMap BaseStylesMap
	{
		get
		{
			if (styleInfoMap == null)
			{
				styleInfoMap = OnCreateBaseStylesMap();
				OnBaseStylesMapChanged(EventArgs.Empty);
			}
			return styleInfoMap;
		}
		set
		{
			styleInfoMap = value;
			OnBaseStylesMapChanged(EventArgs.Empty);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBaseStylesMap => styleInfoMap != null;

	private string Name => string.Empty;

	[XmlIgnore]
	public GridData Data
	{
		get
		{
			if (data == null)
			{
				data = OnCreateData();
				OnDataChanged(EventArgs.Empty);
			}
			return data;
		}
		set
		{
			data = value;
			if (gridVolatileData != null)
			{
				gridVolatileData.Clear();
			}
			OnDataChanged(EventArgs.Empty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasData => data != null;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsUntitled => GridUtil.IsEmpty(fileName);

	public bool Modified
	{
		get
		{
			return modified;
		}
		set
		{
			if (value && shouldResetDesignTimeCollection)
			{
				_ = base.DesignMode;
			}
			if (modified != value)
			{
				modified = value;
				if (this.ModifiedChanged != null)
				{
					this.ModifiedChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	public string FileName
	{
		get
		{
			return fileName;
		}
		set
		{
			if (fileName != value)
			{
				fileName = value;
				if (this.FileNameChanged != null)
				{
					this.FileNameChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual GridRangeInfoList SelectedRanges
	{
		get
		{
			if (selectedRanges == null)
			{
				selectedRanges = new GridRangeInfoList();
			}
			return selectedRanges;
		}
	}

	[Description("Set columns widths interactively.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Behavior-CellDimensions")]
	public GridModelRowColSizeIndexer RowHeights
	{
		get
		{
			if (rowHeights == null)
			{
				rowHeights = new GridModelRowHeightsIndexer(this);
			}
			return rowHeights;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior-CellDimensions")]
	[Description("Set columns widths interactively.")]
	[Browsable(false)]
	public GridRowHeightCollection RowHeightEntries
	{
		get
		{
			if (rowHeightEntries == null)
			{
				rowHeightEntries = new GridRowHeightCollection(RowHeights);
			}
			return rowHeightEntries;
		}
		set
		{
			if (!object.ReferenceEquals(rowHeightEntries, value))
			{
				rowHeightEntries = value;
				RowHeightEntries.WriteToDict(RowHeights);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[XmlIgnore]
	[Description("Set columns widths interactively.")]
	[Category("Behavior-CellDimensions")]
	public GridModelRowColSizeIndexer ColWidths
	{
		get
		{
			if (colWidths == null)
			{
				colWidths = new GridModelColWidthsIndexer(this);
			}
			return colWidths;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior-CellDimensions")]
	[Description("Set columns widths interactively.")]
	[Browsable(true)]
	public GridColWidthCollection ColWidthEntries
	{
		get
		{
			if (colWidthEntries == null)
			{
				colWidthEntries = new GridColWidthCollection(ColWidths);
			}
			return colWidthEntries;
		}
		set
		{
			if (!object.ReferenceEquals(colWidthEntries, value))
			{
				colWidthEntries = value;
				ColWidthEntries.WriteToDict(ColWidths);
			}
		}
	}

	[Description("Hide rows interactively.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior-Visibility")]
	public GridRowHiddenCollection RowHiddenEntries
	{
		get
		{
			if (rowHiddenEntries == null)
			{
				rowHiddenEntries = new GridRowHiddenCollection(HideRows);
			}
			return rowHiddenEntries;
		}
		set
		{
			if (!object.ReferenceEquals(rowHiddenEntries, value))
			{
				rowHiddenEntries = value;
				RowHiddenEntries.WriteToDict(HideRows);
			}
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior-Visibility")]
	[Description("Hide columns interactively.")]
	public GridColHiddenCollection ColHiddenEntries
	{
		get
		{
			if (colHiddenEntries == null)
			{
				colHiddenEntries = new GridColHiddenCollection(HideCols);
			}
			return colHiddenEntries;
		}
		set
		{
			if (!object.ReferenceEquals(colHiddenEntries, value))
			{
				colHiddenEntries = value;
				ColHiddenEntries.WriteToDict(HideCols);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Behavior-Visibility")]
	[Description("Hide rows interactively.")]
	[Browsable(true)]
	public GridModelHideRowColsIndexer HideRows
	{
		get
		{
			if (rowHidden == null)
			{
				rowHidden = new GridModelHideRowsIndexer(this);
			}
			return rowHidden;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior-Visibility")]
	[Description("Hide columns interactively.")]
	[Browsable(false)]
	public GridModelHideRowColsIndexer HideCols
	{
		get
		{
			if (colHidden == null)
			{
				colHidden = new GridModelHideColsIndexer(this);
			}
			return colHidden;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelCommandManager CommandStack
	{
		get
		{
			if (commandStack == null)
			{
				commandStack = new GridModelCommandManager(this);
			}
			return commandStack;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowColOperations Rows
	{
		get
		{
			if (rows == null)
			{
				rows = new GridModelRowOperations(this);
			}
			return rows;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowColOperations Cols
	{
		get
		{
			if (cols == null)
			{
				cols = new GridModelColOperations(this);
			}
			return cols;
		}
	}

	GridBaseStylesMap IGridVolatileDataContainer.BaseStylesMap => BaseStylesMap;

	int IGridVolatileDataContainer.HeaderRowCount => Rows.HeaderCount;

	int IGridVolatileDataContainer.HeaderColCount => Cols.HeaderCount;

	public IGridModelDataProvider DataProvider
	{
		get
		{
			return dataProvider;
		}
		set
		{
			if (dataProvider != value)
			{
				dataProvider = value;
				OnDataProviderChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	public static int WarnOnRecursionLevel
	{
		get
		{
			return warnOnRecursionLevel;
		}
		set
		{
			warnOnRecursionLevel = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool AllowAdjustCellValue
	{
		get
		{
			return allowAdjustCellValue;
		}
		set
		{
			allowAdjustCellValue = value;
		}
	}

	public GridStyleInfo this[int rowIndex, int colIndex]
	{
		get
		{
			return volatileData[rowIndex, colIndex];
		}
		set
		{
			Data[rowIndex, colIndex] = (GridStyleInfoStore)value.Store.Clone();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelColStylesIndexer ColStyles
	{
		[DebuggerStepThrough]
		get
		{
			if (colStyles == null)
			{
				colStyles = new GridModelColStylesIndexer(this);
			}
			return colStyles;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowStylesIndexer RowStyles
	{
		[DebuggerStepThrough]
		get
		{
			if (rowStyles == null)
			{
				rowStyles = new GridModelRowStylesIndexer(this);
			}
			return rowStyles;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridStyleInfo TableStyle
	{
		get
		{
			return this[-1, -1];
		}
		set
		{
			this[-1, -1] = value;
		}
	}

	public virtual GridCurrentCellInfo CurrentCellInfo
	{
		get
		{
			return currentCellInfo;
		}
		set
		{
			currentCellInfo = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrentCellInfo => currentCellInfo != null;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCellRendererBase CurrentCellRenderer => CurrentCellInfo?.CellView;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelCutPaste CutPaste
	{
		get
		{
			if (cutPaste == null)
			{
				cutPaste = new GridModelCutPaste(this);
				OnCreatedCutPaste();
			}
			return cutPaste;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelStyleDataExchange DataExchange
	{
		get
		{
			if (dataExchange == null)
			{
				dataExchange = new GridModelStyleDataExchange(this);
			}
			return dataExchange;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelTextDataExchange TextDataExchange
	{
		get
		{
			if (textDataExchange == null)
			{
				textDataExchange = new GridModelTextDataExchange(this);
			}
			return textDataExchange;
		}
	}

	public int RowCount
	{
		get
		{
			if (gridVolatileData != null)
			{
				if (!gridVolatileData.HasRowCount)
				{
					GridRowColCountEventArgs e = new GridRowColCountEventArgs();
					if (dataProvider != null)
					{
						dataProvider.QueryRowCount(e);
					}
					OnQueryRowCount(e);
					if (e.Handled)
					{
						gridVolatileData.RowCount = e.Count;
					}
					else
					{
						gridVolatileData.RowCount = Data.RowCount;
					}
				}
				return gridVolatileData.RowCount;
			}
			GridRowColCountEventArgs e2 = new GridRowColCountEventArgs();
			if (dataProvider != null)
			{
				dataProvider.QueryRowCount(e2);
			}
			OnQueryRowCount(e2);
			if (!e2.Handled)
			{
				return Data.RowCount;
			}
			return e2.Count;
		}
		set
		{
			GridRowColCountEventArgs e = new GridRowColCountEventArgs(value);
			OnSaveRowCount(e);
			if (!e.Handled)
			{
				int num = (Initializing ? Data.RowCount : RowCount);
				if (value < num)
				{
					Rows.RemoveRange(value + 1, num);
				}
				else if (value > num)
				{
					Rows.InsertRange(num + 1, value - num);
				}
			}
			if (gridVolatileData != null)
			{
				gridVolatileData.RowCount = value;
			}
		}
	}

	public int ColCount
	{
		get
		{
			if (gridVolatileData != null)
			{
				if (!gridVolatileData.HasColCount)
				{
					GridRowColCountEventArgs e = new GridRowColCountEventArgs();
					if (dataProvider != null)
					{
						dataProvider.QueryColCount(e);
					}
					OnQueryColCount(e);
					if (e.Handled)
					{
						gridVolatileData.ColCount = e.Count;
					}
					else
					{
						gridVolatileData.ColCount = Data.ColCount;
					}
				}
				return gridVolatileData.ColCount;
			}
			GridRowColCountEventArgs e2 = new GridRowColCountEventArgs();
			if (dataProvider != null)
			{
				dataProvider.QueryColCount(e2);
			}
			OnQueryColCount(e2);
			if (!e2.Handled)
			{
				return Data.ColCount;
			}
			return e2.Count;
		}
		set
		{
			GridRowColCountEventArgs e = new GridRowColCountEventArgs(value);
			OnSaveColCount(e);
			if (!e.Handled)
			{
				int num = (Initializing ? Data.ColCount : ColCount);
				if (value < num)
				{
					Cols.RemoveRange(value + 1, num);
				}
				else if (value > num)
				{
					Cols.InsertRange(num + 1, value - num);
				}
			}
			if (gridVolatileData != null)
			{
				gridVolatileData.ColCount = value;
			}
		}
	}

	[DocumentationExclude]
	public bool DiscardReadOnly
	{
		get
		{
			if (!discardReadOnly)
			{
				return IsDesign;
			}
			return true;
		}
		set
		{
			discardReadOnly = value;
		}
	}

	private bool IsDesign
	{
		get
		{
			if (base.DesignMode)
			{
				return true;
			}
			if (ActiveGridView != null)
			{
				ISite site = ((IComponent)ActiveGridView).Site;
				if (site != null)
				{
					return site.DesignMode;
				}
			}
			return false;
		}
	}

	public bool ReadOnly
	{
		get
		{
			return readOnly;
		}
		set
		{
			if (value != readOnly)
			{
				readOnly = value;
				if (this.ReadOnlyChanged != null)
				{
					this.ReadOnlyChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	internal bool IsReadOnly
	{
		get
		{
			return ReadOnly;
		}
		set
		{
			ReadOnly = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IgnoreReadOnly
	{
		get
		{
			return DiscardReadOnly;
		}
		set
		{
			discardReadOnly = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelSelections Selections
	{
		get
		{
			if (selections == null)
			{
				selections = new GridModelSelections(this);
			}
			return selections;
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridModelBanneredRanges BanneredRanges
	{
		get
		{
			if (banneredRangesObject == null)
			{
				banneredRangesObject = new GridModelBanneredRanges(this);
			}
			return banneredRangesObject;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	public GridModelCoveredRanges CoveredRanges
	{
		get
		{
			if (coveredRangesObject == null)
			{
				coveredRangesObject = new GridModelCoveredRanges(this);
			}
			return coveredRangesObject;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelFloatingCells FloatingCells
	{
		get
		{
			if (floatingCellsObject == null)
			{
				floatingCellsObject = new GridModelFloatingCells(this);
			}
			return floatingCellsObject;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelMergeCells MergeCells
	{
		get
		{
			if (mergeCellsObject == null)
			{
				mergeCellsObject = new GridModelMergeCells(this);
			}
			return mergeCellsObject;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridCellModelCollection CellModels
	{
		get
		{
			if (cellModels == null)
			{
				cellModels = new GridCellModelCollection(this);
			}
			return cellModels;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public InternalGridDragDropData DragDropData
	{
		get
		{
			if (dragDropModel == null)
			{
				dragDropModel = new InternalGridDragDropData();
			}
			return dragDropModel;
		}
	}

	public GridProperties Properties
	{
		get
		{
			if (properties == null)
			{
				properties = new GridProperties();
			}
			return properties;
		}
		set
		{
			if (value != properties)
			{
				properties = value;
			}
		}
	}

	[Description("Occurs when the reference to the BaseStylesMap has changed.")]
	[Category("Behavior")]
	public event EventHandler BaseStylesMapChanged;

	[Category("Behavior")]
	[Description("Occurs when the reference to the GridData has changed.")]
	public event EventHandler DataChanged;

	[Category("Behavior")]
	[Description("Occurs when the modified flag has changed.")]
	public event EventHandler ModifiedChanged;

	[Category("Behavior")]
	[Description("Occurs when FileName has changed.")]
	public event EventHandler FileNameChanged;

	[Category("Behavior")]
	[Description("Occurs after the contents of a specified range of cells have changed.")]
	public event GridCellsChangedEventHandler CellsChanged;

	[Category("Behavior")]
	[Description(" Occurs before the contents of a specified range of cells are being changed.")]
	public event GridCellsChangingEventHandler CellsChanging;

	[Description("Occurs when any changes in the grid should be confirmed.")]
	[Category("Behavior")]
	public event CancelEventHandler ConfirmingPendingChanges;

	[Description("Occurs when Refresh was called.")]
	[Category("Behavior")]
	public event EventHandler RefreshRequest;

	[Description("Occurs when the first BeginUpdate was called for the grid model.")]
	[Category("Behavior")]
	public event EventHandler BeginUpdateRequest;

	[Description("Occurs when the last EndUpdate was called for the grid model.")]
	[Category("Behavior")]
	public event GridEndUpdateRequestEventHandler EndUpdateRequest;

	[Category("Data")]
	[Description("Occurs when the model is about to save style information about at specific cell.")]
	public event GridSaveCellInfoEventHandler SaveCellInfo;

	[Category("Data")]
	[Description("Occurs when the model queries for style information about a specific cell.")]
	public event GridSaveCellInfoEventHandler DataProviderSaveCellInfo;

	[Category("Clipboard")]
	[Description("Occurs for each cell when text is pasted from a buffer into several cells.")]
	public event GridPasteCellTextEventHandler PasteCellText;

	[Category("Data")]
	[Description("Occurs each time the GridStyleInfo.Text is called to get the string that represents the underlying cell's value")]
	public event GridCellTextEventHandler QueryCellText;

	[Description("Occurs each time the GridStyleInfo.Text is called to set the raw string that represents the underlying cell's value.")]
	[Category("Data")]
	public event GridCellTextEventHandler SaveCellText;

	[Description("Occurs when an undo or redo command has been added to the command stack.")]
	[Category("Behavior")]
	public event EventHandler CommandStackChanged;

	[Description("Occurs each time the GridStyleInfo.Text is called to get the string that represents the underlying cell's value")]
	[Category("Data")]
	public event GridCellTextEventHandler QueryCellFormattedText;

	[Category("Data")]
	[Description("Occurs each time the GridStyleInfo.FormattedText is called to set the raw string that represents the underlying cell's value.")]
	public event GridCellTextEventHandler SaveCellFormattedText;

	[Category("Data")]
	[Description("Handle this event to provide support for parsing the formatted string and convert it into the the underlying cell's value.")]
	public event GridCellTextEventHandler ParseCommonFormats;

	[Description("Occurs when the grid's CanPaste method is called.")]
	[Category("Behavior")]
	public event GridCutPasteEventHandler ClipboardCanPaste;

	[Category("Behavior")]
	[Description("Occurs when the grid's Paste method is called.")]
	public event GridCutPasteEventHandler ClipboardPaste;

	[Category("Behavior")]
	[Description("Occurs after called text or cells have been pasted.")]
	public event GridCutPasteEventHandler ClipboardPasted;

	[Category("Behavior")]
	[Description("Occurs when the user releases the mouse over a cell at the end of an OLE drag-and-drop operation and before the data are applied to the grid.")]
	public event GridOleDropAtRowColEventHandler OleDropAtRowCol;

	[Description("Occurs after the user releases the mouse over a cell at the end of an OLE drag-and-drop operation and the data were applied to the grid.")]
	[Category("Behavior")]
	public event EventHandler OleDroppedData;

	[Description("Occurs when the grid's CanCut method is called.")]
	[Category("Behavior")]
	public event GridCutPasteEventHandler ClipboardCanCut;

	[Description("Occurs when the grid's Cut method is called.")]
	[Category("Behavior")]
	public event GridCutPasteEventHandler ClipboardCut;

	[Category("Behavior")]
	[Description("Occurs when the grid's Copy method is called.")]
	public event GridCutPasteEventHandler ClipboardCopy;

	[Category("Behavior")]
	[Description("Occurs when the grid's CanCopy method is called.")]
	public event GridCutPasteEventHandler ClipboardCanCopy;

	[Category("Behavior")]
	[Description("Occurs when the grid's ClearCells method is called.")]
	public event GridClearingCellsEventHandler ClearingCells;

	[Category("Behavior")]
	[Description("Occurs when a user starts dragging a range of selected cells using OLE drag-and-drop.")]
	public event GridQueryOleDataSourceDataEventHandler QueryOleDataSourceData;

	[Description("Occurs when a user drops data onto another control using OLE drag-and-drop and does not press the Control Key.")]
	[Category("Behavior")]
	public event CancelEventHandler QueryDragDropMoveClearCells;

	[Description("Occurs when the model queries for style information about a specific cell.")]
	[Category("Behavior")]
	public event GridQueryCellInfoEventHandler QueryCellInfo;

	[Category("Behavior")]
	[Description("Occurs when the model queries for style information about a specific cell.")]
	public event GridQueryCellInfoEventHandler DataProviderQueryCellInfo;

	[Category("Behavior")]
	[Description("Occurs when the model queries information about covered cells at a specific cell.")]
	public event GridQueryCoveredRangeEventHandler QueryCoveredRange;

	[Category("Behavior")]
	[Description("Occurs when the model queries information about a bannered range at a specific cell.")]
	public event GridQueryBanneredRangeEventHandler QueryBanneredRange;

	[Category("Behavior")]
	[Description("Occurs before the column count is returned from the model.")]
	public event GridRowColCountEventHandler QueryColCount;

	[Description("Occurs before the row count is returned from the model.")]
	[Category("Behavior")]
	public event GridRowColCountEventHandler QueryRowCount;

	[Description("Occurs before the column count is changed in the model.")]
	[Category("Behavior")]
	public event GridRowColCountEventHandler SaveColCount;

	[Description("Occurs before the row count is changed in the model.")]
	[Category("Behavior")]
	public event GridRowColCountEventHandler SaveRowCount;

	[Description("Occurs is querying for a cell type.")]
	[Category("Behavior")]
	public event GridQueryCellModelEventHandler QueryCellModel;

	[Description("Occurs when the CellModels collection is changed")]
	[Category("Behavior")]
	public event CollectionChangeEventHandler CellModelsChanged;

	private event GridChangeLayoutCellsEventHandler ChangingLayoutCells;

	private event GridChangeLayoutCellsEventHandler ChangedLayoutCells;

	public event GridInvalidateRangeRequestEventHandler InvalidateRangeRequest;

	[Description("Occurs before the grid draws to or uses a Graphics context.")]
	[Category("Behavior")]
	public event GraphicsEventHandler PrepareGraphics;

	[Description("Occurs when an operation takes a longer time and the user should be notified about its status.")]
	[Category("Behavior")]
	public event OperationFeedbackEventHandler OperationFeedback;

	[Description("Occurs after row heights for a specified range of rows has changed.")]
	[Category("Behavior")]
	public event GridRowColSizeChangedEventHandler RowHeightsChanged;

	[Description("Occurs before row heights for a specified range of rows are changed.")]
	[Category("Behavior")]
	public event GridRowColSizeChangingEventHandler RowHeightsChanging;

	[Category("Behavior")]
	[Description("Occurs after column widths for a specified range of columns have been changed.")]
	public event GridRowColSizeChangedEventHandler ColWidthsChanged;

	[Category("Behavior")]
	[Description("Occurs before column widths for a specified range of columns are changed.")]
	public event GridRowColSizeChangingEventHandler ColWidthsChanging;

	[Category("Behavior")]
	[Description("Occurs before the size of a column is returned from the dictionary.")]
	public event GridRowColSizeEventHandler QueryColWidth;

	[Category("Behavior")]
	[Description("Occurs before the size of a row is returned from the dictionary.")]
	public event GridRowColSizeEventHandler QueryRowHeight;

	[Category("Behavior")]
	[Description("Occurs before the size of a row is returned from the dictionary.")]
	public event GridRowColSizeTotalEventHandler QueryRowHeightTotal;

	[Category("Behavior")]
	[Description("Occurs before the size of a column is stored in the dictionary.")]
	public event GridRowColSizeEventHandler SaveColWidth;

	[Category("Behavior")]
	[Description("Occurs before the size of a row is stored in the dictionary.")]
	public event GridRowColSizeEventHandler SaveRowHeight;

	[Category("Behavior")]
	[Description("Occurs after a range of columns was hidden.")]
	public event GridRowColHiddenEventHandler ColsHidden;

	[Description("Occurs before a range of columns is hidden.")]
	[Category("Behavior")]
	public event GridRowColHidingEventHandler ColsHiding;

	[Category("Behavior")]
	[Description("Occurs after a range of rows was hidden.")]
	public event GridRowColHiddenEventHandler RowsHidden;

	[Category("Behavior")]
	[Description("Occurs before a range of rows is hidden.")]
	public event GridRowColHidingEventHandler RowsHiding;

	[Category("Behavior")]
	[Description("Occurs before the hidden state of a column is returned from the dictionary.")]
	internal event GridRowColHideEventHandler QueryHideCol;

	[Category("Behavior")]
	[Description("Occurs before the hidden state of a column is stored in the dictionary.")]
	internal event GridRowColHideEventHandler SaveHideCol;

	[Description("Occurs before the hidden state of a row is returned from the dictionary.")]
	[Category("Behavior")]
	internal event GridRowColHideEventHandler QueryHideRow;

	[Category("Behavior")]
	[Description("Occurs before the hidden state of a row is stored in the dictionary.")]
	internal event GridRowColHideEventHandler SaveHideRow;

	[Category("Behavior")]
	[Description("Occurs before the default row height is changed.")]
	public event GridDefaultSizeChangingEventHandler DefaultRowHeightChanging;

	[Category("Behavior")]
	[Description("Occurs after the default row height has been changed.")]
	public event GridDefaultSizeChangedEventHandler DefaultRowHeightChanged;

	[Category("Behavior")]
	[Description("Occurs before the default column width is changed.")]
	public event GridDefaultSizeChangingEventHandler DefaultColWidthChanging;

	[Category("Behavior")]
	[Description("Occurs after the default column width has been changed.")]
	public event GridDefaultSizeChangedEventHandler DefaultColWidthChanged;

	[Description("Occurs after the header row count has been changed.")]
	[Category("Behavior")]
	public event GridCountChangedEventHandler HeaderRowCountChanged;

	[Description("Occurs before the header row count is changed.")]
	[Category("Behavior")]
	public event GridCountChangingEventHandler HeaderRowCountChanging;

	[Description("Occurs after the frozen row count has been changed.")]
	[Category("Behavior")]
	public event GridCountChangedEventHandler FrozenRowCountChanged;

	[Category("Behavior")]
	[Description("Occurs before the frozen row count is changed.")]
	public event GridCountChangingEventHandler FrozenRowCountChanging;

	[Category("Behavior")]
	[Description("Occurs after a range of rows is moved.")]
	public event GridRangeMovedEventHandler RowsMoved;

	[Category("Behavior")]
	[Description("Occurs before a range of rows is removed.")]
	public event GridRangeMovingEventHandler RowsMoving;

	[Description("Occurs after a range of rows has been removed.")]
	[Category("Behavior")]
	public event GridRangeRemovedEventHandler RowsRemoved;

	[Category("Behavior")]
	[Description("Occurs before a range of rows is removed.")]
	public event GridRangeRemovingEventHandler RowsRemoving;

	[Category("Behavior")]
	[Description("Occurs before a range of rows is inserted.")]
	public event GridRangeInsertingEventHandler RowsInserting;

	[Category("Behavior")]
	[Description("Occurs after a range of rows has been inserted.")]
	public event GridRangeInsertedEventHandler RowsInserted;

	[Category("Behavior")]
	[Description("Occurs after the header column count has been changed.")]
	public event GridCountChangedEventHandler HeaderColCountChanged;

	[Description("Occurs before the header column count is changed.")]
	[Category("Behavior")]
	public event GridCountChangingEventHandler HeaderColCountChanging;

	[Category("Behavior")]
	[Description("Occurs after the frozen column count has been changed.")]
	public event GridCountChangedEventHandler FrozenColCountChanged;

	[Category("Behavior")]
	[Description("Occurs before the frozen column count is changed.")]
	public event GridCountChangingEventHandler FrozenColCountChanging;

	[Description("Occurs after a range of columns is moved.")]
	[Category("Behavior")]
	public event GridRangeMovedEventHandler ColsMoved;

	[Category("Behavior")]
	[Description("Occurs before a range of columns is removed.")]
	public event GridRangeMovingEventHandler ColsMoving;

	[Description("Occurs after a range of columns has been inserted.")]
	[Category("Behavior")]
	public event GridRangeRemovedEventHandler ColsRemoved;

	[Category("Behavior")]
	[Description("Occurs before a range of columns is removed.")]
	public event GridRangeRemovingEventHandler ColsRemoving;

	[Description("Occurs before a range of columns is inserted.")]
	[Category("Behavior")]
	public event GridRangeInsertingEventHandler ColsInserting;

	[Description("Occurs after a range of columns has been inserted.")]
	[Category("Behavior")]
	public event GridRangeInsertedEventHandler ColsInserted;

	public event EventHandler DataProviderChanged;

	internal event EventHandler NotifyResetVolatileData;

	[Category("Behavior")]
	[Description("Occurs when Read-only mode has changed.")]
	public event EventHandler ReadOnlyChanged;

	[Category("Behavior")]
	[Description("Occurs before internal data structures are updated with new selection state from a SelectRange command.")]
	public event GridSelectionChangingEventHandler SelectionChanging;

	[Category("Behavior")]
	[Description("Occurs after internal data structures were updated with new selection state from a SelectRange command.")]
	public event GridSelectionChangedEventHandler SelectionChanged;

	[Category("Behavior")]
	[Description("Occurs before the grid will clear its list of selected ranges.")]
	public event EventHandler PrepareClearSelection;

	[Category("Behavior")]
	[Description("Occurs before the grid will change the active selection range.")]
	public event GridPrepareChangeSelectionEventHandler PrepareChangeSelection;

	[Category("Behavior")]
	[Description("Occurs before covering is applied or reset for a range of cells.")]
	public event GridCoveredRangesChangingEventHandler CoveredRangesChanging;

	[Description("Occurs after covering was applied or reset for a range of cells.")]
	[Category("Behavior")]
	public event GridCoveredRangesChangedEventHandler CoveredRangesChanged;

	[Description("Occurs before bannering is applied or reset for a range of cells.")]
	[Category("Behavior")]
	public event GridBanneredRangesChangingEventHandler BanneredRangesChanging;

	[Category("Behavior")]
	[Description("Occurs after bannering was applied or reset for a range of cells.")]
	public event GridBanneredRangesChangedEventHandler BanneredRangesChanged;

	[Description("Occurs after floating state was changed for a range of cells.")]
	[Category("Behavior")]
	public event GridFloatingCellsChangedEventHandler FloatingCellsChanged;

	[Description("Occurs after merge state was changed for a range of cells.")]
	[Category("Behavior")]
	public event GridMergeCellsChangedEventHandler MergeCellsChanged;

	[Category("Behavior")]
	[Description("Occurs when grid compares the contents of two cells to determine if they should be merged.")]
	public event GridQueryCanMergeCellsEventHandler QueryCanMergeCells;

	internal event GridCellEventHandler SynchronizingCurrentCell;

	public new void Dispose()
	{
		if (!isDisposed)
		{
			inDispose = true;
			base.Dispose();
			inDispose = false;
			isDisposed = true;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (feedbackStack != null)
		{
			feedbackStack.Clear();
			feedbackStack = null;
		}
		if (savedGridModelGraphicsProvider != null)
		{
			savedGridModelGraphicsProvider.Dispose();
			savedGridModelGraphicsProvider = null;
		}
		if (volatileData is IDisposable)
		{
			((IDisposable)volatileData).Dispose();
		}
		volatileData = null;
		activeGridView = null;
		banneredRangesObject = null;
		if (cellModels != null)
		{
			cellModels.Dispose();
		}
		cellModels = null;
		if (colHidden != null)
		{
			colHidden.Dispose();
		}
		colHidden = null;
		if (cols != null)
		{
			cols.Dispose();
		}
		cols = null;
		if (colStyles != null)
		{
			colStyles.Dispose();
		}
		colStyles = null;
		if (colWidths != null)
		{
			colWidths.Dispose();
		}
		colWidths = null;
		if (commandStack != null)
		{
			commandStack.Dispose();
		}
		commandStack = null;
		coveredRangesObject = null;
		currentCellInfo = null;
		if (cutPaste != null)
		{
			cutPaste.Dispose();
		}
		cutPaste = null;
		data = null;
		DataProvider = null;
		deserializeList = null;
		dragDropModel = null;
		eventsTarget = null;
		floatingCellsObject = null;
		graphicsProviderRef = null;
		mergeCellsObject = null;
		operationFeedbackListener = null;
		if (ownOptions && options != null)
		{
			options.Dispose();
		}
		properties = null;
		if (rowHeights != null)
		{
			rowHeights.Dispose();
		}
		rowHeights = null;
		if (rowHidden != null)
		{
			rowHidden.Dispose();
		}
		rowHidden = null;
		if (rows != null)
		{
			rows.Dispose();
		}
		rows = null;
		if (rowStyles != null)
		{
			rowStyles.Dispose();
		}
		rowStyles = null;
		savedFloatingCellsObject = null;
		selectedRanges = null;
		if (selections != null)
		{
			selections.Dispose();
		}
		selections = null;
		if (styleInfoMap != null)
		{
			styleInfoMap.Dispose();
		}
		styleInfoMap = null;
		if (textDataExchange != null)
		{
			textDataExchange.Dispose();
		}
		textDataExchange = null;
		userData = null;
		volatileData = null;
		base.Dispose(disposing);
		isDisposed = true;
	}

	public void ResetGridCells()
	{
		gridCells = null;
	}

	public void ResetRangeStyles()
	{
		RangeStyles.Clear();
		RangeStyles.WriteToData();
	}

	public void SetOptions(GridModelOptions options)
	{
		if (options != this.options)
		{
			if (ownOptions)
			{
				options?.Dispose();
			}
			this.options = options;
			if (options.gridModel == null)
			{
				options.gridModel = this;
			}
			ownOptions = false;
		}
	}

	protected virtual void OnCommandStackChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCommandStackChanged(e);
		}
		if (this.CommandStackChanged != null)
		{
			this.CommandStackChanged(this, e);
		}
	}

	internal void RaiseCommandStackChanged(EventArgs e)
	{
		OnCommandStackChanged(e);
	}

	protected virtual void OnQueryCellText(GridCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCellText(e);
		}
		if (this.QueryCellText != null)
		{
			this.QueryCellText(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseQueryCellText(GridCellTextEventArgs e)
	{
		OnQueryCellText(e);
	}

	protected virtual void OnSaveCellText(GridCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveCellText(e);
		}
		if (this.SaveCellText != null)
		{
			this.SaveCellText(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseSaveCellText(GridCellTextEventArgs e)
	{
		OnSaveCellText(e);
	}

	protected virtual void OnQueryCellFormattedText(GridCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCellFormattedText(e);
		}
		if (this.QueryCellFormattedText != null)
		{
			this.QueryCellFormattedText(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseQueryCellFormattedText(GridCellTextEventArgs e)
	{
		OnQueryCellFormattedText(e);
	}

	protected virtual void OnSaveCellFormattedText(GridCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveCellFormattedText(e);
		}
		if (this.SaveCellFormattedText != null)
		{
			this.SaveCellFormattedText(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseSaveCellFormattedText(GridCellTextEventArgs e)
	{
		OnSaveCellFormattedText(e);
	}

	protected virtual void OnParseCommonFormats(GridCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnParseCommonFormats(e);
		}
		if (this.ParseCommonFormats != null)
		{
			this.ParseCommonFormats(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseParseCommonFormats(GridCellTextEventArgs e)
	{
		OnParseCommonFormats(e);
		DefaultParseCommonFormats(e);
	}

	internal void DefaultParseCommonFormats(GridCellTextEventArgs e)
	{
		if (e.Handled || e.Text == string.Empty || e.Text == null)
		{
			return;
		}
		switch (e.Style.Format)
		{
		case "P":
			if (e.Text.EndsWith("%"))
			{
				string text = e.Text;
				text = text.TrimEnd('%');
				decimal num2 = decimal.Parse(text, NumberStyles.Any, e.Style.GetCulture(useCurrentCultureIfNull: true)) * 0.01m;
				e.Style.CellValue = Convert.ChangeType(num2, e.Style.CellValueType);
				e.Handled = true;
			}
			break;
		case "X":
		{
			long num = long.Parse(e.Text, NumberStyles.AllowHexSpecifier, e.Style.GetCulture(useCurrentCultureIfNull: true));
			e.Style.CellValue = Convert.ChangeType(num, e.Style.CellValueType);
			e.Handled = true;
			break;
		}
		}
	}

	protected virtual void OnOleDropAtRowCol(GridOleDropAtRowColEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveCellFormattedText(e);
		}
		if (this.OleDropAtRowCol != null)
		{
			this.OleDropAtRowCol(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseOleDropAtRowCol(GridOleDropAtRowColEventArgs e)
	{
		OnOleDropAtRowCol(e);
	}

	protected virtual void OnOleDroppedData(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnOleDroppedData(e);
		}
		if (this.OleDroppedData != null)
		{
			this.OleDroppedData(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseOleDroppedData(EventArgs e)
	{
		OnOleDroppedData(e);
	}

	protected virtual void OnQueryOleDataSourceData(GridQueryOleDataSourceDataEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryOleDataSourceData(e);
		}
		if (CanGridRaiseEvents && this.QueryOleDataSourceData != null)
		{
			this.QueryOleDataSourceData(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseQueryOleDataSourceData(GridQueryOleDataSourceDataEventArgs e)
	{
		OnQueryOleDataSourceData(e);
	}

	protected virtual void OnQueryDragDropMoveClearCells(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryDragDropMoveClearCells(e);
		}
		if (this.QueryDragDropMoveClearCells != null)
		{
			this.QueryDragDropMoveClearCells(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseQueryDragDropMoveClearCells(CancelEventArgs e)
	{
		OnQueryDragDropMoveClearCells(e);
	}

	protected virtual void OnClipboardCanPaste(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardCanPaste(e);
		}
		if (CanGridRaiseEvents && this.ClipboardCanPaste != null)
		{
			this.ClipboardCanPaste(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardCanPaste(GridCutPasteEventArgs e)
	{
		OnClipboardCanPaste(e);
	}

	protected virtual void OnClipboardPaste(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardPaste(e);
		}
		if (CanGridRaiseEvents && this.ClipboardPaste != null)
		{
			this.ClipboardPaste(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardPaste(GridCutPasteEventArgs e)
	{
		OnClipboardPaste(e);
	}

	protected virtual void OnClipboardPasted(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardPasted(e);
		}
		if (CanGridRaiseEvents && this.ClipboardPasted != null)
		{
			this.ClipboardPasted(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardPasted(GridCutPasteEventArgs e)
	{
		OnClipboardPasted(e);
	}

	protected virtual void OnClipboardCanCut(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardCanCut(e);
		}
		if (CanGridRaiseEvents && this.ClipboardCanCut != null)
		{
			this.ClipboardCanCut(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardCanCut(GridCutPasteEventArgs e)
	{
		OnClipboardCanCut(e);
	}

	protected virtual void OnClipboardCut(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardCut(e);
		}
		if (CanGridRaiseEvents && this.ClipboardCut != null)
		{
			this.ClipboardCut(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardCut(GridCutPasteEventArgs e)
	{
		OnClipboardCut(e);
	}

	protected virtual void OnClipboardCopy(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardCopy(e);
		}
		if (CanGridRaiseEvents && this.ClipboardCopy != null)
		{
			this.ClipboardCopy(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardCopy(GridCutPasteEventArgs e)
	{
		OnClipboardCopy(e);
	}

	protected virtual void OnClipboardCanCopy(GridCutPasteEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClipboardCanCopy(e);
		}
		if (CanGridRaiseEvents && this.ClipboardCanCopy != null)
		{
			this.ClipboardCanCopy(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClipboardCanCopy(GridCutPasteEventArgs e)
	{
		OnClipboardCanCopy(e);
	}

	protected virtual void OnClearingCells(GridClearingCellsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnClearingCells(e);
		}
		if (this.ClearingCells != null)
		{
			this.ClearingCells(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseClearingCells(GridClearingCellsEventArgs e)
	{
		OnClearingCells(e);
	}

	protected virtual void OnQueryCellModel(GridQueryCellModelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCellModel(e);
		}
		if (this.QueryCellModel != null)
		{
			this.QueryCellModel(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseQueryCellModel(GridQueryCellModelEventArgs e)
	{
		OnQueryCellModel(e);
		if (e.CellModel == null)
		{
			IGridCellModelFactory cellModelFactory = GridFactoryProvider.CellModelFactory;
			if (cellModelFactory != null)
			{
				e.CellModel = cellModelFactory.CreateCellModel(e.CellType, this);
				return;
			}
			cellModelFactory = new GridBaseCellModelFactory(isDefault: true);
			GridFactoryProvider.Init(cellModelFactory);
			e.CellModel = cellModelFactory.CreateCellModel(e.CellType, this);
		}
	}

	protected virtual void OnCellModelsChanged(CollectionChangeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellModelsChanged(e);
		}
		if (ActiveGridView != null)
		{
			ActiveGridView.CurrentCell.gridModel_CellModelsChanged(this, e);
		}
		if (this.CellModelsChanged != null)
		{
			this.CellModelsChanged(this, e);
		}
	}

	internal void RaiseCellModelsChanged(CollectionChangeEventArgs e)
	{
		if (!ignoreCellModelsChanged)
		{
			OnCellModelsChanged(e);
		}
	}

	protected virtual void OnQueryCoveredRange(GridQueryCoveredRangeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCoveredRange(e);
		}
		try
		{
			if (this.QueryCoveredRange != null)
			{
				this.QueryCoveredRange(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseQueryCoveredRange(GridQueryCoveredRangeEventArgs e)
	{
		OnQueryCoveredRange(e);
	}

	protected virtual void OnQueryBanneredRange(GridQueryBanneredRangeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryBanneredRange(e);
		}
		try
		{
			if (this.QueryBanneredRange != null)
			{
				this.QueryBanneredRange(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseQueryBanneredRange(GridQueryBanneredRangeEventArgs e)
	{
		OnQueryBanneredRange(e);
	}

	protected virtual void OnQueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCellInfo(e);
		}
		try
		{
			if (this.QueryCellInfo != null)
			{
				this.QueryCellInfo(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public void RaiseQueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		OnQueryCellInfo(e);
	}

	protected virtual void OnDataProviderQueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDataProviderQueryCellInfo(e);
		}
		try
		{
			if (this.DataProviderQueryCellInfo != null)
			{
				this.DataProviderQueryCellInfo(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseDataProviderQueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		OnDataProviderQueryCellInfo(e);
	}

	internal void SetActiveCurrentCell(int row, int col)
	{
		if (row != currentRow || col != currentCol)
		{
			currentRow = row;
			currentCol = col;
			selectionStateChanged = true;
		}
	}

	public void BeginUpdate()
	{
		BeginUpdate(BeginUpdateOptions.None, string.Empty);
	}

	public void BeginUpdate(BeginUpdateOptions options)
	{
		BeginUpdate(options, string.Empty);
	}

	public virtual void BeginUpdate(BeginUpdateOptions options, string commandDesc)
	{
		if (!inInit && !inBeginUpdate)
		{
			Trace.Indent();
			if (updateCount++ == 0)
			{
				updateOptions = options;
				updateCommand = commandDesc;
			}
			else
			{
				updateOptions &= options;
			}
			OnBeginUpdateRequest(EventArgs.Empty);
		}
	}

	public void EndUpdate()
	{
		EndUpdate(update: true);
	}

	public void CancelUpdate()
	{
		while (updateCount > 0)
		{
			EndUpdate(update: false);
		}
	}

	public virtual void EndUpdate(bool update)
	{
		if (!inInit && !inEndUpdate)
		{
			OnEndUpdateRequest(new GridEndUpdateRequestEventArgs(update));
			if (updateCount > 0 && --updateCount == 0)
			{
				updateCommand = string.Empty;
			}
			Trace.Unindent();
		}
	}

	protected virtual void OnBeginUpdateRequest(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnBeginUpdateRequest(e);
		}
		if (this.BeginUpdateRequest != null)
		{
			this.BeginUpdateRequest(this, e);
		}
	}

	protected virtual void OnEndUpdateRequest(GridEndUpdateRequestEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnEndUpdateRequest(e);
		}
		if (this.EndUpdateRequest != null)
		{
			this.EndUpdateRequest(this, e);
		}
	}

	[DebuggerStepThrough]
	public void SuspendChangeEvents()
	{
		suspendChangeEvents++;
	}

	[DebuggerStepThrough]
	public void ResumeChangeEvents()
	{
		if (suspendChangeEvents > 0)
		{
			suspendChangeEvents--;
		}
	}

	[DebuggerStepThrough]
	public void SuspendRecordUndo()
	{
		suspendRecordUndo++;
	}

	[DebuggerStepThrough]
	public void ResumeRecordUndo()
	{
		if (suspendRecordUndo > 0)
		{
			suspendRecordUndo--;
		}
	}

	[Conditional("Changelayout")]
	internal void NotifyChangingLayoutCells(GridRangeInfo range)
	{
	}

	[Conditional("Changelayout")]
	internal void OnChangingLayoutCells(GridChangeLayoutCellsEventArgs e)
	{
		if (!CanGridRaiseEvents || this.ChangingLayoutCells == null)
		{
			return;
		}
		try
		{
			this.ChangingLayoutCells(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	[Conditional("Changelayout")]
	internal void NotifyChangedLayoutCells(GridRangeInfo range)
	{
		_ = inInit;
	}

	[Conditional("Changelayout")]
	internal void OnChangedLayoutCells(GridChangeLayoutCellsEventArgs e)
	{
		if (!CanGridRaiseEvents || this.ChangingLayoutCells == null)
		{
			return;
		}
		try
		{
			this.ChangedLayoutCells(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public void BeginInit()
	{
		if (inInit)
		{
			throw new Exception("BeginInit called twice.");
		}
		AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
		inInit = true;
	}

	public void EndInit()
	{
		AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		inInit = false;
	}

	public virtual Control CreateControl()
	{
		GridControlBase gridControlBase = new GridControlBase(this);
		gridControlBase.FillSplitterPane = true;
		return gridControlBase;
	}

	public virtual void Refresh()
	{
		if (this.RefreshRequest != null)
		{
			this.RefreshRequest(this, EventArgs.Empty);
		}
	}

	public virtual void InvalidateRange(GridRangeInfo range, GridRangeOptions options)
	{
		if (this.InvalidateRangeRequest != null)
		{
			this.InvalidateRangeRequest(this, new GridInvalidateRangeRequestEventArgs(range, options));
		}
	}

	protected virtual void OnInvalidateRangeRequest(GridInvalidateRangeRequestEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnInvalidateRangeRequest(e);
		}
		if (this.InvalidateRangeRequest != null)
		{
			this.InvalidateRangeRequest(this, e);
		}
	}

	protected virtual void OnPrepareGraphics(GraphicsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPrepareGraphics(e);
		}
		if (this.PrepareGraphics != null)
		{
			this.PrepareGraphics(this, e);
		}
	}

	public void DoPrepareGraphics(Graphics g)
	{
		OnPrepareGraphics(new GraphicsEventArgs(g));
	}

	[Obsolete("It is recommended to use GetGraphicsProvider instead since this method will keep a Display Graphics context in memory if no active grid view is attached.")]
	public Graphics CreateGraphics()
	{
		if (savedGridModelGraphicsProvider == null)
		{
			if (ActiveGridView != null)
			{
				return ActiveGridView.CreateGridGraphics();
			}
			savedGridModelGraphicsProvider = new GridModelGraphicsProvider(this);
		}
		return savedGridModelGraphicsProvider.Graphics;
	}

	public IGraphicsProvider GetGraphicsProvider()
	{
		GridModelGraphicsProvider gridModelGraphicsProvider = null;
		if (graphicsProviderRef != null)
		{
			gridModelGraphicsProvider = graphicsProviderRef.Target as GridModelGraphicsProvider;
		}
		if (gridModelGraphicsProvider == null)
		{
			gridModelGraphicsProvider = new GridModelGraphicsProvider(this);
			graphicsProviderRef = new WeakReference(gridModelGraphicsProvider);
		}
		return gridModelGraphicsProvider;
	}

	void IOperationFeedbackProvider.RaiseOperationFeedbackEvent(OperationFeedbackEventArgs e)
	{
		if (this.OperationFeedback != null)
		{
			this.OperationFeedback(this, e);
		}
	}

	public GridModel(Type type)
	{
		CreateGridVolatileData();
		options.gridModel = this;
	}

	public GridModel()
		: this(typeof(GridModel))
	{
	}

	private void CreateGridVolatileData()
	{
		if (AllowNewGridVolatileData)
		{
			volatileData = (gridVolatileData = new GridNewVolatileData(this));
		}
		else
		{
			volatileData = (gridVolatileData = new GridVolatileData(this));
		}
	}

	protected GridModel(SerializationInfo info, StreamingContext context)
	{
		data = (GridData)info.GetValue("Data", typeof(GridData));
		rowHeights = (GridModelRowColSizeIndexer)info.GetValue("RowHeights", typeof(GridModelRowColSizeIndexer));
		colWidths = (GridModelRowColSizeIndexer)info.GetValue("ColWidths", typeof(GridModelRowColSizeIndexer));
		rows = (GridModelRowColOperations)info.GetValue("Rows", typeof(GridModelRowColOperations));
		cols = (GridModelRowColOperations)info.GetValue("Cols", typeof(GridModelRowColOperations));
		styleInfoMap = (GridBaseStylesMap)info.GetValue("BaseStylesMap", typeof(GridBaseStylesMap));
		selectedRanges = (GridRangeInfoList)info.GetValue("SelectedRanges", typeof(GridRangeInfoList));
		rowHidden = (GridModelHideRowColsIndexer)info.GetValue("HideRows", typeof(GridModelHideRowColsIndexer));
		colHidden = (GridModelHideRowColsIndexer)info.GetValue("HideCols", typeof(GridModelHideRowColsIndexer));
		coveredRangesObject = (GridModelCoveredRanges)info.GetValue("CoveredRanges", typeof(GridModelCoveredRanges));
		cellModels = (GridCellModelCollection)info.GetValue("CellModels", typeof(GridCellModelCollection));
		floatingCellsObject = (GridModelFloatingCells)info.GetValue("FloatingCells", typeof(GridModelFloatingCells));
		options = (GridModelOptions)info.GetValue("Options", typeof(GridModelOptions));
		options.gridModel = this;
		deserializeList = new ArrayList();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Value is GridModelBound)
			{
				deserializeList.Add(enumerator.Value);
			}
			if (enumerator.Name == "Properties")
			{
				properties = (GridProperties)info.GetValue("Properties", typeof(GridProperties));
			}
			else if (enumerator.Name == "BanneredRanges")
			{
				banneredRangesObject = (GridModelBanneredRanges)info.GetValue("BanneredRanges", typeof(GridModelBanneredRanges));
			}
		}
		CreateGridVolatileData();
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		((IDeserializationCallback)Data)?.OnDeserialization(sender);
		foreach (GridModelBound deserialize in deserializeList)
		{
			deserialize.RaiseModelDeserialization(sender, this);
		}
		floatingCellsObject.SetFloatCellsMode(options.FloatCellsMode);
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		GetObjectData(info, context);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Data", data);
		info.AddValue("RowHeights", rowHeights);
		info.AddValue("ColWidths", colWidths);
		info.AddValue("Rows", rows);
		info.AddValue("Cols", cols);
		info.AddValue("BaseStylesMap", styleInfoMap);
		info.AddValue("SelectedRanges", selectedRanges);
		info.AddValue("HideRows", rowHidden);
		info.AddValue("HideCols", colHidden);
		info.AddValue("CoveredRanges", coveredRangesObject);
		info.AddValue("CellModels", cellModels);
		info.AddValue("FloatingCells", floatingCellsObject);
		info.AddValue("Options", options);
		info.AddValue("Properties", properties);
		info.AddValue("BanneredRanges", banneredRangesObject);
	}

	protected virtual GridBaseStylesMap OnCreateBaseStylesMap()
	{
		GridBaseStylesMap gridBaseStylesMap = new GridBaseStylesMap();
		gridBaseStylesMap.RegisterStandardStyles();
		return gridBaseStylesMap;
	}

	protected virtual void OnBaseStylesMapChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnBaseStylesMapChanged(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.BaseStylesMapChanged != null)
			{
				this.BaseStylesMapChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseBaseStylesMapChanged(EventArgs e)
	{
		OnBaseStylesMapChanged(e);
	}

	public virtual GridData OnCreateData()
	{
		return new GridData();
	}

	protected virtual void OnDataChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDataChanged(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.DataChanged != null)
			{
				this.DataChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseDataChanged(EventArgs e)
	{
		OnDataChanged(e);
	}

	public static GridModel LoadSoap(string fileName)
	{
		GridModel gridModel = null;
		Stream stream = File.OpenRead(fileName);
		try
		{
			gridModel = LoadSoap(stream);
			gridModel.fileName = fileName;
			return gridModel;
		}
		finally
		{
			stream.Close();
		}
	}

	public static GridModel LoadSoap(Stream s)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			return LoadSoapStream(s);
		}
		catch
		{
			s.Position = 0L;
			TextReader textReader = new StreamReader(s);
			string input = textReader.ReadToEnd();
			input = Regex.Replace(input, ", Version=.+\\</AssemblyName\\>", "</AssemblyName>");
			UTF8Encoding uTF8Encoding = new UTF8Encoding();
			byte[] bytes = uTF8Encoding.GetBytes(input);
			s = new MemoryStream(bytes);
			return LoadSoapStream(s);
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
	}

	private static GridModel LoadSoapStream(Stream s)
	{
		SoapFormatter soapFormatter = new SoapFormatter();
		soapFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		soapFormatter.Binder = new Binder();
		GridModel gridModel = soapFormatter.Deserialize(s) as GridModel;
		if (gridModel != null && gridModel.BaseStylesMap != null && gridModel.BaseStylesMap.Modified)
		{
			gridModel.BaseStylesMap = (GridBaseStylesMap)gridModel.BaseStylesMap.Clone();
		}
		gridModel.Modified = false;
		return gridModel;
	}

	public void SaveSoap()
	{
		SaveSoap(fileName);
	}

	public void SaveSoap(string fileName)
	{
		this.fileName = fileName;
		Stream baseStream = File.CreateText(fileName).BaseStream;
		SaveSoap(baseStream);
		baseStream.Close();
	}

	public void SaveSoap(Stream s)
	{
		SoapFormatter soapFormatter = new SoapFormatter();
		soapFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		soapFormatter.Serialize(s, this);
		Modified = false;
	}

	public static GridModel LoadBinary(string fileName)
	{
		GridModel gridModel = null;
		Stream stream = File.OpenRead(fileName);
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Binder = new Binder();
			object obj = binaryFormatter.Deserialize(stream);
			gridModel = obj as GridModel;
			if (gridModel != null && gridModel.BaseStylesMap != null && gridModel.BaseStylesMap.Modified)
			{
				gridModel.BaseStylesMap = (GridBaseStylesMap)gridModel.BaseStylesMap.Clone();
			}
			gridModel.Modified = false;
			gridModel.fileName = fileName;
			return gridModel;
		}
		finally
		{
			stream.Close();
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
	}

	public static GridModel LoadBinary(Stream s)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
			binaryFormatter.Binder = new Binder();
			GridModel gridModel = binaryFormatter.Deserialize(s) as GridModel;
			if (gridModel != null && gridModel.BaseStylesMap != null && gridModel.BaseStylesMap.Modified)
			{
				gridModel.BaseStylesMap = (GridBaseStylesMap)gridModel.BaseStylesMap.Clone();
			}
			gridModel.Modified = false;
			return gridModel;
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
	}

	public void SaveBinary()
	{
		SaveBinary(fileName);
	}

	public void SaveBinary(string fileName)
	{
		this.fileName = fileName;
		Stream stream = File.Create(fileName);
		SaveBinary(stream);
		stream.Close();
	}

	public void SaveBinary(Stream s)
	{
		BinaryFormatter binaryFormatter = new BinaryFormatter();
		binaryFormatter.AssemblyFormat = FormatterAssemblyStyle.Simple;
		binaryFormatter.Serialize(s, this);
		Modified = false;
	}

	public virtual int NameToColIndex(string name)
	{
		int result = -1;
		try
		{
			result = ((dataProvider != null) ? dataProvider.NameToColIndex(name) : GridRangeInfo.Parse(name).Left);
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

	public virtual int NameToRowIndex(string name)
	{
		int result = -1;
		try
		{
			if (dataProvider == null)
			{
				if (name.Length > 0 && char.IsDigit(name[0]))
				{
					result = int.Parse(name);
				}
				else
				{
					GridRangeInfo gridRangeInfo = GridRangeInfo.Parse(name);
					if (gridRangeInfo != null)
					{
						result = gridRangeInfo.Top;
					}
				}
			}
			else
			{
				result = dataProvider.NameToRowIndex(name);
			}
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

	protected virtual void OnRowHeightsChanged(GridRowColSizeChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowHeightsChanged(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.RowHeightsChanged != null)
			{
				this.RowHeightsChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseRowHeightsChanged(GridRowColSizeChangedEventArgs e)
	{
		OnRowHeightsChanged(e);
	}

	protected virtual void OnRowHeightsChanging(GridRowColSizeChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowHeightsChanging(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.RowHeightsChanging != null)
			{
				this.RowHeightsChanging(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void RaiseRowHeightsChanging(GridRowColSizeChangingEventArgs e)
	{
		OnRowHeightsChanging(e);
	}

	protected virtual void OnColWidthsChanged(GridRowColSizeChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColWidthsChanged(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.ColWidthsChanged != null)
			{
				this.ColWidthsChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseColWidthsChanged(GridRowColSizeChangedEventArgs e)
	{
		OnColWidthsChanged(e);
	}

	protected virtual void OnColWidthsChanging(GridRowColSizeChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColWidthsChanging(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.ColWidthsChanging != null)
			{
				this.ColWidthsChanging(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void RaiseColWidthsChanging(GridRowColSizeChangingEventArgs e)
	{
		OnColWidthsChanging(e);
	}

	protected virtual void OnSaveRowHeight(GridRowColSizeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveRowHeight(e);
		}
		if (this.SaveRowHeight != null)
		{
			this.SaveRowHeight(this, e);
		}
	}

	internal void RaiseSaveRowHeight(GridRowColSizeEventArgs e)
	{
		OnSaveRowHeight(e);
	}

	protected virtual void OnQueryRowHeight(GridRowColSizeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryRowHeight(e);
		}
		if (this.QueryRowHeight != null)
		{
			this.QueryRowHeight(this, e);
		}
	}

	internal void RaiseQueryRowHeight(GridRowColSizeEventArgs e)
	{
		OnQueryRowHeight(e);
	}

	protected virtual void OnQueryRowHeightTotal(GridRowColSizeTotalEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryRowHeightTotal(e);
		}
		if (this.QueryRowHeightTotal != null)
		{
			this.QueryRowHeightTotal(this, e);
		}
	}

	internal void RaiseQueryRowHeightTotal(GridRowColSizeTotalEventArgs e)
	{
		OnQueryRowHeightTotal(e);
	}

	protected virtual void OnSaveColWidth(GridRowColSizeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveColWidth(e);
		}
		if (this.SaveColWidth != null)
		{
			this.SaveColWidth(this, e);
		}
	}

	internal void RaiseSaveColWidth(GridRowColSizeEventArgs e)
	{
		OnSaveColWidth(e);
	}

	protected virtual void OnQueryColWidth(GridRowColSizeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryColWidth(e);
		}
		if (this.QueryColWidth != null)
		{
			this.QueryColWidth(this, e);
		}
	}

	internal void RaiseQueryColWidth(GridRowColSizeEventArgs e)
	{
		OnQueryColWidth(e);
	}

	[DocumentationExclude]
	public void SetRowHeightsInt(GridModelRowColSizeIndexer rowHeights)
	{
		this.rowHeights = rowHeights;
	}

	public bool ShouldSerializeRowHeightEntries()
	{
		return RowHeights.Modified;
	}

	public void ResetRowHeightEntries()
	{
		if (RowHeights.Dictionary is GridRowColSizeDictionary { InnerDict: var innerDict })
		{
			BeginUpdate(BeginUpdateOptions.None);
			innerDict.Clear();
			RowHeights.ResetModified();
			Model.rowHeightEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	[DocumentationExclude]
	public void SetColWidthsInt(GridModelRowColSizeIndexer colWidths)
	{
		this.colWidths = colWidths;
	}

	public void ResetColWidthEntries()
	{
		if (ColWidths.Dictionary is GridRowColSizeDictionary { InnerDict: var innerDict })
		{
			BeginUpdate(BeginUpdateOptions.None);
			innerDict.Clear();
			ColWidths.ResetModified();
			Model.colWidthEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	public bool ShouldSerializeColWidthEntries()
	{
		return ColWidths.Modified;
	}

	public bool ShouldSerializeRowHiddenEntries()
	{
		return HideRows.Modified;
	}

	public void ResetRowHiddenEntries()
	{
		if (HideRows.Dictionary is GridRowColHideDictionary { InnerDict: var innerDict })
		{
			BeginUpdate(BeginUpdateOptions.None);
			innerDict.Clear();
			Model.rowHiddenEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	public bool ShouldSerializeColHiddenEntries()
	{
		return HideCols.Modified;
	}

	public void ResetColHiddenEntries()
	{
		if (HideCols.Dictionary is GridRowColHideDictionary { InnerDict: var innerDict })
		{
			BeginUpdate(BeginUpdateOptions.None);
			innerDict.Clear();
			Model.colHiddenEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	public Size CalculatePreferredCellSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		GridCellModelBase cellModel = style.CellModel;
		Size result = cellModel.CalculatePreferredCellSize(g, rowIndex, colIndex, style, queryBounds);
		if (GetGridLineBorder().Style != GridBorderStyle.None)
		{
			result.Width++;
		}
		return result;
	}

	public virtual GridBorder GetGridLineBorder()
	{
		if (gridLineBorder == null)
		{
			gridLineBorder = new GridBorder(Options.DefaultGridBorderStyle, Properties.GridLineColor);
		}
		return gridLineBorder;
	}

	public virtual GridBorder GetFixedLineBorder()
	{
		if (fixedLineBorder == null)
		{
			fixedLineBorder = new GridBorder(Options.DefaultGridBorderStyle, Properties.FixedLinesColor, GridBorderWeight.Medium);
		}
		return fixedLineBorder;
	}

	public Size CalculatePreferredCellSize(Graphics g, int rowIndex, int colIndex, GridQueryBounds queryBounds)
	{
		GridStyleInfo style = this[rowIndex, colIndex];
		return CalculatePreferredCellSize(g, rowIndex, colIndex, style, queryBounds);
	}

	protected virtual void OnRowsHidden(GridRowColHiddenEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsHidden(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.RowsHidden != null)
			{
				this.RowsHidden(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseRowsHidden(GridRowColHiddenEventArgs e)
	{
		OnRowsHidden(e);
	}

	protected virtual void OnRowsHiding(GridRowColHidingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsHiding(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.RowsHiding != null)
			{
				this.RowsHiding(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void RaiseRowsHiding(GridRowColHidingEventArgs e)
	{
		if (GridControlBase.UseOldHiddenScrollLogic && e.From <= Rows.FrozenCount)
		{
			Rows.FrozenCount = Math.Max(0, e.From - 1);
		}
		OnRowsHiding(e);
	}

	protected virtual void OnColsHidden(GridRowColHiddenEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsHidden(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.ColsHidden != null)
			{
				this.ColsHidden(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal void RaiseColsHidden(GridRowColHiddenEventArgs e)
	{
		OnColsHidden(e);
	}

	protected virtual void OnColsHiding(GridRowColHidingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsHiding(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.ColsHiding != null)
			{
				this.ColsHiding(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void RaiseColsHiding(GridRowColHidingEventArgs e)
	{
		if (GridControlBase.UseOldHiddenScrollLogic && e.From <= Cols.FrozenCount)
		{
			Cols.FrozenCount = Math.Max(0, e.From - 1);
		}
		OnColsHiding(e);
	}

	protected virtual void OnSaveHideRow(GridRowColHideEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveHideRow(e);
		}
		if (this.SaveHideRow != null)
		{
			this.SaveHideRow(this, e);
		}
	}

	internal void RaiseSaveHideRow(GridRowColHideEventArgs e)
	{
		OnSaveHideRow(e);
	}

	protected virtual void OnQueryHideRow(GridRowColHideEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryHideRow(e);
		}
		if (this.QueryHideRow != null)
		{
			this.QueryHideRow(this, e);
		}
	}

	internal void RaiseQueryHideRow(GridRowColHideEventArgs e)
	{
		OnQueryHideRow(e);
	}

	protected virtual void OnSaveHideCol(GridRowColHideEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveHideCol(e);
		}
		if (this.SaveHideCol != null)
		{
			this.SaveHideCol(this, e);
		}
	}

	internal void RaiseSaveHideCol(GridRowColHideEventArgs e)
	{
		OnSaveHideCol(e);
	}

	protected virtual void OnQueryHideCol(GridRowColHideEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryHideCol(e);
		}
		if (this.QueryHideCol != null)
		{
			this.QueryHideCol(this, e);
		}
	}

	internal void RaiseQueryHideCol(GridRowColHideEventArgs e)
	{
		OnQueryHideCol(e);
	}

	[DocumentationExclude]
	public void SetHideRowsInt(GridModelHideRowColsIndexer rowHidden)
	{
		this.rowHidden = rowHidden;
	}

	[DocumentationExclude]
	public void SetHideColsInt(GridModelHideRowColsIndexer colHidden)
	{
		this.colHidden = colHidden;
	}

	protected virtual void OnDefaultRowHeightChanging(GridDefaultSizeChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDefaultRowHeightChanging(e);
		}
		if (CanGridRaiseEvents && this.DefaultRowHeightChanging != null)
		{
			this.DefaultRowHeightChanging(this, e);
		}
	}

	internal void RaiseDefaultRowHeightChanging(GridDefaultSizeChangingEventArgs e)
	{
		OnDefaultRowHeightChanging(e);
	}

	protected virtual void OnDefaultRowHeightChanged(GridDefaultSizeChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDefaultRowHeightChanged(e);
		}
		if (CanGridRaiseEvents && this.DefaultRowHeightChanged != null)
		{
			this.DefaultRowHeightChanged(this, e);
		}
	}

	internal void RaiseDefaultRowHeightChanged(GridDefaultSizeChangedEventArgs e)
	{
		OnDefaultRowHeightChanged(e);
	}

	protected virtual void OnHeaderRowCountChanged(GridCountChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHeaderRowCountChanged(e);
		}
		if (CanGridRaiseEvents && this.HeaderRowCountChanged != null)
		{
			this.HeaderRowCountChanged(this, e);
		}
	}

	internal void RaiseHeaderRowCountChanged(GridCountChangedEventArgs e)
	{
		OnHeaderRowCountChanged(e);
	}

	protected virtual void OnHeaderRowCountChanging(GridCountChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHeaderRowCountChanging(e);
		}
		if (CanGridRaiseEvents && this.HeaderRowCountChanging != null)
		{
			this.HeaderRowCountChanging(this, e);
		}
	}

	internal void RaiseHeaderRowCountChanging(GridCountChangingEventArgs e)
	{
		OnHeaderRowCountChanging(e);
	}

	protected virtual void OnFrozenRowCountChanged(GridCountChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnFrozenRowCountChanged(e);
		}
		if (CanGridRaiseEvents && this.FrozenRowCountChanged != null)
		{
			this.FrozenRowCountChanged(this, e);
		}
	}

	internal void RaiseFrozenRowCountChanged(GridCountChangedEventArgs e)
	{
		OnFrozenRowCountChanged(e);
	}

	protected virtual void OnFrozenRowCountChanging(GridCountChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnFrozenRowCountChanging(e);
		}
		if (CanGridRaiseEvents && this.FrozenRowCountChanging != null)
		{
			this.FrozenRowCountChanging(this, e);
		}
	}

	internal void RaiseFrozenRowCountChanging(GridCountChangingEventArgs e)
	{
		OnFrozenRowCountChanging(e);
	}

	protected virtual void OnRowsMoved(GridRangeMovedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsMoved(e);
		}
		if (CanGridRaiseEvents && this.RowsMoved != null)
		{
			this.RowsMoved(this, e);
		}
	}

	internal void RaiseRowsMoved(GridRangeMovedEventArgs e)
	{
		OnRowsMoved(e);
	}

	protected virtual void OnRowsMoving(GridRangeMovingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsMoving(e);
		}
		if (CanGridRaiseEvents && this.RowsMoving != null)
		{
			this.RowsMoving(this, e);
		}
	}

	internal void RaiseRowsMoving(GridRangeMovingEventArgs e)
	{
		OnRowsMoving(e);
	}

	protected virtual void OnRowsRemoved(GridRangeRemovedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsRemoved(e);
		}
		if (CanGridRaiseEvents)
		{
			if (this.RowsRemoved != null)
			{
				this.RowsRemoved(this, e);
			}
			gridCells = null;
			rangeStyles = null;
		}
	}

	internal void RaiseRowsRemoved(GridRangeRemovedEventArgs e)
	{
		OnRowsRemoved(e);
	}

	protected virtual void OnRowsRemoving(GridRangeRemovingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsRemoving(e);
		}
		if (CanGridRaiseEvents && this.RowsRemoving != null)
		{
			this.RowsRemoving(this, e);
		}
	}

	internal void RaiseRowsRemoving(GridRangeRemovingEventArgs e)
	{
		OnRowsRemoving(e);
	}

	protected virtual void OnRowsInserting(GridRangeInsertingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsInserting(e);
		}
		if (CanGridRaiseEvents && this.RowsInserting != null)
		{
			this.RowsInserting(this, e);
		}
	}

	internal void RaiseRowsInserting(GridRangeInsertingEventArgs e)
	{
		OnRowsInserting(e);
	}

	protected virtual void OnRowsInserted(GridRangeInsertedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnRowsInserted(e);
		}
		if (CanGridRaiseEvents && this.RowsInserted != null)
		{
			this.RowsInserted(this, e);
		}
	}

	internal void RaiseRowsInserted(GridRangeInsertedEventArgs e)
	{
		OnRowsInserted(e);
	}

	protected virtual void OnDefaultColWidthChanging(GridDefaultSizeChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDefaultColWidthChanging(e);
		}
		if (CanGridRaiseEvents && this.DefaultColWidthChanging != null)
		{
			this.DefaultColWidthChanging(this, e);
		}
	}

	internal void RaiseDefaultColWidthChanging(GridDefaultSizeChangingEventArgs e)
	{
		OnDefaultColWidthChanging(e);
	}

	protected virtual void OnDefaultColWidthChanged(GridDefaultSizeChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDefaultColWidthChanged(e);
		}
		if (CanGridRaiseEvents && this.DefaultColWidthChanged != null)
		{
			this.DefaultColWidthChanged(this, e);
		}
	}

	internal void RaiseDefaultColWidthChanged(GridDefaultSizeChangedEventArgs e)
	{
		OnDefaultColWidthChanged(e);
	}

	protected virtual void OnHeaderColCountChanged(GridCountChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHeaderColCountChanged(e);
		}
		if (CanGridRaiseEvents && this.HeaderColCountChanged != null)
		{
			this.HeaderColCountChanged(this, e);
		}
	}

	internal void RaiseHeaderColCountChanged(GridCountChangedEventArgs e)
	{
		OnHeaderColCountChanged(e);
	}

	protected virtual void OnHeaderColCountChanging(GridCountChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHeaderColCountChanging(e);
		}
		if (CanGridRaiseEvents && this.HeaderColCountChanging != null)
		{
			this.HeaderColCountChanging(this, e);
		}
	}

	internal void RaiseHeaderColCountChanging(GridCountChangingEventArgs e)
	{
		OnHeaderColCountChanging(e);
	}

	protected virtual void OnFrozenColCountChanged(GridCountChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnFrozenColCountChanged(e);
		}
		if (CanGridRaiseEvents && this.FrozenColCountChanged != null)
		{
			this.FrozenColCountChanged(this, e);
		}
	}

	internal void RaiseFrozenColCountChanged(GridCountChangedEventArgs e)
	{
		OnFrozenColCountChanged(e);
	}

	protected virtual void OnFrozenColCountChanging(GridCountChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnFrozenColCountChanging(e);
		}
		if (CanGridRaiseEvents && this.FrozenColCountChanging != null)
		{
			this.FrozenColCountChanging(this, e);
		}
	}

	internal void RaiseFrozenColCountChanging(GridCountChangingEventArgs e)
	{
		OnFrozenColCountChanging(e);
	}

	protected virtual void OnColsMoved(GridRangeMovedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsMoved(e);
		}
		if (CanGridRaiseEvents && this.ColsMoved != null)
		{
			this.ColsMoved(this, e);
		}
	}

	internal void RaiseColsMoved(GridRangeMovedEventArgs e)
	{
		OnColsMoved(e);
	}

	protected virtual void OnColsMoving(GridRangeMovingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsMoving(e);
		}
		if (CanGridRaiseEvents && this.ColsMoving != null)
		{
			this.ColsMoving(this, e);
		}
	}

	internal void RaiseColsMoving(GridRangeMovingEventArgs e)
	{
		OnColsMoving(e);
	}

	protected virtual void OnColsRemoved(GridRangeRemovedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsRemoved(e);
		}
		if (CanGridRaiseEvents)
		{
			if (this.ColsRemoved != null)
			{
				this.ColsRemoved(this, e);
			}
			gridCells = null;
			rangeStyles = null;
		}
	}

	internal void RaiseColsRemoved(GridRangeRemovedEventArgs e)
	{
		OnColsRemoved(e);
	}

	protected virtual void OnColsRemoving(GridRangeRemovingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsRemoving(e);
		}
		if (CanGridRaiseEvents && this.ColsRemoving != null)
		{
			this.ColsRemoving(this, e);
		}
	}

	internal void RaiseColsRemoving(GridRangeRemovingEventArgs e)
	{
		OnColsRemoving(e);
	}

	protected virtual void OnColsInserting(GridRangeInsertingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsInserting(e);
		}
		if (CanGridRaiseEvents && this.ColsInserting != null)
		{
			this.ColsInserting(this, e);
		}
	}

	internal void RaiseColsInserting(GridRangeInsertingEventArgs e)
	{
		OnColsInserting(e);
	}

	protected virtual void OnColsInserted(GridRangeInsertedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnColsInserted(e);
		}
		if (CanGridRaiseEvents && this.ColsInserted != null)
		{
			this.ColsInserted(this, e);
		}
	}

	internal void RaiseColsInserted(GridRangeInsertedEventArgs e)
	{
		OnColsInserted(e);
	}

	public GridStyleInfoStoreTable GetCells(GridRangeInfo range)
	{
		GridStyleInfoStoreTable gridStyleInfoStoreTable = null;
		if (range.IsTable)
		{
			gridStyleInfoStoreTable = new GridStyleInfoStoreTable(0, 0);
			gridStyleInfoStoreTable[-1, -1] = Data[-1, -1];
		}
		else if (range.IsRows)
		{
			gridStyleInfoStoreTable = Rows.GetCells(range.Top, range.Bottom, getRowColStyle: true, copyCells: false);
		}
		else if (range.IsCols)
		{
			gridStyleInfoStoreTable = Cols.GetCells(range.Left, range.Right, getRowColStyle: true, copyCells: false);
		}
		else
		{
			using OperationFeedback operationFeedback = new OperationFeedback(this);
			int top = range.Top;
			int left = range.Left;
			int height = range.Height;
			int width = range.Width;
			int num = height * width;
			gridStyleInfoStoreTable = new GridStyleInfoStoreTable(height, width);
			int num2 = 0;
			if (num > 0)
			{
				for (int i = 0; i < height; i++)
				{
					for (int j = 0; j < width; j++)
					{
						GridStyleInfo gridStyleInfo = new GridStyleInfo();
						GetCellInfo(i + top, j + left, gridStyleInfo);
						gridStyleInfoStoreTable[i, j] = gridStyleInfo.Store;
						operationFeedback.PercentComplete = ++num2 * 100 / num;
						if (operationFeedback.ShouldCancel)
						{
							throw new GridUserCanceledException();
						}
					}
				}
			}
		}
		return gridStyleInfoStoreTable;
	}

	public void SetCells(GridRangeInfo range, GridStyleInfoStoreTable data)
	{
		SetCells(range, data, dontRaiseSaveCellInfoEvent: false, copyReferenceOnly: false);
	}

	public void SetCells(GridRangeInfo range, GridStyleInfoStoreTable data, bool dontRaiseSaveCellInfoEvent, bool copyReferenceOnly)
	{
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "GridModel.SetCells");
		try
		{
			if (range.IsTable)
			{
				throw new NotImplementedException("WriteTableData");
			}
			if (range.IsRows)
			{
				if (data.RowCount != range.Height)
				{
					throw new InvalidOperationException(SR.GetString("ExceptionDataRangeDiffRowCount"));
				}
				Rows.SetCells(range.Top, data);
				return;
			}
			if (range.IsCols)
			{
				if (data.ColCount != range.Width)
				{
					throw new InvalidOperationException(SR.GetString("ExceptionDataRangeDiffColCount"));
				}
				Cols.SetCells(range.Left, data);
				return;
			}
			if (data.RowCount != range.Height)
			{
				throw new InvalidOperationException(SR.GetString("ExceptionDataRangeDiffRowCount"));
			}
			if (data.ColCount != range.Width)
			{
				throw new InvalidOperationException(SR.GetString("ExceptionDataRangeDiffColCount"));
			}
			using OperationFeedback operationFeedback = new OperationFeedback(this);
			_ = range.Top;
			_ = range.Left;
			int height = range.Height;
			int width = range.Width;
			int num = height * width;
			int num2 = 0;
			if (num <= 0)
			{
				return;
			}
			for (int i = 0; i < height; i++)
			{
				for (int j = 0; j < width; j++)
				{
					int rowIndex = i + range.Top;
					int colIndex = j + range.Left;
					GridStyleInfoStore gridStyleInfoStore = data[i, j];
					if (gridStyleInfoStore != null)
					{
						GridStyleInfo style = new GridStyleInfo(gridStyleInfoStore);
						SetCellInfo(rowIndex, colIndex, style, StyleModifyType.Copy, dontRaiseSaveCellInfoEvent, copyReferenceOnly);
					}
					else
					{
						SetCellInfo(rowIndex, colIndex, null, StyleModifyType.Copy, dontRaiseSaveCellInfoEvent, copyReferenceOnly);
					}
					operationFeedback.PercentComplete = ++num2 * 100 / num;
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
		}
		finally
		{
			ResetVolatileData();
			EndUpdate();
		}
	}

	void IGridVolatileDataContainer.ChangeCell(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridRangeInfo range = GridRangeInfo.Auto(rowIndex, colIndex);
		ChangeCells(range, new GridStyleInfo[1] { style }, StyleModifyType.Changes);
	}

	void IGridVolatileDataContainer.GetCellInfo(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GetCellInfo(rowIndex, colIndex, style);
	}

	protected virtual void OnDataProviderChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDataProviderChanged(e);
		}
		if (this.DataProviderChanged != null)
		{
			this.DataProviderChanged(this, e);
		}
	}

	public bool GetCellInfo(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridQueryCellInfoEventArgs e = new GridQueryCellInfoEventArgs(rowIndex, colIndex, style);
		try
		{
			inGetCellInfo++;
			if (inGetCellInfo > warnOnRecursionLevel)
			{
				throw new InvalidOperationException("Recursive call detected. When accessing grid cell objects from a QueryCellInfo event handler make sure you do not recursively access the same cell.");
			}
			if (dataProvider != null)
			{
				OnDataProviderQueryCellInfo(e);
				if (e.Handled)
				{
					return true;
				}
				dataProvider.QueryCellInfo(e);
			}
			OnQueryCellInfo(e);
		}
		finally
		{
			inGetCellInfo--;
		}
		if (e.Handled)
		{
			return true;
		}
		GridStyleInfoStore gridStyleInfoStore = Data[rowIndex, colIndex];
		if (gridStyleInfoStore != null)
		{
			style.Store.ModifyStyle(gridStyleInfoStore, StyleModifyType.ApplyNew);
		}
		return true;
	}

	protected virtual void OnSaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveCellInfo(e);
		}
		try
		{
			if (this.SaveCellInfo != null)
			{
				this.SaveCellInfo(this, e);
			}
		}
		catch (Exception e2)
		{
			TraceUtil.TraceExceptionCatched(e2);
			throw;
		}
	}

	internal void RaiseSaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		OnSaveCellInfo(e);
	}

	protected virtual void OnDataProviderSaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDataProviderSaveCellInfo(e);
		}
		try
		{
			if (this.DataProviderSaveCellInfo != null)
			{
				this.DataProviderSaveCellInfo(this, e);
			}
		}
		catch (Exception e2)
		{
			TraceUtil.TraceExceptionCatched(e2);
			throw;
		}
	}

	internal void RaiseDataProviderSaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		OnDataProviderSaveCellInfo(e);
	}

	protected virtual void OnPasteCellText(GridPasteCellTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPasteCellText(e);
		}
		if (CanGridRaiseEvents && this.PasteCellText != null)
		{
			this.PasteCellText(this, e);
		}
	}

	internal void RaisePasteCellText(GridPasteCellTextEventArgs e)
	{
		OnPasteCellText(e);
	}

	public bool SetCellInfo(int rowIndex, int colIndex, GridStyleInfo style, StyleModifyType modifyType)
	{
		return SetCellInfo(rowIndex, colIndex, style, modifyType, dontRaiseSaveCellInfoEvent: false, copyReferenceOnly: false);
	}

	public bool SetCellInfo(int rowIndex, int colIndex, GridStyleInfo style, StyleModifyType modifyType, bool dontRaiseSaveCellInfoEvent, bool copyReferenceOnly)
	{
		if (!dontRaiseSaveCellInfoEvent)
		{
			if (style != null && !(style.Identity is GridStyleInfoIdentity { Data: not null, OffLine: not false }))
			{
				GridStyleInfoIdentity identity = new GridStyleInfoIdentity(volatileData, rowIndex, colIndex, offLine: true);
				GridStyleInfoStore store = style.Store;
				if (style.Identity == null)
				{
					style.Identity = identity;
				}
				else
				{
					style = new GridStyleInfo(identity, store);
				}
			}
			GridSaveCellInfoEventArgs e = new GridSaveCellInfoEventArgs(rowIndex, colIndex, style, modifyType);
			if (dataProvider != null)
			{
				OnDataProviderSaveCellInfo(e);
				if (e.Handled)
				{
					return true;
				}
				dataProvider.SaveCellInfo(e);
			}
			OnSaveCellInfo(e);
			if (e.Handled)
			{
				return true;
			}
		}
		bool flag = DiscardReadOnly || !readOnly;
		if (HasData && flag)
		{
			try
			{
				GridStyleInfoStore gridStyleInfoStore = null;
				if (modifyType == StyleModifyType.Remove || (style == null && modifyType == StyleModifyType.Copy))
				{
					if (!DiscardReadOnly)
					{
						gridStyleInfoStore = Data[rowIndex, colIndex];
					}
					if (DiscardReadOnly || gridStyleInfoStore == null || gridStyleInfoStore.GetShortValue(GridStyleInfoStore.ReadOnlyProperty) == 0)
					{
						Data[rowIndex, colIndex] = null;
					}
				}
				else
				{
					if (style == null)
					{
						throw new ArgumentNullException("style");
					}
					if (modifyType != StyleModifyType.Copy)
					{
						gridStyleInfoStore = Data[rowIndex, colIndex];
					}
					if (gridStyleInfoStore != null)
					{
						if (DiscardReadOnly || gridStyleInfoStore.GetShortValue(GridStyleInfoStore.ReadOnlyProperty) == 0)
						{
							if (AllowAdjustCellValue && ((modifyType == StyleModifyType.Changes && style.Store.IsValueModified(GridStyleInfoStore.CellValueTypeProperty)) || ((modifyType == StyleModifyType.Override || modifyType == StyleModifyType.Copy || modifyType == StyleModifyType.ApplyNew) && style.Store.IsValueModified(GridStyleInfoStore.CellValueTypeProperty))))
							{
								FixCellValueType(style, style.CellValueType);
							}
							gridStyleInfoStore.ModifyStyle(style.Store, modifyType);
						}
					}
					else
					{
						GridStyleInfoStore store2 = style.Store;
						if (rowIndex <= Data.RowCount && colIndex <= Data.ColCount)
						{
							if (copyReferenceOnly || store2 == null)
							{
								Data[rowIndex, colIndex] = store2;
							}
							else
							{
								Data[rowIndex, colIndex] = (GridStyleInfoStore)store2.Clone();
							}
						}
					}
				}
				return true;
			}
			catch (Exception e2)
			{
				TraceUtil.TraceExceptionCatched(e2);
				throw;
			}
		}
		return false;
	}

	private void FixCellValueType(GridStyleInfo style, Type cellValueType)
	{
		if (!style.HasCellValueType || !style.HasCellValue)
		{
			return;
		}
		object cellValue = style.CellValue;
		if (cellValue != null && cellValue.GetType() != cellValueType)
		{
			if (cellValue is string)
			{
				style.ApplyText((string)cellValue);
			}
			else
			{
				style.CellValue = ValueConvert.ChangeType(cellValue, cellValueType, style.GetCulture(useCurrentCultureIfNull: true), returnDbNUllIfNotValid: true);
			}
		}
	}

	public void ResetVolatileData()
	{
		lastSyncText = null;
		if (gridVolatileData != null)
		{
			gridVolatileData.Clear();
		}
		if (this.NotifyResetVolatileData != null)
		{
			this.NotifyResetVolatileData(this, EventArgs.Empty);
		}
		foreach (GridBaseStyle item in BaseStylesMap)
		{
			if (item.StyleInfo.HasFont)
			{
				item.StyleInfo.Font.ResetGdipFont();
			}
		}
		CoveredRanges.ResetCache();
		BanneredRanges.ResetCache();
	}

	private bool PropertyDescriptorIsARelation(PropertyDescriptor prop)
	{
		if (typeof(IList).IsAssignableFrom(prop.PropertyType))
		{
			return !typeof(Array).IsAssignableFrom(prop.PropertyType);
		}
		return false;
	}

	public void PopulateValues(GridRangeInfo range, object dataSource)
	{
		OperationFeedback operationFeedback = new OperationFeedback(this);
		operationFeedback.Description = "PopulateValues";
		operationFeedback.AllowCancel = true;
		operationFeedback.AllowNestedProgress = false;
		operationFeedback.AllowNestedFeedback = false;
		int num = 0;
		int num2 = 0;
		try
		{
			BeginUpdate(BeginUpdateOptions.None);
			if (dataSource is IListSource listSource)
			{
				dataSource = listSource.GetList();
			}
			Array array = dataSource as Array;
			if (array != null && array.Rank > 2)
			{
				throw new ArgumentException("Invalid Array - Rank greater 2 not allowed.", "dataSource");
			}
			if (array != null && array.Rank == 2)
			{
				int num3 = Math.Min(array.GetLength(0), range.Height);
				int num4 = Math.Min(array.GetLength(1), range.Width);
				num = num3 * num4;
				if (num > 0)
				{
					for (int i = 0; i < num3; i++)
					{
						for (int j = 0; j < num4; j++)
						{
							int rowIndex = range.Top + i;
							int colIndex = range.Left + j;
							object value = array.GetValue(i, j);
							GridStyleInfo gridStyleInfo = new GridStyleInfo();
							gridStyleInfo.CellValue = value;
							SetCellInfo(rowIndex, colIndex, gridStyleInfo, StyleModifyType.Override, dontRaiseSaveCellInfoEvent: true, copyReferenceOnly: true);
						}
						num2 += num4;
						operationFeedback.PercentComplete = num2 * 100 / num;
						if (operationFeedback.ShouldCancel)
						{
							throw new GridUserCanceledException();
						}
					}
				}
			}
			else if (dataSource is IList list)
			{
				int num5 = Math.Min(list.Count, range.Height);
				if (num5 > 0 && list[0] != null)
				{
					if (list is ITypedList typedList)
					{
						PropertyDescriptorCollection itemProperties = typedList.GetItemProperties(null);
						for (int k = 0; k < num5; k++)
						{
							int num6 = range.Top + k;
							object item = list[k];
							PopulateItem(GridRangeInfo.Cells(num6, range.Left, num6, range.Right), itemProperties, item);
							operationFeedback.PercentComplete = k * 100 / num5;
							if (operationFeedback.ShouldCancel)
							{
								throw new GridUserCanceledException();
							}
						}
					}
					else
					{
						Type type = list[0].GetType();
						if (type.IsPrimitive || type == typeof(string))
						{
							for (int l = 0; l < num5; l++)
							{
								int rowIndex2 = range.Top + l;
								PopulateItem(rowIndex2, range.Left, list[l]);
								operationFeedback.PercentComplete = l * 100 / num5;
								if (operationFeedback.ShouldCancel)
								{
									throw new GridUserCanceledException();
								}
							}
						}
						else
						{
							PropertyDescriptorCollection pdc = TypeDescriptor.GetProperties(type);
							for (int m = 0; m < num5; m++)
							{
								int num7 = range.Top + m;
								PopulateItem(GridRangeInfo.Cells(num7, range.Left, num7, range.Right), pdc, list[m]);
								operationFeedback.PercentComplete = m * 100 / num5;
								if (operationFeedback.ShouldCancel)
								{
									throw new GridUserCanceledException();
								}
							}
						}
					}
				}
			}
			else
			{
				Type type2 = dataSource.GetType();
				if (type2.IsPrimitive || type2 == typeof(string))
				{
					PopulateItem(range.Top, range.Left, dataSource);
				}
				else
				{
					PropertyDescriptorCollection pdc2 = TypeDescriptor.GetProperties(type2);
					PopulateItem(range, pdc2, dataSource);
				}
			}
			InvalidateRange(range, GridRangeOptions.None);
		}
		finally
		{
			ResetVolatileData();
			EndUpdate();
			operationFeedback.Close();
		}
	}

	private void PopulateItem(GridRangeInfo range, PropertyDescriptorCollection pdc, object item)
	{
		if (item != null)
		{
			int num = Math.Min(range.Width, pdc.Count);
			for (int i = 0; i < num; i++)
			{
				GridStyleInfo gridStyleInfo = new GridStyleInfo();
				gridStyleInfo.CellValue = pdc[i].GetValue(item);
				SetCellInfo(range.Top, range.Left + i, gridStyleInfo, StyleModifyType.Override, dontRaiseSaveCellInfoEvent: true, copyReferenceOnly: true);
			}
		}
	}

	private void PopulateItem(int rowIndex, int colIndex, object item)
	{
		if (item != null)
		{
			GridStyleInfo gridStyleInfo = new GridStyleInfo();
			gridStyleInfo.CellValue = item;
			SetCellInfo(rowIndex, colIndex, gridStyleInfo, StyleModifyType.Override, dontRaiseSaveCellInfoEvent: true, copyReferenceOnly: true);
		}
	}

	public void PopulateHeaders(GridRangeInfo range, object dataSource)
	{
		BeginUpdate(BeginUpdateOptions.None);
		if (dataSource is IListSource listSource)
		{
			dataSource = listSource.GetList();
		}
		if (dataSource is IList list)
		{
			int num = Math.Min(list.Count, range.Height);
			if (num > 0 && list[0] != null)
			{
				if (list is ITypedList typedList)
				{
					PropertyDescriptorCollection itemProperties = typedList.GetItemProperties(null);
					_PopulateHeaders(range, itemProperties);
				}
				else
				{
					Type type = list[0].GetType();
					if (type.IsPrimitive || type == typeof(string))
					{
						_PopulateHeaders(range.Top, range.Left, "Value");
					}
					else
					{
						PropertyDescriptorCollection pdc = TypeDescriptor.GetProperties(type);
						_PopulateHeaders(range, pdc);
					}
				}
			}
		}
		else
		{
			Type type2 = dataSource.GetType();
			if (type2.IsPrimitive || type2 == typeof(string))
			{
				_PopulateHeaders(range.Top, range.Left, "Value");
			}
			else
			{
				PropertyDescriptorCollection pdc2 = TypeDescriptor.GetProperties(type2);
				_PopulateHeaders(range, pdc2);
			}
		}
		ResetVolatileData();
		EndUpdate();
	}

	private void _PopulateHeaders(GridRangeInfo range, PropertyDescriptorCollection pdc)
	{
		int num = Math.Min(range.Width, pdc.Count);
		for (int i = 0; i < num; i++)
		{
			GridStyleInfo gridStyleInfo = new GridStyleInfo();
			gridStyleInfo.CellValue = pdc[i].DisplayName;
			SetCellInfo(range.Top, range.Left + i, gridStyleInfo, StyleModifyType.Override, dontRaiseSaveCellInfoEvent: true, copyReferenceOnly: true);
		}
	}

	private void _PopulateHeaders(int rowIndex, int colIndex, string item)
	{
		if (item != null)
		{
			GridStyleInfo gridStyleInfo = new GridStyleInfo();
			gridStyleInfo.CellValue = item;
			SetCellInfo(rowIndex, colIndex, gridStyleInfo, StyleModifyType.Override, dontRaiseSaveCellInfoEvent: true, copyReferenceOnly: true);
		}
	}

	public GridStyleInfo GetCombinedStyle(GridRangeInfo range)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		return GetCombinedStyle(gridRangeInfoList);
	}

	public GridStyleInfo GetCombinedStyle(GridRangeInfoList ranges)
	{
		GridStyleInfo gridStyleInfo = null;
		foreach (GridRangeInfo range in ranges)
		{
			if (range.IsCells)
			{
				GridRangeInfo gridRangeInfo2 = range.ExpandRange(-1, -1, -1, -1);
				for (int i = gridRangeInfo2.Top; i <= gridRangeInfo2.Bottom; i++)
				{
					for (int j = gridRangeInfo2.Left; j <= gridRangeInfo2.Right; j++)
					{
						if (gridStyleInfo == null)
						{
							gridStyleInfo = this[i, j].GetOffLineCopy();
						}
						else
						{
							gridStyleInfo.MergeStyle(this[i, j]);
						}
					}
				}
			}
			else if (range.IsTable)
			{
				gridStyleInfo = TableStyle.GetOffLineCopy();
			}
			else if (range.IsRows)
			{
				for (int k = range.Top; k <= range.Bottom; k++)
				{
					if (gridStyleInfo == null)
					{
						gridStyleInfo = RowStyles[k].GetOffLineCopy();
					}
					else
					{
						gridStyleInfo.MergeStyle(RowStyles[k]);
					}
				}
			}
			else
			{
				if (!range.IsCols)
				{
					continue;
				}
				for (int l = range.Left; l <= range.Right; l++)
				{
					if (gridStyleInfo == null)
					{
						gridStyleInfo = ColStyles[l].GetOffLineCopy();
					}
					else
					{
						gridStyleInfo.MergeStyle(ColStyles[l]);
					}
				}
			}
		}
		return gridStyleInfo;
	}

	public void ChangeSelectionState(int currentRow, int currentCol, GridRangeInfo[] ranges)
	{
		Selections.Clear(raiseEvents: true);
		if (activeGridView != null)
		{
			activeGridView.CurrentCell.MoveTo(currentRow, currentCol, GridSetCurrentCellOptions.NoSelectRange);
		}
		foreach (GridRangeInfo gridRangeInfo in ranges)
		{
			if (gridRangeInfo != null && !gridRangeInfo.IsEmpty)
			{
				Selections.Add(gridRangeInfo);
			}
		}
	}

	public void ScrollCellInView(GridRangeInfo range, GridScrollCurrentCellReason reason)
	{
		if (activeGridView != null)
		{
			activeGridView.ScrollCellInView(range, reason);
		}
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo[] cellsInfo, StyleModifyType modifyType)
	{
		bool flag = false;
		GridStyleInfo[] array = null;
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "GridModel.ChangedCells " + range.ToString());
		if (NotifyCellsChanging(new GridCellsChangingEventArgs(range, cellsInfo, modifyType)))
		{
			OperationFeedback operationFeedback = new OperationFeedback(this);
			operationFeedback.Name = "ChangeCells";
			operationFeedback.Description = SR.GetString("DescriptionChangeCells", range);
			operationFeedback.AllowCancel = CommandStack.IsRecording || !CommandStack.Enabled;
			operationFeedback.AllowRollback = CommandStack.IsRecording;
			try
			{
				GridRangeInfo gridRangeInfo = range.ExpandRange(-1, -1, -1, -1);
				int num = gridRangeInfo.Width * gridRangeInfo.Height;
				if (CommandStack.ShouldGenerateUndoInfo)
				{
					try
					{
						array = GetCellsInfo(gridRangeInfo);
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(this, ex))
						{
							throw;
						}
						return false;
					}
				}
				GridRangeInfo range2 = GridRangeInfo.Empty;
				ResetVolatileData();
				try
				{
					int num2 = 0;
					int num3 = 0;
					for (int i = gridRangeInfo.Top; i <= gridRangeInfo.Bottom; i++)
					{
						for (int j = gridRangeInfo.Left; j <= gridRangeInfo.Right; j++)
						{
							if (cellsInfo.Length > 1)
							{
								num2 = (i - gridRangeInfo.Top) * gridRangeInfo.Width + (j - gridRangeInfo.Left);
							}
							if (num2 >= cellsInfo.Length)
							{
								break;
							}
							if (gridVolatileData != null && j >= 0 && i >= 0)
							{
								gridVolatileData.ResetItem(new GridCellPos(i, j));
							}
							GridStyleInfo gridStyleInfo = cellsInfo[num2];
							flag = ((gridStyleInfo == null) ? (flag | SetCellInfo(i, j, null, StyleModifyType.Remove)) : (flag | SetCellInfo(i, j, gridStyleInfo, modifyType)));
							operationFeedback.PercentComplete = ++num3 * 100 / num;
							if (operationFeedback.ShouldCancel)
							{
								range2 = ((i != range.Top) ? GridRangeInfo.Cells(range.Top, range.Left, i, range.Right) : GridRangeInfo.Cells(i, range.Left, i, j));
								throw new GridUserCanceledException();
							}
						}
					}
				}
				catch (GridUserCanceledException ex2)
				{
					TraceUtil.TraceExceptionCatched(ex2);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
					{
						throw;
					}
					if (flag && array != null)
					{
						if (CommandStack.IsRecording)
						{
							CommandStack.Mode = GridCommandMode.Rollback;
							ChangeCells(range2, array, StyleModifyType.Copy);
							CommandStack.Mode = GridCommandMode.Recording;
							array = null;
						}
						flag = false;
					}
				}
				if (CommandStack.ShouldGenerateUndoInfo && array != null)
				{
					CommandStack.Push(new GridChangeCellsCommand(this, range, array, StyleModifyType.Copy));
				}
				if (flag)
				{
					Modified = true;
					gridCells = null;
					rangeStyles = null;
				}
			}
			finally
			{
				FloatingCells.DelayFloatCells(range);
				MergeCells.DelayMergeCells(range);
				OnCellsChanged(new GridCellsChangedEventArgs(range, array, flag));
				operationFeedback.Close();
				EndUpdate();
			}
		}
		return flag;
	}

	public bool ChangeCells(GridRangeInfo range, string textValue)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.Text = textValue;
		return ChangeCells(range, new GridStyleInfo[1] { gridStyleInfo }, StyleModifyType.Changes);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo cellInfo)
	{
		return ChangeCells(range, new GridStyleInfo[1] { cellInfo }, StyleModifyType.Changes);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo cellInfo, StyleModifyType modifyType)
	{
		return ChangeCells(range, new GridStyleInfo[1] { cellInfo }, modifyType);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo[] cellsInfo)
	{
		return ChangeCells(range, cellsInfo, StyleModifyType.Changes);
	}

	protected virtual void OnCellsChanging(GridCellsChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellsChanging(e);
		}
		if (CanGridRaiseEvents && this.CellsChanging != null)
		{
			this.CellsChanging(this, e);
		}
	}

	internal void RaiseCellsChanging(GridCellsChangingEventArgs e)
	{
		OnCellsChanging(e);
	}

	public bool NotifyCellsChanging(GridCellsChangingEventArgs e)
	{
		try
		{
			OnCellsChanging(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	public void NotifyCellsChanged(GridCellsChangedEventArgs e)
	{
		try
		{
			OnCellsChanged(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnCellsChanged(GridCellsChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellsChanged(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.CellsChanged != null)
			{
				this.CellsChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public GridStyleInfo[] GetCellsInfo(GridRangeInfo range)
	{
		return GetCellsInfo(range, null);
	}

	public GridStyleInfo[] GetCellsInfo(GridRangeInfo range, OperationFeedback op)
	{
		try
		{
			int num = range.Width * range.Height;
			GridStyleInfo[] array = new GridStyleInfo[num];
			for (int i = range.Top; i <= range.Bottom; i++)
			{
				for (int j = range.Left; j <= range.Right; j++)
				{
					GridStyleInfo gridStyleInfo = new GridStyleInfo();
					int num2 = (i - range.Top) * range.Width + (j - range.Left);
					if (GetCellInfo(i, j, gridStyleInfo))
					{
						array[num2] = gridStyleInfo;
					}
					if (op != null && op.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return null;
		}
	}

	public bool CanClearSelection()
	{
		if (IsReadOnly)
		{
			return false;
		}
		if (SelectedRanges.Count <= 0)
		{
			return HasCurrentCellInfo;
		}
		return true;
	}

	public bool Clear(bool clearStyle)
	{
		bool result = false;
		if (Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true))
		{
			result = ClearCells(ranges, clearStyle);
		}
		return result;
	}

	public bool ClearCells(GridRangeInfo range, bool clearStyle)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		return ClearCells(gridRangeInfoList, clearStyle);
	}

	public bool ClearCells(GridRangeInfoList rangeList, bool clearStyle)
	{
		GridClearingCellsEventArgs e = new GridClearingCellsEventArgs(rangeList, clearStyle, result: false);
		Model.OnClearingCells(e);
		rangeList = e.RangeList;
		clearStyle = e.ClearStyle;
		if (e.Handled)
		{
			return e.Result;
		}
		bool flag = false;
		_ = RowCount;
		_ = ColCount;
		_ = Rows.HeaderCount;
		_ = Cols.HeaderCount;
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "GridModel.ClearCells");
		CommandStack.BeginTrans(SR.GetString("GRID_IDM_CLEARDATA"));
		OperationFeedback operationFeedback = new OperationFeedback(this);
		operationFeedback.Description = SR.GetString("GRID_IDM_CLEARDATA");
		operationFeedback.AllowRollback = true;
		operationFeedback.AllowNestedProgress = false;
		operationFeedback.AllowCancel = true;
		try
		{
			foreach (GridRangeInfo range4 in rangeList)
			{
				if (clearStyle)
				{
					operationFeedback.AllowNestedProgress = true;
					flag = !ChangeCells(range4, GridStyleInfo.Empty, StyleModifyType.Remove);
					if (flag || operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
					if (!range4.IsCells)
					{
						GridRangeInfo range = range4.ExpandRange(Rows.HeaderCount, Cols.HeaderCount, RowCount, ColCount);
						if (range4.IsTable)
						{
							flag |= !ChangeCells(GridRangeInfo.Rows(Rows.HeaderCount, RowCount), GridStyleInfo.Empty, StyleModifyType.Remove);
							if (!flag)
							{
								flag |= !ChangeCells(GridRangeInfo.Cols(Cols.HeaderCount, ColCount), GridStyleInfo.Empty, StyleModifyType.Remove);
							}
						}
						if (!flag)
						{
							flag = !ChangeCells(range, GridStyleInfo.Empty, StyleModifyType.Remove);
						}
						if (flag || operationFeedback.ShouldCancel)
						{
							throw new GridUserCanceledException();
						}
					}
					foreach (GridRangeInfo item in BanneredRanges.Ranges.GetRangesContained(range4))
					{
						BanneredRanges.Remove(item);
					}
					foreach (GridRangeInfo item2 in CoveredRanges.Ranges.GetRangesContained(range4))
					{
						CoveredRanges.Remove(item2);
					}
					continue;
				}
				GridRangeInfo gridRangeInfo2 = range4.ExpandRange(Rows.HeaderCount, Cols.HeaderCount, RowCount, ColCount);
				int num = gridRangeInfo2.Width * gridRangeInfo2.Height;
				int num2 = 0;
				int num3 = gridRangeInfo2.Top;
				while (!flag && num3 <= gridRangeInfo2.Bottom)
				{
					int num4 = gridRangeInfo2.Left;
					while (!flag && num4 <= gridRangeInfo2.Right)
					{
						operationFeedback.PercentComplete = ++num2 * 100 / num;
						GridStyleInfo gridStyleInfo = this[num3, num4];
						if ((!Model.IsReadOnly && !gridStyleInfo.ReadOnly) || Model.IgnoreReadOnly)
						{
							if (gridStyleInfo.GetFormattedText(gridStyleInfo.CellValue, 2).Length > 0)
							{
								flag = !gridStyleInfo.ApplyFormattedText(string.Empty, 2);
							}
							if (flag || operationFeedback.ShouldCancel)
							{
								throw new GridUserCanceledException();
							}
						}
						num4++;
					}
					num3++;
				}
			}
			CommandStack.CommitTrans();
			return true;
		}
		catch (GridUserCanceledException ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			if (operationFeedback.RollbackConfirmed)
			{
				CommandStack.Rollback();
			}
			else
			{
				CommandStack.CommitTrans();
			}
			return false;
		}
		catch (Exception ex2)
		{
			TraceUtil.TraceExceptionCatched(ex2);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
			{
				throw;
			}
			CommandStack.Rollback();
			return false;
		}
		finally
		{
			operationFeedback.Close();
			EndUpdate();
		}
	}

	public void ResetCurrentCellInfo()
	{
		currentCellInfo = null;
	}

	public void ConfirmChanges()
	{
		if (HasCurrentCellInfo)
		{
			CurrentCellInfo.GridView.CurrentCell.ConfirmChanges();
		}
	}

	public virtual void OnConfirmingPendingChanges(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnConfirmingPendingChanges(e);
		}
		if (!CanGridRaiseEvents)
		{
			return;
		}
		try
		{
			if (this.ConfirmingPendingChanges != null)
			{
				this.ConfirmingPendingChanges(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	public bool ConfirmPendingChanges()
	{
		CancelEventArgs e = new CancelEventArgs();
		OnConfirmingPendingChanges(e);
		ConfirmChanges();
		return !e.Cancel;
	}

	public void EndEdit()
	{
		if (HasCurrentCellInfo)
		{
			CurrentCellInfo.GridView.CurrentCell.EndEdit();
		}
	}

	protected virtual void OnCreatedCutPaste()
	{
	}

	protected virtual void OnQueryColCount(GridRowColCountEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryColCount(e);
		}
		if (this.QueryColCount != null)
		{
			this.QueryColCount(this, e);
		}
	}

	public void RaiseQueryColCount(GridRowColCountEventArgs e)
	{
		OnQueryColCount(e);
	}

	protected virtual void OnQueryRowCount(GridRowColCountEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryRowCount(e);
		}
		if (this.QueryRowCount != null)
		{
			this.QueryRowCount(this, e);
		}
	}

	public void RaiseQueryRowCount(GridRowColCountEventArgs e)
	{
		OnQueryRowCount(e);
	}

	protected virtual void OnSaveColCount(GridRowColCountEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveColCount(e);
		}
		if (this.SaveColCount != null)
		{
			this.SaveColCount(this, e);
		}
	}

	internal void RaiseSaveColCount(GridRowColCountEventArgs e)
	{
		OnSaveColCount(e);
	}

	protected virtual void OnSaveRowCount(GridRowColCountEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSaveRowCount(e);
		}
		if (this.SaveRowCount != null)
		{
			this.SaveRowCount(this, e);
		}
	}

	internal void RaiseSaveRowCount(GridRowColCountEventArgs e)
	{
		OnSaveRowCount(e);
	}

	[DocumentationExclude]
	public void RaiseQueryMaximumRowCol(int nLastRow, int nLastCol)
	{
	}

	protected virtual void OnSelectionChanging(GridSelectionChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionChanging(e);
		}
		if (CanGridRaiseEvents && this.SelectionChanging != null)
		{
			this.SelectionChanging(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseSelectionChanging(GridSelectionChangingEventArgs e)
	{
		if (e.Range != null && e.Range.IsCells)
		{
			e.Range = Model.CoveredRanges.Ranges.GetOuterRange(e.Range);
		}
		try
		{
			OnSelectionChanging(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	protected virtual void OnSelectionChanged(GridSelectionChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionChanged(e);
		}
		if (CanGridRaiseEvents && this.SelectionChanged != null)
		{
			this.SelectionChanged(this, e);
		}
	}

	[DocumentationExclude]
	public void RaiseSelectionChanged(GridSelectionChangedEventArgs e)
	{
		if (!e.Range.IsEmpty && Model.Options.ExcelLikeSelectionFrame && (e.Range.Top <= Model.Rows.FrozenCount || e.Range.Left <= Model.Cols.FrozenCount))
		{
			Model.InvalidateRange(e.Range, GridRangeOptions.None);
		}
		OnSelectionChanged(e);
		selectionStateChanged = true;
	}

	protected virtual void OnPrepareClearSelection(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPrepareClearSelection(e);
		}
		if (CanGridRaiseEvents && this.PrepareClearSelection != null)
		{
			this.PrepareClearSelection(this, e);
		}
	}

	internal void RaisePrepareClearSelection(EventArgs e)
	{
		OnPrepareClearSelection(e);
	}

	protected virtual void OnPrepareChangeSelection(GridPrepareChangeSelectionEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPrepareChangeSelection(e);
		}
		if (CanGridRaiseEvents && this.PrepareChangeSelection != null)
		{
			this.PrepareChangeSelection(this, e);
		}
	}

	internal void RaisePrepareChangeSelection(GridPrepareChangeSelectionEventArgs e)
	{
		OnPrepareChangeSelection(e);
	}

	private bool ShouldSerializeBanneredRanges()
	{
		return BanneredRanges.Count > 0;
	}

	public void ResetBanneredRanges()
	{
		if (BanneredRanges.Count > 0)
		{
			BanneredRanges.Clear();
		}
	}

	private bool ShouldSerializeCoveredRanges()
	{
		return CoveredRanges.Count > 0;
	}

	public void ResetCoveredRanges()
	{
		if (CoveredRanges.Count > 0)
		{
			CoveredRanges.Clear();
		}
	}

	public virtual bool GetSpannedRangeInfo(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		if (CoveredRanges.Find(rowIndex, colIndex, out range))
		{
			return true;
		}
		if (MergeCells.Find(GridMergeCellDirection.Both, rowIndex, colIndex, out range))
		{
			return true;
		}
		if (FloatingCells.Find(rowIndex, colIndex, out range))
		{
			return true;
		}
		return false;
	}

	protected virtual void OnCoveredRangesChanging(GridCoveredRangesChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCoveredRangesChanging(e);
		}
		if (CanGridRaiseEvents && this.CoveredRangesChanging != null)
		{
			this.CoveredRangesChanging(this, e);
		}
	}

	internal void RaiseCoveredRangesChanging(GridCoveredRangesChangingEventArgs e)
	{
		OnCoveredRangesChanging(e);
	}

	protected virtual void OnCoveredRangesChanged(GridCoveredRangesChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCoveredRangesChanged(e);
		}
		if (CanGridRaiseEvents && this.CoveredRangesChanged != null)
		{
			this.CoveredRangesChanged(this, e);
		}
	}

	internal void RaiseCoveredRangesChanged(GridCoveredRangesChangedEventArgs e)
	{
		OnCoveredRangesChanged(e);
	}

	protected virtual void OnBanneredRangesChanging(GridBanneredRangesChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnBanneredRangesChanging(e);
		}
		if (CanGridRaiseEvents && this.BanneredRangesChanging != null)
		{
			this.BanneredRangesChanging(this, e);
		}
	}

	internal void RaiseBanneredRangesChanging(GridBanneredRangesChangingEventArgs e)
	{
		OnBanneredRangesChanging(e);
	}

	protected virtual void OnBanneredRangesChanged(GridBanneredRangesChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnBanneredRangesChanged(e);
		}
		if (CanGridRaiseEvents && this.BanneredRangesChanged != null)
		{
			this.BanneredRangesChanged(this, e);
		}
	}

	internal void RaiseBanneredRangesChanged(GridBanneredRangesChangedEventArgs e)
	{
		OnBanneredRangesChanged(e);
	}

	public void PushPrintFloatingCells()
	{
		savedFloatingCellsObject = floatingCellsObject;
		floatingCellsObject = new GridModelFloatingCells(this);
		floatingCellsObject.DelayFloatCells(GridRangeInfo.Table());
	}

	public void ResetPrintFloatingCells()
	{
		floatingCellsObject = savedFloatingCellsObject;
	}

	protected virtual void OnFloatingCellsChanged(GridFloatingCellsChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnFloatingCellsChanged(e);
		}
		if (CanGridRaiseEvents && this.FloatingCellsChanged != null)
		{
			this.FloatingCellsChanged(this, e);
		}
	}

	internal void RaiseFloatingCellsChanged(GridFloatingCellsChangedEventArgs e)
	{
		OnFloatingCellsChanged(e);
	}

	protected virtual void OnMergeCellsChanged(GridMergeCellsChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnMergeCellsChanged(e);
		}
		if (CanGridRaiseEvents && this.MergeCellsChanged != null)
		{
			this.MergeCellsChanged(this, e);
		}
	}

	internal void RaiseMergeCellsChanged(GridMergeCellsChangedEventArgs e)
	{
		OnMergeCellsChanged(e);
	}

	protected virtual void OnQueryCanMergeCells(GridQueryCanMergeCellsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCanMergeCells(e);
		}
		if (this.QueryCanMergeCells != null)
		{
			this.QueryCanMergeCells(this, e);
		}
	}

	internal void RaiseQueryCanMergeCells(GridQueryCanMergeCellsEventArgs e)
	{
		OnQueryCanMergeCells(e);
	}

	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style, bool isRightToLeft)
	{
		GridMargins gridMargins = StyleInfoBordersToMargins(style);
		if (isRightToLeft)
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		return GridMargins.RemoveMargins(cellBounds, gridMargins);
	}

	[Obsolete("It is recommended to specify isRightToLeft parameter, default for isRightToLeft is False.")]
	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style)
	{
		return SubtractBorders(cellBounds, style, isRightToLeft: false);
	}

	public Size AddBorders(Size size, GridStyleInfo style)
	{
		return GridMargins.AddMargins(size, StyleInfoBordersToMargins(style));
	}

	public GridMargins StyleInfoBordersToMargins(GridStyleInfo style)
	{
		bool displayHorzLines = Properties.DisplayHorzLines;
		bool displayVertLines = Properties.DisplayVertLines;
		GridBorderStyle style2 = GetGridLineBorder().Style;
		GridMargins gridMargins = style.BorderMargins.ToMargins();
		if (style.CellAppearance != GridCellAppearance.Flat)
		{
			gridMargins._top++;
			gridMargins._bottom++;
			gridMargins._left++;
			gridMargins._right++;
		}
		GridBordersInfo readOnlyBorders = style.ReadOnlyBorders;
		if (readOnlyBorders.Top.Style != GridBorderStyle.Standard && readOnlyBorders.Top.Style != GridBorderStyle.None)
		{
			gridMargins._top += readOnlyBorders.Top.Width;
		}
		if (readOnlyBorders.Bottom.Style == GridBorderStyle.Standard)
		{
			if (displayHorzLines && style2 != GridBorderStyle.None)
			{
				gridMargins._bottom++;
			}
		}
		else if (readOnlyBorders.Bottom.Style != GridBorderStyle.None)
		{
			gridMargins._bottom += readOnlyBorders.Bottom.Width;
		}
		if (readOnlyBorders.Left.Style != GridBorderStyle.Standard && readOnlyBorders.Left.Style != GridBorderStyle.None)
		{
			gridMargins._left += readOnlyBorders.Left.Width;
		}
		if (readOnlyBorders.Right.Style == GridBorderStyle.Standard && style2 != GridBorderStyle.None)
		{
			if (displayVertLines && style2 != GridBorderStyle.None)
			{
				gridMargins._right++;
			}
		}
		else if (readOnlyBorders.Right.Style != GridBorderStyle.None)
		{
			gridMargins._right += readOnlyBorders.Right.Width;
		}
		return gridMargins;
	}

	GridCellModelBase IGridVolatileDataContainer.LookupCellModel(string id)
	{
		return CellModels[id];
	}

	internal void OnSynchronizingCurrentCell(GridCellEventArgs e)
	{
		if (ActiveGridView != null)
		{
			ActiveGridView.CurrentCell.gridModel_SynchronizingCurrentCell(this, e);
		}
		if (this.SynchronizingCurrentCell != null)
		{
			this.SynchronizingCurrentCell(this, e);
		}
	}

	public void SynchronizeCurrentCell(int rowIndex, int colIndex)
	{
		lastSyncEditRow = rowIndex;
		lastSyncEditCol = colIndex;
		SetActiveCurrentCell(rowIndex, colIndex);
		OnSynchronizingCurrentCell(new GridCellEventArgs(rowIndex, colIndex));
	}

	public virtual object GetStyleDataSource(GridStyleInfo style)
	{
		object obj = null;
		_ = style.CellValueType;
		obj = ((style.ChoiceList == null || style.ChoiceList.Count <= 0) ? style.DataSource : style.ChoiceList);
		if (obj == null)
		{
			PropertyDescriptor propertyDescriptor = GetPropertyDescriptor(style);
			TypeConverter typeConverter = GetTypeConverter(style);
			if (typeConverter != null && typeConverter.CanConvertTo(typeof(string)) && typeConverter.GetStandardValuesSupported())
			{
				return GetCachedStandardValues(typeConverter, (propertyDescriptor != null) ? propertyDescriptor.PropertyType : style.CellValueType);
			}
		}
		return obj;
	}

	internal PropertyDescriptor GetPropertyDescriptor(GridStyleInfo style)
	{
		return style.PropertyDescriptor;
	}

	internal TypeConverter GetTypeConverter(GridStyleInfo style)
	{
		PropertyDescriptor propertyDescriptor = GetPropertyDescriptor(style);
		if (propertyDescriptor != null)
		{
			return propertyDescriptor.Converter;
		}
		Type cellValueType = style.CellValueType;
		if (cellValueType != null)
		{
			return TypeDescriptor.GetConverter(cellValueType);
		}
		return null;
	}

	[DocumentationExclude]
	public GridPropertyStandardValuesList GetCachedStandardValues(TypeConverter converter, Type propertyType)
	{
		if (converter != null && converter.GetStandardValuesSupported())
		{
			string key = converter.GetType().FullName + "@" + propertyType.FullName;
			if (collectionToIListTable.Contains(key))
			{
				return collectionToIListTable[key] as GridPropertyStandardValuesList;
			}
			ICollection standardValues = converter.GetStandardValues();
			GridPropertyStandardValuesList gridPropertyStandardValuesList = new GridPropertyStandardValuesList("Value", propertyType);
			gridPropertyStandardValuesList.AddRange(standardValues);
			collectionToIListTable[key] = gridPropertyStandardValuesList;
			return gridPropertyStandardValuesList;
		}
		return null;
	}
}
