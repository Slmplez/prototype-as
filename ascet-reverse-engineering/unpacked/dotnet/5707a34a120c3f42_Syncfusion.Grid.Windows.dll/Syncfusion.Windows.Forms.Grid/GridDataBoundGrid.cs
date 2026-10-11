using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxBitmap(typeof(GridDataBoundGrid), "ToolboxIcons.GridDataBoundGrid.bmp")]
[Designer(typeof(GridDataBoundGridControlDesigner))]
[ToolboxItem(true)]
[Docking(DockingBehavior.Ask)]
[Description("Displays ADO.NET data and other data sources in a grid.")]
[DefaultEvent("CellClick")]
[ComplexBindingProperties("DataSource", "DataMember")]
public class GridDataBoundGrid : GridControlBaseImp, ISupportInitialize
{
	private const int TREECOLUMN = 2;

	internal GridModelDataBinder binder;

	private bool firstShown = true;

	private bool isDesign;

	private bool treeLines;

	private bool indentLevels;

	private bool inInit;

	private bool allowResizeToFit = true;

	private bool initCC;

	private object _dataSource;

	private bool forceDataSource;

	private bool inBinderCurrentPositionChanged;

	private bool initialized;

	private bool leaveRow;

	private bool rejected;

	internal bool isDeactivated;

	private string controlText;

	private GridRangeInfo markedHeaderRange = GridRangeInfo.Empty;

	private GridRangeInfo deactivatedMarkedHeader = GridRangeInfo.Empty;

	private bool resizeOnUpdatingChanged;

	private bool drawIndividualSpannedCellBorders;

	private GridDataBoundGridRecordAccessibleObjectsIndexer recordAccessibleObjects;

	private GridDataBoundGridFieldHeaderAccessibleObjectsIndexer colHeaderAccessibleObjects;

	public override ISite Site
	{
		get
		{
			return base.Site;
		}
		set
		{
			base.Site = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelDataBinder Binder => binder;

	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the grid should listen to IBindindList.ListChanged events or if it should only handle currency manager events.")]
	public bool UseListChangedEvent
	{
		get
		{
			EnsureBinder();
			return binder.OptimizeListChangedEvent;
		}
		set
		{
			EnsureBinder();
			binder.OptimizeListChangedEvent = value;
		}
	}

	[Category("Grid")]
	[Description("Gets or sets a value indicating whether the grid should call Control.Update after each IBindindList.ListChanged event. This property only has any effect if UseListChangedEvent has been set to True.")]
	[DefaultValue(true)]
	public bool ForceUpdateAfterListChangedEvent
	{
		get
		{
			EnsureBinder();
			return binder.ForceUpdateAfterListChangedEvent;
		}
		set
		{
			EnsureBinder();
			binder.ForceUpdateAfterListChangedEvent = value;
		}
	}

	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Enables or disables tree-like expand / collapse for row header cells in a hierarchical grid.")]
	public bool ShowTreeLines
	{
		get
		{
			return treeLines;
		}
		set
		{
			if (treeLines == value)
			{
				return;
			}
			BeginUpdate();
			treeLines = value;
			if (treeLines)
			{
				if (!base.Model.CellModels.ContainsKey("DataBoundTreeCell"))
				{
					base.Model.CellModels.Add("DataBoundTreeCell", new GridDataBoundTreeCellModel(base.Model));
				}
				WireTreeLineEvents();
			}
			else
			{
				UnwireTreeLineEvents();
			}
			EndUpdate();
			RefreshRange(GridRangeInfo.Cols(1, 2));
		}
	}

	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Show hierarchical levels indented without treelines.")]
	public bool IndentHierarchies
	{
		get
		{
			return indentLevels;
		}
		set
		{
			if (indentLevels != value)
			{
				BeginUpdate();
				indentLevels = value;
				if (indentLevels && !ShowTreeLines)
				{
					ShowTreeLines = true;
				}
				else if (!indentLevels && ShowTreeLines)
				{
					ShowTreeLines = false;
				}
				EndUpdate();
				RefreshRange(GridRangeInfo.Cols(1, 2));
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridDataBoundGridModel DataBoundGridModel => (GridDataBoundGridModel)base.Model;

	[Category("Grid")]
	[Description("Gets or sets a value indicating whether the grid should automatically resize columns to fit cell contents on first display of the data.")]
	[DefaultValue(true)]
	public bool AllowResizeToFit
	{
		get
		{
			return allowResizeToFit;
		}
		set
		{
			allowResizeToFit = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Initializing => inInit;

	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates a sub-list of the DataSource to show in the DataGrid.")]
	[Editor("System.Windows.Forms.Design.DataMemberListEditor, System.Design", typeof(UITypeEditor))]
	[Category("Data")]
	[DefaultValue(null)]
	public virtual string DataMember
	{
		get
		{
			if (binder == null)
			{
				return string.Empty;
			}
			return binder.DataMember;
		}
		set
		{
			EnsureBinder();
			binder.DataMember = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the source of data for the GridDataBoundGrid.")]
	[DefaultValue(null)]
	[Category("Data")]
	[AttributeProvider(typeof(IListSource))]
	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	public virtual object DataSource
	{
		get
		{
			if (binder == null || _dataSource != null)
			{
				return _dataSource;
			}
			return binder.DataSource;
		}
		set
		{
			EnsureBinder();
			if (!forceDataSource && !base.DesignMode && (inInit || firstShown))
			{
				_dataSource = value;
				return;
			}
			if (BindingContext == null)
			{
				BindingContext = new BindingContext();
			}
			binder.DataSource = value;
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Localizable(true)]
	[Description("Manages the columns to be displayed in the GridDataBoundGrid.")]
	[Category("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual GridBoundColumnsCollection GridBoundColumns
	{
		get
		{
			EnsureBinder();
			return binder.GridBoundColumns;
		}
		set
		{
			EnsureBinder();
			binder.GridBoundColumns = value;
			Refresh();
		}
	}

	[Description("Gets / sets the sort behavior if databound grid should sort a column if user clicks on it.")]
	[Category("Grid")]
	public GridSortBehavior SortBehavior
	{
		get
		{
			if (binder == null)
			{
				return GridSortBehavior.None;
			}
			return binder.sortBehavior;
		}
		set
		{
			EnsureBinder();
			binder.sortBehavior = value;
		}
	}

	[Description("Specifies if the column header for the current cell should be highlighted.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Grid")]
	[DefaultValue(false)]
	public bool HighlightCurrentColumnHeader
	{
		get
		{
			EnsureBinder();
			return binder.outlineHeaderField;
		}
		set
		{
			EnsureBinder();
			binder.outlineHeaderField = value;
			markedHeaderRange = GridRangeInfo.Empty;
		}
	}

	[Category("Grid")]
	[RefreshProperties(RefreshProperties.All)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridControllerOptions.All)]
	[Description("Specifies which mouse controllers should be enabled for the grid.")]
	public GridControllerOptions ControllerOptions
	{
		get
		{
			return base.Model.Options.ControllerOptions;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ControllerOptions = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Grid")]
	[Browsable(true)]
	[Description("The collection of base styles used in this grid.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public GridBaseStylesMap BaseStylesMap
	{
		get
		{
			return base.Model.BaseStylesMap;
		}
		set
		{
			EnsureBinder();
			base.Model.BaseStylesMap = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(GridCellActivateAction.ClickOnCell)]
	[Description("Specifies current cell activation behavior when moving the current cell or clicking inside a cell.")]
	[Category("Grid")]
	public GridCellActivateAction ActivateCurrentCellBehavior
	{
		get
		{
			return base.Model.Options.ActivateCurrentCellBehavior;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ActivateCurrentCellBehavior = value;
		}
	}

	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Allow the user to drag selected columns by clicking on the column header.")]
	[Browsable(true)]
	public bool AllowDragSelectedCols
	{
		get
		{
			return base.Model.Options.AllowDragSelectedCols;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.AllowDragSelectedCols = value;
		}
	}

	[Description("Specifies the color for alpha blended cell selections.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Grid")]
	public Color AlphaBlendSelectionColor
	{
		get
		{
			return base.Model.Options.AlphaBlendSelectionColor;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.AlphaBlendSelectionColor = value;
		}
	}

	[Browsable(true)]
	[Description("Defines selection behavior of the grid.")]
	[Category("Grid")]
	[DefaultValue(GridSelectionFlags.Any)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[RefreshProperties(RefreshProperties.Repaint)]
	public GridSelectionFlags AllowSelection
	{
		get
		{
			return base.Model.Options.AllowSelection;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.AllowSelection = value;
		}
	}

	[Category("Grid")]
	[Description("Specifies look and feel skins for the Grid")]
	[DefaultValue(GridVisualStyles.SystemTheme)]
	[Browsable(true)]
	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return base.Model.Options.GridVisualStyles;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.GridVisualStyles = value;
		}
	}

	[Browsable(false)]
	[Description("Gets or sets the VisualStylesDrawing object")]
	public IVisualStylesDrawing GridVisualStylesDrawing
	{
		get
		{
			return base.Model.Options.GridVisualStylesDrawing;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.GridVisualStylesDrawing = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates if the list box is to be single-select, multi-select, or unselectable.")]
	[DefaultValue(SelectionMode.None)]
	[Category("Grid")]
	public virtual SelectionMode ListBoxSelectionMode
	{
		get
		{
			return base.Model.Options.ListBoxSelectionMode;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ListBoxSelectionMode = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Grid")]
	[Description("Controls the kind of textbox control that is created for TextBox cells. In general the original text box behaves better than the default richtext box with Hebrew and arabic languages")]
	public bool UseRightToLeftCompatibleTextBox
	{
		get
		{
			return base.Model.Options.UseRightToLeftCompatibleTextBox;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.UseRightToLeftCompatibleTextBox = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool DrawIndividualSpannedCellBorders
	{
		get
		{
			return drawIndividualSpannedCellBorders;
		}
		set
		{
			if (drawIndividualSpannedCellBorders != value)
			{
				drawIndividualSpannedCellBorders = value;
				Invalidate();
			}
		}
	}

	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Defines Excel-like current cell behavior. When the user moves the current cell out of a selected range, the range will be cleared.")]
	public bool ExcelLikeCurrentCell
	{
		get
		{
			return base.Model.Options.ExcelLikeCurrentCell;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ExcelLikeCurrentCell = value;
		}
	}

	[Description("Specifies whether the active selection should be outlined with a selection frame.")]
	[Category("Grid")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool ExcelLikeSelectionFrame
	{
		get
		{
			return base.Model.Options.ExcelLikeSelectionFrame;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ExcelLikeSelectionFrame = value;
		}
	}

	[DefaultValue(null)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Localizable(true)]
	[Description("The background image used for the control.")]
	[Category("Appearance")]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			EnsureBinder();
			if (!GetStyle(ControlStyles.SupportsTransparentBackColor) && value != null)
			{
				base.Model.Options.TransparentBackground = true;
			}
			base.BackgroundImage = value;
		}
	}

	[Description("The font used to display text in the control.")]
	[RefreshProperties(RefreshProperties.All)]
	[AmbientValue(null)]
	[Category("Appearance")]
	public override Font Font
	{
		get
		{
			if (!base.IsSplitterPaneClosing)
			{
				return TableStyle.GdipFont;
			}
			return base.Font;
		}
		set
		{
			if (value != null)
			{
				EnsureBinder();
				GridFontInfo font = TableStyle.Font;
				font.Facename = value.FontFamily.Name;
				font.FontStyle = value.Style;
				font.Size = value.SizeInPoints;
			}
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[Description("The table style. Individual cells will inherit attributes from the table style.")]
	[RefreshProperties(RefreshProperties.All)]
	public GridStyleInfo TableStyle
	{
		get
		{
			return base.Model.TableStyle;
		}
		set
		{
			EnsureBinder();
			base.Model.TableStyle = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[DefaultValue(0)]
	[Description("Defines the minimum row height when the user resizes a row with the mouse.")]
	public int MinResizeRowSize
	{
		get
		{
			return base.Model.Options.MinResizeRowSize;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.MinResizeRowSize = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(0)]
	[Description("Defines the minimum column width when the user resizes a column with the mouse.")]
	[Category("Grid")]
	public int MinResizeColSize
	{
		get
		{
			return base.Model.Options.MinResizeColSize;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.MinResizeColSize = value;
		}
	}

	[Description("Defines whether a grid should be completely refreshed when the user resizes the window or if only newly visible rows or columns should be redrawn.")]
	[Browsable(true)]
	[DefaultValue(true)]
	[Category("Grid")]
	public bool SmoothControlResize
	{
		get
		{
			return base.Model.Options.SmoothControlResize;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.SmoothControlResize = value;
		}
	}

	[Description("Manages more options for the grid. Printing related. Also manages colors for grid background, grid lines, and more.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Grid")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public GridProperties Properties
	{
		get
		{
			return base.Model.Properties;
		}
		set
		{
			EnsureBinder();
			base.Model.Properties = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Description("Defines behavior for resizing rows.")]
	public GridResizeCellsBehavior ResizeRowsBehavior
	{
		get
		{
			return base.Model.Options.ResizeRowsBehavior;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ResizeRowsBehavior = value;
		}
	}

	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Description("Defines behavior for resizing columns.")]
	[Category("Grid")]
	public GridResizeCellsBehavior ResizeColsBehavior
	{
		get
		{
			return base.Model.Options.ResizeColsBehavior;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ResizeColsBehavior = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(GridShowCurrentCellBorder.WhenGridActive)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines when to show current cell frame or border.")]
	[Category("Grid")]
	public GridShowCurrentCellBorder ShowCurrentCellBorderBehavior
	{
		get
		{
			return base.Model.Options.ShowCurrentCellBorderBehavior;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.ShowCurrentCellBorderBehavior = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines whether grid should erase and fill background of cells or only draw cell text.")]
	[Category("Grid")]
	public bool TransparentBackground
	{
		get
		{
			return base.Model.Options.TransparentBackground;
		}
		set
		{
			EnsureBinder();
			base.Model.Options.TransparentBackground = value;
		}
	}

	[DefaultValue(false)]
	[Category("Grid")]
	[Browsable(false)]
	public bool UseComplexBinding
	{
		get
		{
			return binder.UseComplexBinding;
		}
		set
		{
			binder.UseComplexBinding = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridStyleInfo this[int rowIndex, int colIndex]
	{
		get
		{
			return base.Model[rowIndex, colIndex];
		}
		set
		{
			base.Model[rowIndex, colIndex] = value;
		}
	}

	[DefaultValue(true)]
	[Category("Grid")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("A value indicating if the grid supports removing records if the underlying datasource allows it.")]
	public bool EnableRemove
	{
		get
		{
			if (binder == null)
			{
				return false;
			}
			return binder.EnableRemove;
		}
		set
		{
			EnsureBinder();
			binder.EnableRemove = value;
			Refresh();
		}
	}

	[Category("Grid")]
	[DefaultValue(true)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("A value indicating if the grid supports editing records if the underlying datasource allows it.")]
	public bool EnableEdit
	{
		get
		{
			if (binder == null)
			{
				return false;
			}
			return binder.EnableEdit;
		}
		set
		{
			EnsureBinder();
			binder.EnableEdit = value;
			Refresh();
		}
	}

	[DefaultValue(true)]
	[Category("Grid")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("A value indicating if the grid supports adding new records if the underlying datasource allows it.")]
	public bool EnableAddNew
	{
		get
		{
			if (binder == null)
			{
				return false;
			}
			return binder.EnableAddNew;
		}
		set
		{
			EnsureBinder();
			binder.EnableAddNew = value;
			if (base.DesignMode)
			{
				base.Model.ResetVolatileData();
				if (binder.SupportsAddNew && value)
				{
					CurrentCell.MoveTo(base.Model.Rows.HeaderCount + 1, base.Model.Cols.HeaderCount + 1);
				}
			}
			Refresh();
		}
	}

	internal GridDataBoundGridRecordAccessibleObjectsIndexer RecordAccessibleObjects
	{
		get
		{
			if (recordAccessibleObjects == null)
			{
				recordAccessibleObjects = new GridDataBoundGridRecordAccessibleObjectsIndexer(this);
			}
			return recordAccessibleObjects;
		}
	}

	internal GridDataBoundGridFieldHeaderAccessibleObjectsIndexer FieldHeaderAccessibleObjects
	{
		get
		{
			if (colHeaderAccessibleObjects == null)
			{
				colHeaderAccessibleObjects = new GridDataBoundGridFieldHeaderAccessibleObjectsIndexer(this);
			}
			return colHeaderAccessibleObjects;
		}
	}

	[Description("Occurs before the record at the specified row is being expanded to show details of a child relation.")]
	public event GridRowEventHandler RowExpanding;

	[Description("Occurs after the record at the specified row has been expanded to show details of a child relation.")]
	public event GridRowEventHandler RowExpanded;

	[Description("Occurs before the record at the specified row is expanded to show details of a child relation.")]
	public event GridRowEventHandler RowCollapsing;

	[Description("Occurs after the record at the specified row has been expanded to show details of a child relation.")]
	public event GridRowEventHandler RowCollapsed;

	[Description("Occurs before the grid deletes a number of records from the datasource.")]
	public event GridRowRangeEventHandler RowsDeleting;

	[Description("Occurs after the grid deleted a number of records from the datasource.")]
	public event GridRowRangeEventHandler RowsDeleted;

	[Description("Occurs before the current cell is activated in a new row.")]
	public event GridRowEventHandler RowEnter;

	[Description("Occurs after the current cell's changes have been saved and before it is deactivated and the changes in the current row are saved to the underlying data table. ")]
	public event GridRowEventHandler RowLeave;

	[Description("Occurs after the changes in the current row have been saved.")]
	public event GridRowEventHandler RowSaved;

	[Description("Occurs before the current row is edited.")]
	public event GridRowEventHandler RowEditing;

	[Description("Occurs when validation of the current record or current cell fails")]
	[Category("Focus")]
	public event GridValidateFailedEventHandler ValidateFailed;

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (isDesign && DataSource == null)
		{
			SetControlDisplayInfo(pe.Graphics);
		}
	}

	private void SetControlDisplayInfo(Graphics g)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = StringAlignment.Center;
		stringFormat.LineAlignment = StringAlignment.Center;
		g.DrawString("Set the DataSource property to preview...", Font, new SolidBrush(SystemColors.ControlDark), clientRectangle, stringFormat);
	}

	public GridDataBoundGrid()
		: this(new GridDataBoundGridModel())
	{
	}

	public GridDataBoundGrid(GridDataBoundGridModel model)
		: base(model)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GridDataBoundGrid));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
		if (model.ActiveGridView == null)
		{
			model.ActiveGridView = this;
		}
	}

	public override Control CreateNewControl(Control parent, int row, int column)
	{
		GridDataBoundGrid gridDataBoundGrid = new GridDataBoundGrid(DataBoundGridModel);
		WireNewControl(gridDataBoundGrid);
		return gridDataBoundGrid;
	}

	protected void WireNewControl(GridDataBoundGrid grid)
	{
		grid.binder = binder;
		grid.WireBinder();
		grid.BackColor = BackColor;
		grid.ForeColor = ForeColor;
		grid.BorderStyle = base.BorderStyle;
		grid.ShowTreeLines = ShowTreeLines;
	}

	private void WireTreeLineEvents()
	{
		base.CellButtonClicked += treeCellButton_Clicked;
		base.Model.QueryCellInfo += gridModel_QueryCellInfo;
		base.SplitterPaneClosing += grid_SplitterPaneClosing;
		base.Model.QueryColWidth += Model_QueryColWidth;
	}

	private void UnwireTreeLineEvents()
	{
		base.Model.QueryCellInfo -= gridModel_QueryCellInfo;
		base.CellButtonClicked -= treeCellButton_Clicked;
		base.SplitterPaneClosing -= grid_SplitterPaneClosing;
		base.Model.QueryColWidth -= Model_QueryColWidth;
	}

	private void grid_SplitterPaneClosing(object sender, EventArgs e)
	{
		UnwireTreeLineEvents();
	}

	private void Model_QueryColWidth(object sender, GridRowColSizeEventArgs e)
	{
		if (e.Index == 1)
		{
			e.Size = 0;
			e.Handled = true;
		}
	}

	private void treeCellButton_Clicked(object sender, GridCellButtonClickedEventArgs e)
	{
		if (e.ColIndex == 2 && Binder.HierarchyLevelCount > 0)
		{
			if (IsExpandedAtRowIndex(e.RowIndex))
			{
				CollapseAtRowIndex(e.RowIndex);
			}
			else
			{
				ExpandAtRowIndex(e.RowIndex);
			}
		}
	}

	private void gridModel_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		if (Binder.HierarchyLevelCount > 0 && e.RowIndex > base.Model.Rows.HeaderCount && e.ColIndex == 2 && e.RowIndex <= base.Model.RowCount - (Binder.AllowAddNew ? 1 : 0))
		{
			e.Style.Borders.Bottom = new GridBorder(GridBorderStyle.None);
			e.Style.CellType = "DataBoundTreeCell";
		}
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
		EnsureBinder();
		InitSplitterControl();
		forceDataSource = true;
		if (binder.DataSource == null && _dataSource != null && GridListUtil.GetItemProperties(_dataSource).Count > 0)
		{
			DataSource = _dataSource;
			_dataSource = null;
		}
		if (base.DesignMode && allowResizeToFit && binder.List != null)
		{
			base.Model.ColWidths.ResizeToFit(GridRangeInfo.Rows(1, base.ViewLayout.LastVisibleRow), GridResizeToFitOptions.IncludeHeaders);
		}
		CurrentCell.MoveTo(base.Model.Rows.HeaderCount + 1, base.Model.Cols.HeaderCount + 1);
	}

	protected virtual void OnRowEnter(GridRowEventArgs e)
	{
		if (this.RowEnter != null)
		{
			this.RowEnter(this, e);
		}
	}

	protected virtual void OnRowLeave(GridRowEventArgs e)
	{
		if (this.RowLeave != null)
		{
			this.RowLeave(this, e);
		}
	}

	protected virtual void OnRowSaved(GridRowEventArgs e)
	{
		if (this.RowSaved != null)
		{
			this.RowSaved(this, e);
		}
	}

	protected virtual void OnRowEditing(GridRowEventArgs e)
	{
		if (this.RowEditing != null)
		{
			this.RowEditing(this, e);
		}
	}

	protected virtual void OnRowExpanding(GridRowEventArgs e)
	{
		if (this.RowExpanding != null)
		{
			this.RowExpanding(this, e);
		}
	}

	protected virtual void OnRowExpanded(GridRowEventArgs e)
	{
		if (this.RowExpanded != null)
		{
			this.RowExpanded(this, e);
		}
	}

	protected virtual void OnRowCollapsing(GridRowEventArgs e)
	{
		if (this.RowCollapsing != null)
		{
			this.RowCollapsing(this, e);
		}
	}

	protected virtual void OnRowCollapsed(GridRowEventArgs e)
	{
		if (this.RowCollapsed != null)
		{
			this.RowCollapsed(this, e);
		}
	}

	protected virtual void OnRowsDeleting(GridRowRangeEventArgs e)
	{
		if (this.RowsDeleting != null)
		{
			this.RowsDeleting(this, e);
		}
	}

	protected virtual void OnRowsDeleted(GridRowRangeEventArgs e)
	{
		if (this.RowsDeleted != null)
		{
			this.RowsDeleted(this, e);
		}
	}

	private void EnsureBinder()
	{
		if (binder == null)
		{
			binder = CreateBinder();
			binder.BindingContext = BindingContext;
			binder.Site = Site;
			initCC = base.Model.DataProvider == null;
			base.Model.DataProvider = binder;
			WireBinder();
		}
	}

	protected virtual GridModelDataBinder CreateBinder()
	{
		return new GridModelDataBinder(base.Model);
	}

	private void WireBinder()
	{
		binder.CurrentPositionChanged += BinderCurrentPositionChanged;
		binder.EditModeChanged += BinderEditModeChanged;
		binder.ItemChanged += BinderItemChanged;
		binder.RowChanged += BinderRowChanged;
		binder.viewCount++;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnwireBinder();
			if (ShowTreeLines)
			{
				ShowTreeLines = false;
			}
			if (binder != null && (isDesign || binder.viewCount == 0))
			{
				binder.Dispose();
			}
			if (base.Model != null && FindParentForm() != null && FindParentForm().Disposing)
			{
				base.Model.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void UnwireBinder()
	{
		if (binder != null)
		{
			binder.viewCount--;
			binder.CurrentPositionChanged -= BinderCurrentPositionChanged;
			binder.EditModeChanged -= BinderEditModeChanged;
			binder.ItemChanged -= BinderItemChanged;
			binder.RowChanged -= BinderRowChanged;
			binder.RecordsRemoved -= BinderDataSourceChanged;
			binder.DataSourceChanged -= BinderDataSourceChanged;
			binder.GridBoundColumnsChanged -= BinderGridBoundColumnsChanged;
		}
	}

	private void BinderItemChanged(object sender, ItemChangedEventArgs e)
	{
		if (!CurrentCell.IsInMoveTo && e.Index != -1)
		{
			base.Model.ResetVolatileData();
			RefreshRange(GridRangeInfo.Row(binder.PositionToRowIndex(e.Index)));
		}
	}

	private void BinderRowChanged(object sender, EventArgs e)
	{
		if (!CurrentCell.IsInMoveTo && !CurrentCell.IsInActivate && !CurrentCell.IsInDeactivate)
		{
			BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			base.Model.ResetVolatileData();
			if (CurrentCell.HasCurrentCell)
			{
				CurrentCell.Deactivate(discardChanges: true);
				CurrentCell.Activate(binder.CurrentRowIndex, CurrentCell.ColIndex, GridSetCurrentCellOptions.NoSetFocus);
			}
			else
			{
				CurrentCell.SetPositionNoActivate(binder.CurrentRowIndex, CurrentCell.ColIndex);
			}
			EndUpdate(update: true);
		}
		else
		{
			RefreshRange(GridRangeInfo.Row(binder.CurrentRowIndex));
			CurrentCell.Refresh();
		}
	}

	private void BinderCurrentPositionChanged(object sender, EventArgs e)
	{
		if (inBinderCurrentPositionChanged)
		{
			return;
		}
		inBinderCurrentPositionChanged = true;
		try
		{
			if (binder.SavedPosition != -1 && binder.CurrentPosition != -1 && !binder.RecordDiffersAtPosition(binder.SavedPosition, binder.CurrentPosition))
			{
				return;
			}
			if (binder.SavedPosition != -1)
			{
				RefreshRange(GridRangeInfo.Row(binder.SavedRowIndex), GridRangeOptions.MergeCoveredCells);
			}
			if (binder.CurrentPosition != -1)
			{
				InvalidateRange(GridRangeInfo.Row(binder.CurrentRowIndex), GridRangeOptions.MergeCoveredCells);
				if (!CurrentCell.IsInActiveOrDeactivate && !CurrentCell.IsInMoveTo && !CurrentCell.IsInActivated)
				{
					CurrentCell.MoveTo(binder.CurrentRowIndex, CurrentCell.ColIndex, GridSetCurrentCellOptions.NoSyncCurrentCell);
				}
			}
		}
		finally
		{
			inBinderCurrentPositionChanged = false;
		}
	}

	private void BinderEditModeChanged(object sender, EventArgs e)
	{
		GridRangeInfo range = GridRangeInfo.Row(binder.CurrentRowIndex);
		Rectangle rc = RangeInfoToRectangle(range, GridRangeOptions.MergeCoveredCells);
		if (binder.IsAppendRow)
		{
			rc.Height = base.GridBounds.Bottom - rc.Top;
		}
		base.ViewLayout.Reset();
		Invalidate(rc);
	}

	protected override void OnBindingContextChanged(EventArgs e)
	{
		if (binder != null)
		{
			binder.BindingContext = BindingContext;
		}
		base.OnBindingContextChanged(e);
	}

	protected override void OnSplitterPaneClosing(EventArgs e)
	{
		if (binder != null)
		{
			UnwireBinder();
		}
		base.OnSplitterPaneClosing(e);
		binder = null;
	}

	protected override void InitLayout()
	{
		EnsureBinder();
		if (binder.BindingContext == null || binder.List == null)
		{
			binder.BindingContext = BindingContext;
			binder.Set_ListManager(binder.DataSource, binder.DataMember, force: true);
		}
		binder.RecordsRemoved += BinderDataSourceChanged;
		binder.DataSourceChanged += BinderDataSourceChanged;
		binder.GridBoundColumnsChanged += BinderGridBoundColumnsChanged;
		RegisterDataObjectConsumer(new GridDataBoundGridTextDataObjectConsumer(this));
		base.InitLayout();
		initialized = true;
		isDesign = base.DesignMode;
		if (inInit)
		{
			return;
		}
		bool flag = false;
		forceDataSource = true;
		if (binder.DataSource == null && _dataSource != null)
		{
			flag = true;
			DataSource = _dataSource;
		}
		_dataSource = null;
		if (!initCC)
		{
			CurrentCell.SetPositionNoActivate(binder.CurrentRowIndex, base.Model.Cols.HeaderCount + 1);
			return;
		}
		if (!flag)
		{
			ResizeVisibleRowsToFit();
		}
		CurrentCell.MoveTo(base.Model.Rows.HeaderCount + 1, base.Model.Cols.HeaderCount + 1);
	}

	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
		if (binder != null && binder.CurrentPosition <= 0)
		{
			binder.SetCurrentPosition(0, raiseCurrentPositionChanged: false);
		}
		CurrentCell.Refresh();
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		base.OnValidating(e);
		if (!e.Cancel)
		{
			CurrentCell.EndEdit();
			if (!CurrentCell.IsEditing)
			{
				CurrentCell.ConfirmChanges();
			}
			e.Cancel |= CurrentCell.IsModified;
			if (binder != null && binder.listManager != null)
			{
				binder.listManager.Refresh();
			}
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		base.OnLeave(e);
	}

	private void BinderDataSourceChanged(object sender, EventArgs e)
	{
		if (initialized && !inInit)
		{
			CurrentCell.Deactivate(discardChanges: true);
			if (binder.CurrentPosition >= 0)
			{
				CurrentCell.Activate(binder.CurrentRowIndex, Math.Max(base.Model.Cols.HeaderCount + 1, CurrentCell.ColIndex));
				OnRowEnter(new GridRowEventArgs(binder.CurrentRowIndex));
			}
			else
			{
				CurrentCell.MoveTo(base.Model.Rows.HeaderCount + 1, base.Model.Cols.HeaderCount + 1);
			}
			Refresh();
			if (base.DesignMode)
			{
				ResizeVisibleRowsToFit();
			}
		}
	}

	private void BinderGridBoundColumnsChanged(object sender, EventArgs e)
	{
		if (initialized)
		{
			BeginUpdate(BeginUpdateOptions.None);
			base.Model.ResetVolatileData();
			base.ViewLayout.Reset();
			ResizeVisibleRowsToFit();
			Refresh();
			EndUpdate(update: true);
		}
	}

	private void ResetGridBoundColumns()
	{
		if (binder == null)
		{
			return;
		}
		if (Site != null)
		{
			IDesignerHost designerHost = (IDesignerHost)Site.GetService(typeof(IDesignerHost));
			DesignerTransaction designerTransaction = null;
			if (designerHost != null)
			{
				designerTransaction = designerHost.CreateTransaction("Reset GridBoundColumns");
			}
			GridBoundColumns = binder.CreateBoundColumnsCollection();
			designerTransaction?.Commit();
		}
		else
		{
			GridBoundColumns = binder.CreateBoundColumnsCollection();
		}
	}

	private bool ShouldSerializeGridBoundColumns()
	{
		if (binder != null)
		{
			return binder.GridBoundColumns.Count > 0;
		}
		return false;
	}

	protected override void OnCurrentCellRejectedChanges(EventArgs e)
	{
		base.OnCurrentCellRejectedChanges(e);
		if (!IsCurrentCellUnboundCell())
		{
			CancelUpdate();
			base.Model.ResetVolatileData();
			binder.ResetField(binder.ColIndexToField(CurrentCell.ColIndex));
			if (!binder.IsAnyDirtyField())
			{
				binder.CancelEdit();
			}
			CurrentCell.Refresh();
		}
	}

	protected virtual void AdjustRowHeader(GridCurrentCellMovingEventArgs e)
	{
		int i = e.ColIndex;
		if (i <= 0)
		{
			i = base.Model.Cols.HeaderCount + 1;
		}
		for (; !GetViewStyleInfo(e.RowIndex, i).Enabled; i++)
		{
			if (i >= base.Model.ColCount)
			{
				return;
			}
		}
		e.ColIndex = i;
	}

	protected override void OnCurrentCellMoving(GridCurrentCellMovingEventArgs e)
	{
		base.OnCurrentCellMoving(e);
		if (e.Cancel)
		{
			return;
		}
		AdjustRowHeader(e);
		if (!IsCurrentCellUnboundCell(e.RowIndex, e.ColIndex) && !e.Cancel)
		{
			leaveRow = binder.RecordDiffersAtRowIndex(e.RowIndex, binder.CurrentRowIndex);
			if (leaveRow)
			{
				e.Options &= GridSetCurrentCellOptions.NoSelectRange | GridSetCurrentCellOptions.NoSetFocus;
				BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			}
		}
	}

	protected override void OnCurrentCellDeactivating(CancelEventArgs e)
	{
		base.OnCurrentCellDeactivating(e);
		if (!e.Cancel && (!CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) && (CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex)))
		{
			isDeactivated = false;
			rejected = false;
			if (CurrentCell.IsInMoveTo && binder.RecordDiffersAtRowIndex(CurrentCell.RowIndex, CurrentCell.MoveToRowIndex))
			{
				binder.ResetError();
				controlText = CurrentCell.Renderer.ControlText;
			}
			if (!CurrentCell.IsModified && CurrentCell.IsInMoveTo && binder.RecordDiffersAtRowIndex(binder.CurrentRowIndex, CurrentCell.MoveToRowIndex))
			{
				e.Cancel = !EndEdit();
			}
		}
	}

	private bool EndEdit()
	{
		GridRowEventArgs e = new GridRowEventArgs(binder.CurrentRowIndex, binder.IsAddNew);
		try
		{
			OnRowLeave(e);
			if (!e.Cancel)
			{
				if (binder.IsEditing)
				{
					if (binder.IsAddNew || binder.IsAppendRow)
					{
						Invalidate(base.ViewLayout.RectangleBottomOfRow(binder.CurrentRowIndex - 1, GridCellSizeKind.VisibleSize));
					}
					binder.EndEdit();
					InvalidateRange(GridRangeInfo.Row(binder.CurrentRowIndex), GridRangeOptions.MergeCoveredCells);
					OnRowSaved(e);
				}
				else
				{
					InvalidateRange(GridRangeInfo.Row(binder.CurrentRowIndex), GridRangeOptions.MergeCoveredCells);
				}
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			if (CurrentCell.IsInMoveTo)
			{
				throw;
			}
			CurrentCell.ErrorMessage = ex.Message;
			CurrentCell.Exception = ex;
			if (!base.IsInLeaveOrValidate && !base.IsValidating)
			{
				CancelUpdate();
				RaiseValidateFailed(CurrentCell.IsInDeactivate ? CurrentCell.ColIndex : (-1));
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	private bool BeginEdit()
	{
		if (binder.IsEditing)
		{
			return true;
		}
		GridRowEventArgs e = new GridRowEventArgs(binder.CurrentRowIndex, binder.IsAppendRow);
		int currentRowIndex = binder.CurrentRowIndex;
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		OnRowEditing(e);
		binder.BeginEdit();
		if (binder.IsAddNew || binder.IsAppendRow)
		{
			Invalidate(base.ViewLayout.RectangleBottomOfRow(currentRowIndex, GridCellSizeKind.VisibleSize));
		}
		EndUpdate(update: true);
		return !e.Cancel;
	}

	protected override void OnCurrentCellAcceptedChanges(CancelEventArgs e)
	{
		base.OnCurrentCellAcceptedChanges(e);
		if (!e.Cancel && (!CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) && (CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex)))
		{
			if (CurrentCell.IsInMoveTo && binder.RecordDiffersAtRowIndex(binder.CurrentRowIndex, CurrentCell.MoveToRowIndex) && !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex))
			{
				e.Cancel = !EndEdit();
			}
			isDeactivated = true;
		}
	}

	protected override void OnCurrentCellConfirmChangesFailed(EventArgs e)
	{
		base.OnCurrentCellConfirmChangesFailed(e);
		if ((!CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) && (CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex)) && !CurrentCell.IsInDeactivate && !base.IsInLeaveOrValidate)
		{
			RaiseValidateFailed(CurrentCell.ColIndex);
		}
	}

	protected override void OnCurrentCellDeactivated(GridCurrentCellDeactivatedEventArgs e)
	{
		if (!CurrentCell.IsInMoveTo && markedHeaderRange.IsCells)
		{
			InvalidateRange(markedHeaderRange, GridRangeOptions.MergeCoveredCells);
			markedHeaderRange = GridRangeInfo.Empty;
		}
		base.OnCurrentCellDeactivated(e);
		if ((!CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) && (CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(e.RowIndex, e.ColIndex)))
		{
			isDeactivated = true;
		}
	}

	protected override void OnCurrentCellMoveFailed(GridCurrentCellMoveFailedEventArgs e)
	{
		base.OnCurrentCellMoveFailed(e);
		if (!IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex))
		{
			RaiseValidateFailed(CurrentCell.ColIndex);
		}
	}

	protected virtual void OnValidateFailed(GridValidateFailedEventArgs e)
	{
		if (this.ValidateFailed != null)
		{
			this.ValidateFailed(this, e);
		}
	}

	private void RaiseValidateFailed(int colIndex)
	{
		base.Model.Selections.Clear(raiseEvents: true);
		CancelUpdate();
		GridValidateFailedEventArgs e = new GridValidateFailedEventArgs();
		OnValidateFailed(e);
		GridCurrentCell currentCell = CurrentCell;
		if (!e.Handled && currentCell.ErrorMessage.Length > 0 && !base.IsMousePressed)
		{
			if (!base.IsInLeaveOrValidate && base.ContainsFocus)
			{
				currentCell.Refresh();
			}
			currentCell.DisplayWarningText(currentCell.ErrorMessage);
			currentCell.ResetError();
		}
		if (currentCell.IsActive && base.ContainsFocus)
		{
			if (!CurrentCell.HasCurrentCellAt(binder.CurrentRowIndex, currentCell.ColIndex))
			{
				CurrentCell.Deactivate(discardChanges: true);
				CurrentCell.Activate(binder.CurrentRowIndex, currentCell.ColIndex);
			}
			else
			{
				currentCell.Refresh();
			}
			InvalidateRange(GridRangeInfo.Row(currentCell.RowIndex), GridRangeOptions.MergeCoveredCells);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
	}

	protected override void OnCurrentCellDeactivateFailed(EventArgs e)
	{
		base.OnCurrentCellDeactivateFailed(e);
		if ((!CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) && (CurrentCell.IsInMoveTo || !IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex)))
		{
			if ((!CurrentCell.IsInMoveTo || binder.RecordDiffersAtRowIndex(CurrentCell.MoveFromRowIndex, CurrentCell.MoveToRowIndex)) && binder.HasError && !base.IsMousePressed)
			{
				CurrentCell.ErrorMessage = binder.ErrorMessage;
				CurrentCell.Exception = binder.Exception;
			}
			if (CurrentCell.IsActive && !binder.RecordDiffersAtRowIndex(CurrentCell.RowIndex, binder.CurrentRowIndex))
			{
				binder.CurrentPosition = binder.RowIndexToPosition(CurrentCell.RowIndex);
			}
			else
			{
				CurrentCell.Activate(binder.CurrentRowIndex, CurrentCell.ColIndex);
				CurrentCell.BeginEdit();
			}
			if (!rejected && CurrentCell.HasCurrentCell)
			{
				CurrentCell.IsModified = true;
			}
			InvalidateRange(GridRangeInfo.Row(CurrentCell.RowIndex), GridRangeOptions.MergeCoveredCells);
			if (leaveRow)
			{
				EndUpdate(update: true);
			}
		}
	}

	protected override void OnCurrentCellActivating(GridCurrentCellActivatingEventArgs e)
	{
		if (e.Cancel || (CurrentCell.IsInMoveTo && IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) || (!CurrentCell.IsInMoveTo && IsCurrentCellUnboundCell(e.RowIndex, e.ColIndex)))
		{
			base.OnCurrentCellActivating(e);
			return;
		}
		if (!isDeactivated && CurrentCell.IsInMoveTo && (CurrentCell.MoveFromActiveState || binder.HasError))
		{
			e.RowIndex = CurrentCell.MoveFromRowIndex;
			e.ColIndex = CurrentCell.MoveFromColIndex;
		}
		if (!CurrentCell.IsInMoveTo || !CurrentCell.MoveFromActiveState || leaveRow || binder.RecordDiffersAtRowIndex(CurrentCell.MoveFromRowIndex, CurrentCell.MoveToRowIndex))
		{
			if (binder.IsEditing)
			{
				bool flag = true;
				try
				{
					flag = EndEdit();
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex))
					{
						throw;
					}
					flag = false;
				}
				if (!flag)
				{
					RaiseValidateFailed(CurrentCell.ColIndex);
					e.RowIndex = binder.CurrentRowIndex;
					binder.CancelEdit();
					e.Cancel = true;
					base.OnCurrentCellActivating(e);
					return;
				}
			}
			GridRowEventArgs e2 = new GridRowEventArgs(e.RowIndex);
			OnRowEnter(e2);
			if (e2.Cancel)
			{
				e.Cancel = true;
				return;
			}
			e.RowIndex = e2.RowIndex;
			base.OnCurrentCellActivating(e);
			binder.SetCurrentPosition(binder.RowIndexToPosition(e.RowIndex), raiseCurrentPositionChanged: false);
		}
		else
		{
			base.OnCurrentCellActivating(e);
		}
	}

	protected override void OnCurrentCellActivated(EventArgs e)
	{
		base.OnCurrentCellActivated(e);
		try
		{
			if ((CurrentCell.IsInMoveTo && IsCurrentCellUnboundCell(CurrentCell.MoveToRowIndex, CurrentCell.MoveToColIndex)) || (!CurrentCell.IsInMoveTo && IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex)))
			{
				return;
			}
			isDeactivated = false;
			if (!inBinderCurrentPositionChanged && (!CurrentCell.IsInMoveTo || leaveRow || binder.RecordDiffersAtRowIndex(CurrentCell.MoveFromRowIndex, CurrentCell.MoveToRowIndex)))
			{
				RefreshRange(GridRangeInfo.Row(CurrentCell.RowIndex));
				binder.RaiseCurrentPositionChanged();
				if (!binder.InRowChanged && !base.IsMousePressed)
				{
					CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
				}
			}
			binder.ResetError();
			if (CurrentCell.HasCurrentCell && binder.IsFieldDirty(binder.ColIndexToField(CurrentCell.ColIndex)))
			{
				CurrentCell.IsModified = true;
			}
			if (leaveRow)
			{
				EndUpdate(update: true);
				leaveRow = false;
			}
		}
		finally
		{
			GridCurrentCell currentCell = CurrentCell;
			if (!IsCurrentCellUnboundCell() && binder.currentRecordState != null)
			{
				binder.SyncCurrentRecordState(binder.RowIndexToPosition(CurrentCell.RowIndex));
				GridHierarchyLevel gridHierarchyLevel = binder.levels[binder.currentRecordState.level] as GridHierarchyLevel;
				if (gridHierarchyLevel.headerTopRow != -1)
				{
					int row = gridHierarchyLevel.headerTopRow + binder.currentRecordState.row;
					GridRangeInfo gridRangeInfo = ((!HighlightCurrentColumnHeader) ? GridRangeInfo.Empty : GridRangeInfo.Cell(row, currentCell.ColIndex));
					if (!gridRangeInfo.Equals(markedHeaderRange))
					{
						Update();
						InvalidateRange(markedHeaderRange, GridRangeOptions.MergeCoveredCells);
						InvalidateRange(gridRangeInfo, GridRangeOptions.MergeCoveredCells);
						markedHeaderRange = gridRangeInfo;
					}
				}
			}
		}
	}

	protected override void OnCurrentCellStartEditing(CancelEventArgs e)
	{
		base.OnCurrentCellStartEditing(e);
		if (binder.IsFieldDirty(binder.ColIndexToField(CurrentCell.ColIndex)))
		{
			CurrentCell.IsModified = true;
		}
	}

	protected override void OnCurrentCellControlGotFocus(ControlEventArgs e)
	{
		if (CurrentCell.HasCurrentCell && !CurrentCell.IsInAcceptedChanges && CurrentCell.IsEditing && binder.IsFieldDirty(binder.ColIndexToField(CurrentCell.ColIndex)))
		{
			CurrentCell.IsModified = true;
		}
		base.OnCurrentCellControlGotFocus(e);
	}

	protected override void OnControlGotFocus()
	{
		if (CurrentCell.HasCurrentCell && !CurrentCell.IsInAcceptedChanges && CurrentCell.IsEditing && binder.IsFieldDirty(binder.ColIndexToField(CurrentCell.ColIndex)))
		{
			CurrentCell.IsModified = true;
		}
		base.OnControlGotFocus();
	}

	public override bool IsShowCurrentRow(int rowIndex)
	{
		if (CurrentCell.HasCurrentCell)
		{
			return !binder.RecordDiffersAtRowIndex(binder.CurrentRowIndex, rowIndex);
		}
		return false;
	}

	internal bool IsCurrentCellUnboundCell()
	{
		if (CurrentCell.HasCurrentCell)
		{
			return IsCurrentCellUnboundCell(CurrentCell.RowIndex, CurrentCell.ColIndex);
		}
		return false;
	}

	internal bool IsCurrentCellUnboundCell(int rowIndex, int colIndex)
	{
		if (rowIndex <= base.Model.Rows.HeaderCount || colIndex <= base.Model.Cols.HeaderCount)
		{
			return true;
		}
		int num = binder.ColIndexToField(colIndex);
		if (num == -1)
		{
			return true;
		}
		int position = binder.RowIndexToPosition(rowIndex);
		GridBoundRecordState recordStateAtPosition = binder.GetRecordStateAtPosition(position);
		GridHierarchyLevel gridHierarchyLevel = binder.levels[recordStateAtPosition.level] as GridHierarchyLevel;
		num = gridHierarchyLevel.RowFieldToField(recordStateAtPosition.row, num);
		GridBoundColumnsCollection internalColumns = gridHierarchyLevel.InternalColumns;
		if (num < internalColumns.Count && internalColumns[num] != null)
		{
			return internalColumns[num].PropertyDescriptor == null;
		}
		return true;
	}

	protected override void OnCurrentCellChanging(CancelEventArgs e)
	{
		base.OnCurrentCellChanging(e);
		if (!IsCurrentCellUnboundCell() && !e.Cancel)
		{
			if (!binder.AllowEdit || base.Model.ReadOnly || base.Model[CurrentCell.RowIndex, CurrentCell.ColIndex].ReadOnly)
			{
				e.Cancel = true;
			}
			else
			{
				e.Cancel = !BeginEdit();
			}
		}
	}

	protected override void OnCurrentCellChanged(EventArgs e)
	{
		base.OnCurrentCellChanged(e);
		if (!IsCurrentCellUnboundCell() && CurrentCell.IsModified && !binder.IsEditing)
		{
			BeginEdit();
		}
	}

	protected override void OnCellDoubleClick(GridCellClickEventArgs e)
	{
		base.OnCellDoubleClick(e);
		if (!e.Cancel && (e.RowIndex <= base.Model.Rows.HeaderCount || e.ColIndex <= base.Model.Cols.HeaderCount) && binder.sortBehavior == GridSortBehavior.DoubleClick && e.ColIndex > base.Model.Cols.HeaderCount)
		{
			if (e.RowIndex == 0)
			{
				SortColumn(e.ColIndex);
				e.Cancel = true;
			}
			else if (e.RowIndex < binder.RootHierarchyLevel.RowCountPerRecord)
			{
				int fieldNum = binder.ColIndexToField(e.ColIndex);
				int fieldNum2 = binder.RootHierarchyLevel.RowFieldToField(e.RowIndex, fieldNum);
				SortField(fieldNum2);
				e.Cancel = true;
			}
		}
	}

	public virtual void SortColumn(int colIndex)
	{
		SortField(binder.ColIndexToField(colIndex));
	}

	private void SortField(int fieldNum)
	{
		bool hasCurrentCell = CurrentCell.HasCurrentCell;
		int colIndex = CurrentCell.ColIndex;
		BeginUpdate();
		try
		{
			if (CommitChanges())
			{
				CollapseAll();
				binder.Sort(fieldNum);
				base.Selections.Clear();
				Refresh();
				if (hasCurrentCell)
				{
					CurrentCell.MoveTo(binder.CurrentRowIndex, colIndex);
				}
			}
		}
		finally
		{
			EndUpdate();
		}
	}

	public bool CommitChanges()
	{
		CancelEventArgs e = new CancelEventArgs();
		OnValidating(e);
		OnValidated(EventArgs.Empty);
		return !e.Cancel;
	}

	protected override void OnCellClick(GridCellClickEventArgs e)
	{
		base.OnCellClick(e);
		if (!e.Cancel && e.RowIndex <= base.Model.Rows.HeaderCount && binder.sortBehavior == GridSortBehavior.SingleClick && e.ColIndex > base.Model.Cols.HeaderCount)
		{
			if (e.RowIndex == 0)
			{
				SortColumn(e.ColIndex);
			}
			else if (e.RowIndex < binder.RootHierarchyLevel.RowCountPerRecord)
			{
				int fieldNum = binder.ColIndexToField(e.ColIndex);
				int fieldNum2 = binder.RootHierarchyLevel.RowFieldToField(e.RowIndex, fieldNum);
				SortField(fieldNum2);
			}
		}
	}

	protected override void OnCellButtonClicked(GridCellButtonClickedEventArgs e)
	{
		base.OnCellButtonClicked(e);
		int colIndex = e.ColIndex;
		int rowIndex = e.RowIndex;
		if (!e.Cancel && colIndex == 1 && binder.levels.Count > 1)
		{
			if (IsExpandedAtRowIndex(rowIndex))
			{
				MoveToRow(rowIndex, colIndex + 1);
				CollapseAtRowIndex(rowIndex);
			}
			else
			{
				MoveToRow(rowIndex, colIndex + 1);
				ExpandAtRowIndex(rowIndex);
			}
		}
	}

	private void MoveToRow(int rowIndex, int colIndex)
	{
		GetNextCurrentCellPosition(GridDirectionType.Right, ref rowIndex, ref colIndex);
		CurrentCell.MoveTo(rowIndex, colIndex);
		InvalidateRange(GridRangeInfo.Row(rowIndex), GridRangeOptions.MergeCoveredCells);
	}

	public bool IsExpandedAtRowIndex(int rowIndex)
	{
		int position = binder.RowIndexToPosition(rowIndex);
		return binder.IsExpanded(position);
	}

	public void CollapseAtRowIndex(int rowIndex)
	{
		int num = binder.RowIndexToPosition(rowIndex);
		GridRowEventArgs e = new GridRowEventArgs(rowIndex);
		if (binder.GetRecordStateAtPosition(num).hasChildList)
		{
			OnRowCollapsing(e);
			if (!e.Cancel)
			{
				binder.CollapseRecord(num);
				OnRowCollapsed(e);
			}
		}
	}

	public void ExpandAtRowIndex(int rowIndex)
	{
		int num = binder.RowIndexToPosition(rowIndex);
		GridRowEventArgs e = new GridRowEventArgs(rowIndex);
		if (binder.GetRecordStateAtPosition(num).hasChildList)
		{
			OnRowExpanding(e);
			if (!e.Cancel)
			{
				binder.ExpandRecord(num);
				OnRowExpanded(e);
			}
		}
	}

	public void ExpandAll()
	{
		GridModel gridModel = base.Model;
		gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		binder.CancelEdit();
		if (gridModel.ActiveGridView != null)
		{
			gridModel.ActiveGridView.CurrentCell.Deactivate(discardChanges: true);
		}
		OperationFeedback operationFeedback = new OperationFeedback(gridModel);
		operationFeedback.Description = "Expand all records";
		operationFeedback.AllowCancel = true;
		operationFeedback.AllowRollback = false;
		try
		{
			int num = binder.RecordCount * binder.RootHierarchyLevel.rowCount;
			int num2 = 0;
			int num3 = 0;
			float num4 = 0f;
			int num5 = 0;
			while (num5 < num + binder.expRecordCount)
			{
				GridBoundRecordState recordStateAtPosition = binder.GetRecordStateAtPosition(num5);
				if (recordStateAtPosition.row > 0)
				{
					num5++;
					continue;
				}
				ExpandAtRowIndex(Binder.PositionToRowIndex(num5));
				num5++;
				if (operationFeedback.ShouldShowFeedback)
				{
					if (recordStateAtPosition.level == 0)
					{
						num4 = (float)num2 * 100f / (float)num;
						operationFeedback.PercentComplete = Math.Min(100, (int)num4);
						num2++;
						num3 = 0;
					}
					else if (recordStateAtPosition.level == 1 && num < 25)
					{
						int num6 = ((recordStateAtPosition.table != null) ? recordStateAtPosition.table.Count : 0);
						float num7 = (float)num3 * 100f / (float)(num6 * num);
						operationFeedback.PercentComplete = Math.Min(100, (int)(num4 + num7));
						num3++;
					}
				}
				if (!operationFeedback.ShouldCancel)
				{
					continue;
				}
				break;
			}
		}
		finally
		{
			operationFeedback.Close();
			gridModel.EndUpdate(update: true);
		}
	}

	public void CollapseAll()
	{
		GridModel gridModel = base.Model;
		gridModel.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		if (gridModel.ActiveGridView != null)
		{
			gridModel.ActiveGridView.CurrentCell.Deactivate(discardChanges: true);
		}
		OperationFeedback operationFeedback = new OperationFeedback(gridModel);
		operationFeedback.Description = "Collapse all records";
		operationFeedback.AllowCancel = true;
		operationFeedback.AllowRollback = false;
		try
		{
			int num = binder.RecordCount * binder.RootHierarchyLevel.rowCount;
			for (int i = 0; i < num; i++)
			{
				CollapseAtRowIndex(Binder.PositionToRowIndex(i));
				if (operationFeedback.ShouldShowFeedback)
				{
					operationFeedback.PercentComplete = Math.Min(100, i * 100 / num);
				}
				if (operationFeedback.ShouldCancel)
				{
					break;
				}
			}
		}
		finally
		{
			operationFeedback.Close();
			gridModel.EndUpdate(update: true);
		}
	}

	public override void OnCurrentCellKeyDown(KeyEventArgs e)
	{
		HandleBoundCurrentCellKeyDown(e);
		base.OnCurrentCellKeyDown(e);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		HandleBoundCurrentCellKeyDown(e);
		base.OnKeyDown(e);
	}

	[DocumentationExclude]
	protected virtual void HandleBoundCurrentCellKeyDown(KeyEventArgs e)
	{
		if (!base.Capture && e.KeyCode == Keys.Escape && base.WantEscapeKey)
		{
			CancelUpdate();
			BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			try
			{
				CancelCurrent();
				base.Model.Selections.Clear(raiseEvents: true);
				base.Model.ResetVolatileData();
				InvalidateRange(GridRangeInfo.Row(CurrentCell.RowIndex), GridRangeOptions.MergeCoveredCells);
				e.Handled = true;
				return;
			}
			finally
			{
				EndUpdate();
				Focus();
				FixCurrentCellGotFocus();
			}
		}
		if (e.KeyCode != Keys.Delete)
		{
			return;
		}
		GridRangeInfo activeRange = base.Selections.Ranges.ActiveRange;
		if (activeRange.IsRows || activeRange.IsTable)
		{
			if (base.Model.Options.ListBoxSelectionMode == SelectionMode.None || !CurrentCell.IsEditing || (base.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) == 0)
			{
				if (activeRange.IsRows)
				{
					DeleteRecordsAtRowIndex(activeRange.Top, activeRange.Bottom);
				}
				else if (activeRange.IsTable)
				{
					DeleteRecordsAtRowIndex(Binder.ListManagerPositionToRowIndex(0), Binder.ListManagerPositionToRowIndex(Binder.RecordCount - 1));
				}
				e.Handled = true;
			}
		}
		else
		{
			if (!ShouldDeleteKeyClearCells())
			{
				return;
			}
			bool directSaveCellInfo = binder.DirectSaveCellInfo;
			try
			{
				bool flag = base.Model.SelectedRanges.Count > 1 || base.Model.SelectedRanges.ActiveRange.Height > 1;
				if (flag)
				{
					base.Model.ConfirmChanges();
					binder.EndEdit();
					binder.DirectSaveCellInfo = flag;
				}
				base.Model.ClearCells(base.Model.SelectedRanges, clearStyle: false);
			}
			finally
			{
				binder.DirectSaveCellInfo = directSaveCellInfo;
			}
			e.Handled = true;
		}
	}

	[DocumentationExclude]
	protected virtual bool ShouldDeleteKeyClearCells()
	{
		if (!base.Model.Options.ExcelLikeCurrentCell)
		{
			return base.Model.SelectedRanges.Count > 0;
		}
		if (base.Model.SelectedRanges.Count <= 1)
		{
			if (base.Model.SelectedRanges.Count == 1)
			{
				return !CurrentCell.RangeInfo.Contains(base.Model.SelectedRanges[0]);
			}
			return false;
		}
		return true;
	}

	public void DeleteRecordsAtRowIndex(int top, int bottom)
	{
		if (!binder.AllowRemove || base.Model.ReadOnly || !binder.EnableRemove)
		{
			return;
		}
		GridRowRangeEventArgs e = new GridRowRangeEventArgs(top, bottom);
		OnRowsDeleting(e);
		if (e.Cancel)
		{
			return;
		}
		int currentPosition = binder.CurrentPosition;
		base.Selections.Clear(raiseEvents: true);
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		try
		{
			bool flag = false;
			CancelCurrent();
			int num = binder.PositionToListManagerPosition(binder.RowIndexToPosition(top));
			int num2 = Math.Min((binder.listManager != null) ? (binder.listManager.Count - 1) : (binder.List.Count - 1), binder.PositionToListManagerPosition(binder.RowIndexToPosition(bottom)));
			if (num2 < 0)
			{
				return;
			}
			if (binder.IsEditing && num <= binder.CurrentPosition && num2 >= binder.CurrentPosition)
			{
				if (binder.IsAddNew)
				{
					flag = num2 == num;
					num2--;
				}
				binder.CancelEdit();
			}
			if (currentPosition >= num && currentPosition <= num2 && num > 0 && binder.BindToCurrencyManager)
			{
				binder.listManager.Position = num - 1;
			}
			if (!flag)
			{
				binder.RemoveRecords(num, num2);
			}
			base.Selections.Clear();
			CurrentCell.Reactivate();
		}
		finally
		{
			EndUpdate();
			FixCurrentCellGotFocus();
		}
		OnRowsDeleted(e);
	}

	private void CancelCurrent()
	{
		if (CurrentCell.HasCurrentCell)
		{
			if (!CurrentCell.IsModified)
			{
				binder.CancelEdit();
			}
			else
			{
				CurrentCell.RejectChanges();
			}
			CurrentCell.CancelEdit();
			if (!base.Updating)
			{
				FixCurrentCellGotFocus();
			}
		}
	}

	protected override void OnGridValidating(CancelEventArgs e)
	{
		if (e.Cancel || base.IsSplitterPaneClosing || e.Cancel || !binder.IsEditing)
		{
			return;
		}
		bool isModified = CurrentCell.IsModified;
		try
		{
			bool flag = false;
			base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
			flag = (e.Cancel = !CurrentCell.ConfirmChanges() || !EndEdit());
			base.Model.EndUpdate(!flag);
			if (flag)
			{
				RaiseValidateFailed(CurrentCell.ColIndex);
				if (CurrentCell.HasCurrentCell)
				{
					CurrentCell.IsModified = isModified;
				}
				e.Cancel = true;
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
			EndUpdate(update: true);
			CurrentCell.ErrorMessage = ex.Message;
			CurrentCell.Exception = ex;
			RaiseValidateFailed(CurrentCell.ColIndex);
		}
	}

	protected override void OnResizingColumns(GridResizingColumnsEventArgs e)
	{
		base.OnResizingColumns(e);
		if (!e.Cancel && e.Reason == GridResizeCellsReason.DoubleClick)
		{
			GridRangeInfo range = base.Selections.Ranges.GetRangesContaining(e.Columns).ActiveRange.UnionRange(e.Columns);
			base.Model.ColWidths.ResizeToFit(base.ViewLayout.VisibleCellsRange.IntersectRange(range), GridResizeToFitOptions.IncludeHeaders);
			e.Cancel = true;
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible && !base.Disposing && initCC && firstShown)
		{
			base.Model.ResetVolatileData();
			forceDataSource = true;
			if (binder.DataSource == null && _dataSource != null)
			{
				DataSource = _dataSource;
			}
			_dataSource = null;
			ResizeVisibleRowsToFit();
		}
		if (base.Visible)
		{
			firstShown = false;
		}
		base.OnVisibleChanged(e);
	}

	private void ResizeVisibleRowsToFit()
	{
		ResizeVisibleRowsToFit(force: false);
	}

	private void ResizeVisibleRowsToFit(bool force)
	{
		if (allowResizeToFit)
		{
			if (base.Updating)
			{
				resizeOnUpdatingChanged = true;
			}
			else
			{
				base.Model.ColWidths.ResizeToFit(GridRangeInfo.Rows(base.Model.Rows.HeaderCount + 1, base.ViewLayout.LastVisibleRow), GridResizeToFitOptions.IncludeHeaders);
			}
		}
	}

	protected override void OnUpdatingChanged(EventArgs e)
	{
		base.OnUpdatingChanged(e);
		if (resizeOnUpdatingChanged && allowResizeToFit)
		{
			resizeOnUpdatingChanged = false;
			base.Model.ColWidths.ResizeToFit(GridRangeInfo.Rows(base.Model.Rows.HeaderCount + 1, base.ViewLayout.LastVisibleRow), GridResizeToFitOptions.IncludeHeaders);
		}
		resizeOnUpdatingChanged = false;
	}

	public bool IsMarkedHeader(int rowIndex, int colIndex)
	{
		return markedHeaderRange.Contains(GridRangeInfo.Cell(rowIndex, colIndex));
	}

	protected override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		base.OnPrepareViewStyleInfo(e);
		if (!e.Cancel && !CurrentCell.StaticDrawing && !base.PrintingMode && IsMarkedHeader(e.RowIndex, e.ColIndex))
		{
			e.Style.BackColor = SystemColors.Highlight;
			e.Style.TextColor = SystemColors.HighlightText;
		}
	}

	private bool ShouldSerializeBaseStylesMap()
	{
		return BaseStylesMap.Modified;
	}

	public void ResetBaseStylesMap()
	{
		if (!BaseStylesMap.InCollectionEditor)
		{
			Binder.ResetBaseStyles();
			Refresh();
		}
	}

	public void ResetAlphaBlendSelectionColor()
	{
		AlphaBlendSelectionColor = SystemColors.Highlight;
	}

	private bool ShouldSerializeAlphaBlendSelectionColor()
	{
		if (base.Model.Options.AlphaBlendSelectionColor != Color.FromArgb(64, SystemColors.Highlight))
		{
			return (base.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) != 0;
		}
		return false;
	}

	private bool ShouldSerializeFont()
	{
		return TableStyle.HasFont;
	}

	private bool ShouldSerializeTableStyle()
	{
		return !TableStyle.IsEmpty;
	}

	public void ResetTableStyle()
	{
		TableStyle = new GridStyleInfo();
		Refresh();
	}

	private bool ShouldSerializeProperties()
	{
		return base.Model.Properties.Modified;
	}

	public void ResetProperties()
	{
		base.Model.Properties = new GridProperties();
	}

	public int NameToColIndex(string name)
	{
		int num = binder.NameToField(name);
		if (num != -1)
		{
			return binder.FieldToColIndex(num);
		}
		return -1;
	}

	internal GridDataBoundGridRecordAccessibleObject CreateRecordAccessibilityInstance(int index)
	{
		return new GridDataBoundGridRecordAccessibleObject(this, index);
	}

	internal GridDataBoundGridFieldHeaderAccessibleObject CreateFieldHeaderAccessibilityInstance(int index)
	{
		return new GridDataBoundGridFieldHeaderAccessibleObject(this, index);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		if (base.AccessibilityEnabled)
		{
			return new GridDataBoundGridAccessibleObject(this);
		}
		return base.CreateAccessibilityInstance();
	}
}
