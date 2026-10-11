using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridModelOptions : IDisposable, ISerializable, IDeserializationCallback
{
	internal GridModel gridModel;

	private GridControllerOptions controllerOptions = GridControllerOptions.All;

	private GridDataObjectConsumerOptions dataObjectConsumerOptions = GridDataObjectConsumerOptions.All;

	private GridBorderStyle defaultGridBorderStyle = GridBorderStyle.Dotted;

	private GridResizeCellsBehavior resizeColWidthOptions = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds;

	private GridResizeCellsBehavior resizeRowHeightOptions = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds;

	private bool allowDragMoveCols = true;

	private bool allowDragMoveRows = true;

	private GridSelectionFlags allowSelection = GridSelectionFlags.Any;

	internal int dragDropDropTargetFlags;

	private GridFloatCellsMode floatCellsMode;

	private GridMergeCellsMode mergeCellsMode;

	private MouseButtons selectCellsMouseButtonsMask = MouseButtons.Left | MouseButtons.Right | MouseButtons.Middle;

	private MouseButtons dragSelectCellsMouseButtonsMask = MouseButtons.Left;

	private GridRefreshCurrentCellBehavior refreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshCell;

	private GridWrapCellBehavior wrapCellBehavior;

	private bool mulitExtendedArrowKeySelect = true;

	private GridScrollCurrentCellReason allowScrollCurrentCellInView = GridScrollCurrentCellReason.Any;

	private bool useRightToLeftCompatibleTextBox;

	private bool highlightFrozenLine = true;

	private bool office2007ScrollBars;

	private Office2007ColorScheme office2007ScrollBarsColorScheme;

	private IVisualStylesDrawing gridVisualStylesDrawing;

	private GridVisualStyles gridVisualStyles;

	private int alphaBlendValue = -1;

	private Color alphaBlendSelectionColor = SystemColors.Highlight;

	private SelectionMode listboxMode;

	private bool verticalThumbTrack;

	private bool horizontalThumbTrack;

	private bool verticalScrollTips;

	private bool horizontalScrollTips;

	private bool excelLikeCurrentCell = true;

	private GridClickedOnDisabledCellBehavior clickedOnDisabledCellBehavior;

	private bool excelLikeSelectionFrame = true;

	private GridDirectionType enterKeyBehavior = GridDirectionType.Right;

	private bool numberedRowHeaders = true;

	private bool numberedColHeaders = true;

	private bool transparentBackground;

	private int minResizeRowSize;

	private int minResizeColSize;

	internal GridCellActivateAction activateCurrentCellBehavior = GridCellActivateAction.ClickOnCell;

	private bool smoothControlResize = true;

	private bool scrollFrozenLikeExcel = true;

	private bool syncCurrentCell;

	private GridDrawOrder drawOrder;

	private GridShowCurrentCellBorder hideCurrentCell = GridShowCurrentCellBorder.WhenGridActive;

	private bool displayEmptyRows;

	private bool displayEmptyColumns;

	[DefaultValue(-1)]
	[Category("Appearance")]
	[Browsable(true)]
	[Description("Specifies an alphablend that should be used whenever a style or color setting in the grid has no alpha value specified.")]
	public int AlphaBlendValue
	{
		get
		{
			return alphaBlendValue;
		}
		set
		{
			if (alphaBlendValue != value)
			{
				alphaBlendValue = value;
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(GridFloatCellsMode.None)]
	[Browsable(true)]
	[Description("Enables and specifies floating cells behavior for the grid.")]
	[Category("Behavior")]
	public GridFloatCellsMode FloatCellsMode
	{
		get
		{
			return floatCellsMode;
		}
		set
		{
			if (value != FloatCellsMode)
			{
				floatCellsMode = value;
				OnFloatCellsModeChanged(EventArgs.Empty);
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Enables and specifies merge cells behavior for the grid.")]
	[DefaultValue(GridMergeCellsMode.None)]
	[Category("Behavior")]
	[Browsable(true)]
	public GridMergeCellsMode MergeCellsMode
	{
		get
		{
			return mergeCellsMode;
		}
		set
		{
			if (value != MergeCellsMode)
			{
				mergeCellsMode = value;
				OnMergeCellsModeChanged(EventArgs.Empty);
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Description("Specifies the border style to be used as default for cell borders.")]
	[Category("Appearance")]
	public GridBorderStyle DefaultGridBorderStyle
	{
		get
		{
			return defaultGridBorderStyle;
		}
		set
		{
			defaultGridBorderStyle = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Appearance")]
	[DefaultValue(true)]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Specifies the border style to be used as default for cell borders.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool HighlightFrozenLine
	{
		get
		{
			return highlightFrozenLine;
		}
		set
		{
			highlightFrozenLine = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Enables or disables various options for using the grid as an OLE Drop target.")]
	[Category("Behavior")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int DragDropDropTargetFlags
	{
		get
		{
			return dragDropDropTargetFlags;
		}
		set
		{
			dragDropDropTargetFlags = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Behavior-Mouse")]
	[DefaultValue(GridControllerOptions.All)]
	[Description("Specifies which mouse controllers should be enabled for the grid.")]
	public GridControllerOptions ControllerOptions
	{
		get
		{
			return controllerOptions;
		}
		set
		{
			if (controllerOptions != value)
			{
				controllerOptions = value;
				OnControllerOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Controls clipboard interchange format. Can be plain text and / or fully formatted with styles.")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridDataObjectConsumerOptions.All)]
	[Category("Clipboard")]
	public GridDataObjectConsumerOptions DataObjectConsumerOptions
	{
		get
		{
			return dataObjectConsumerOptions;
		}
		set
		{
			if (dataObjectConsumerOptions != value)
			{
				dataObjectConsumerOptions = value;
				OnDataObjectConsumerOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Browsable(true)]
	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Description("Defines behavior for resizing rows.")]
	[Category("Behavior-Resizing")]
	public GridResizeCellsBehavior ResizeRowsBehavior
	{
		get
		{
			return resizeRowHeightOptions;
		}
		set
		{
			resizeRowHeightOptions = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Description("Defines behavior for resizing columns.")]
	[Category("Behavior-Resizing")]
	public GridResizeCellsBehavior ResizeColsBehavior
	{
		get
		{
			return resizeColWidthOptions;
		}
		set
		{
			resizeColWidthOptions = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Allow the user to drag selected columns by clicking on the column header.")]
	[Category("Behavior-DragDrop")]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool AllowDragSelectedCols
	{
		get
		{
			return allowDragMoveCols;
		}
		set
		{
			allowDragMoveCols = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Behavior-DragDrop")]
	[DefaultValue(false)]
	[Description("Controls allowing the user to drag selected rows by clicking on the row header.")]
	[Browsable(true)]
	public bool AllowDragSelectedRows
	{
		get
		{
			return allowDragMoveRows;
		}
		set
		{
			allowDragMoveRows = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(MouseButtons.Left)]
	[Category("Behavior-DragDrop")]
	[Browsable(true)]
	[Description("Defines which mouse buttons can be used for dragging selected rows or columns.")]
	public MouseButtons DragSelectedCellsMouseButtonsMask
	{
		get
		{
			return dragSelectCellsMouseButtonsMask;
		}
		set
		{
			dragSelectCellsMouseButtonsMask = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[DefaultValue(GridSelectionFlags.Any)]
	[Category("Behavior-Selection")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Description("Defines selection behavior of the grid.")]
	public GridSelectionFlags AllowSelection
	{
		get
		{
			return allowSelection;
		}
		set
		{
			allowSelection = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines ScrollCurrentCellInView behavior of the grid.")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridScrollCurrentCellReason.Any)]
	[Browsable(true)]
	[Category("Behavior-ScrollCurrentCellInView")]
	public GridScrollCurrentCellReason AllowScrollCurrentCellInView
	{
		get
		{
			return allowScrollCurrentCellInView;
		}
		set
		{
			allowScrollCurrentCellInView = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines which mouse buttons can be used for selecting cells.")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(MouseButtons.Left | MouseButtons.Right | MouseButtons.Middle)]
	[Browsable(true)]
	[Category("Behavior-Selection")]
	public MouseButtons SelectCellsMouseButtonsMask
	{
		get
		{
			return selectCellsMouseButtonsMask;
		}
		set
		{
			selectCellsMouseButtonsMask = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Appearance")]
	[Description("Specifies the color for alpha blended cell selections.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public Color AlphaBlendSelectionColor
	{
		get
		{
			if (alphaBlendSelectionColor.A == byte.MaxValue)
			{
				return Color.FromArgb(64, alphaBlendSelectionColor);
			}
			return alphaBlendSelectionColor;
		}
		set
		{
			alphaBlendSelectionColor = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(SelectionMode.None)]
	[Description("Grid can emulated list boxes. In such mode, indicates if the list box is to be single-select, multi-select, or unselectable.")]
	[Category("Behavior")]
	public SelectionMode ListBoxSelectionMode
	{
		get
		{
			return listboxMode;
		}
		set
		{
			if (listboxMode == value)
			{
				return;
			}
			listboxMode = value;
			if (gridModel != null)
			{
				gridModel.SelectedRanges.Clear();
				if (listboxMode != SelectionMode.None && gridModel.ActiveGridView != null && gridModel.ActiveGridView.CurrentCell.HasCurrentCell)
				{
					gridModel.Selections.Add(GridRangeInfo.Row(gridModel.ActiveGridView.CurrentCell.RowIndex));
				}
			}
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool MulitExtendedArrowKeySelect
	{
		get
		{
			return mulitExtendedArrowKeySelect;
		}
		set
		{
			mulitExtendedArrowKeySelect = value;
		}
	}

	[Category("Excel-Emulation")]
	[Browsable(true)]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines Excel-like current cell behavior. When the user moves the current cell out of a selected range, the range will be cleared.")]
	public bool ExcelLikeCurrentCell
	{
		get
		{
			return excelLikeCurrentCell;
		}
		set
		{
			excelLikeCurrentCell = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(GridClickedOnDisabledCellBehavior.Default)]
	[Description("Defines Excel-like current cell behavior. When the user clicks on a cell out of a selected range for which .Enabled has been set to false.")]
	[Category("Excel-Emulation")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public GridClickedOnDisabledCellBehavior ClickedOnDisabledCellBehavior
	{
		get
		{
			return clickedOnDisabledCellBehavior;
		}
		set
		{
			clickedOnDisabledCellBehavior = value;
		}
	}

	[Browsable(true)]
	[Category("Excel-Emulation")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies whether the active selection should be outlined with a selection frame.")]
	public bool ExcelLikeSelectionFrame
	{
		get
		{
			return excelLikeSelectionFrame;
		}
		set
		{
			excelLikeSelectionFrame = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(GridCellActivateAction.ClickOnCell)]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("Specifies current cell activation behavior when moving the current cell or clicking inside a cell.")]
	public GridCellActivateAction ActivateCurrentCellBehavior
	{
		get
		{
			return activateCurrentCellBehavior;
		}
		set
		{
			activateCurrentCellBehavior = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(GridDirectionType.Right)]
	[Description("Controls what the grid does with the 'Enter' key.")]
	[Category("Behavior-Keyboard")]
	[Browsable(true)]
	public GridDirectionType EnterKeyBehavior
	{
		get
		{
			return enterKeyBehavior;
		}
		set
		{
			enterKeyBehavior = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines whether grid should erase and fill background of cells or only draw cell text.")]
	[Browsable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(false)]
	public bool TransparentBackground
	{
		get
		{
			return transparentBackground;
		}
		set
		{
			transparentBackground = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[Description("Toggle display of row numbers in row headers.")]
	[Category("Appearance")]
	public bool NumberedRowHeaders
	{
		get
		{
			return numberedRowHeaders;
		}
		set
		{
			numberedRowHeaders = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Toggle display of column ids (A, B, C, ...) in column headers.")]
	public bool NumberedColHeaders
	{
		get
		{
			return numberedColHeaders;
		}
		set
		{
			numberedColHeaders = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Obsolete("Use HorizontalThumbTrack and VerticalThumbTrack properties instead.")]
	[Browsable(false)]
	[DocumentationExclude]
	public bool AllowThumbTrack
	{
		get
		{
			return verticalThumbTrack;
		}
		set
		{
			verticalThumbTrack = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines whether the grid should scroll immediately when the user grabs a horizontal scrollbar thumb and drags it.")]
	[Browsable(true)]
	[Category("Scrolling")]
	public bool HorizontalThumbTrack
	{
		get
		{
			return horizontalThumbTrack;
		}
		set
		{
			horizontalThumbTrack = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Specifies if the control should scroll while the user is dragging a vertical scrollbars thumb.")]
	[Browsable(true)]
	[Category("Scrolling")]
	public bool VerticalThumbTrack
	{
		get
		{
			return verticalThumbTrack;
		}
		set
		{
			verticalThumbTrack = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[Category("Scrolling")]
	[Description("Defines whether the grid should display Scroll Tips when the user grabs a horizontal scrollbar thumb and drags it.")]
	public bool HorizontalScrollTips
	{
		get
		{
			return horizontalScrollTips;
		}
		set
		{
			horizontalScrollTips = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Scrolling")]
	[Browsable(true)]
	[Description("Defines whether the grid should display Scroll Tips when the user grabs a vertical scrollbar thumb and drags it.")]
	public bool VerticalScrollTips
	{
		get
		{
			return verticalScrollTips;
		}
		set
		{
			verticalScrollTips = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(0)]
	[Browsable(true)]
	[Category("Behavior-Resizing")]
	[Description("Defines the minimum row height when the user resizes a row with the mouse.")]
	public int MinResizeRowSize
	{
		get
		{
			return minResizeRowSize;
		}
		set
		{
			minResizeRowSize = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[Category("Behavior-Resizing")]
	[DefaultValue(0)]
	[Description("Defines the minimum column width when the user resizes a column with the mouse.")]
	public int MinResizeColSize
	{
		get
		{
			return minResizeColSize;
		}
		set
		{
			minResizeColSize = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines whether a grid should be completely refreshed when the user resizes the window or if only newly visible rows or columns should be redrawn.")]
	[DefaultValue(true)]
	[Browsable(true)]
	[Category("Behavior-Resizing")]
	public bool SmoothControlResize
	{
		get
		{
			return smoothControlResize;
		}
		set
		{
			smoothControlResize = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Scrolling")]
	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Defines scroll behavior when user moves current cell with arrow keys into frozen cells area.")]
	public bool ScrollFrozen
	{
		get
		{
			return scrollFrozenLikeExcel;
		}
		set
		{
			scrollFrozenLikeExcel = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(GridDrawOrder.Rows)]
	[Browsable(true)]
	[Category("Behavior-Render")]
	[Description("Defines the order how cells are loaded before the grid is displayed.")]
	public GridDrawOrder DrawOrder
	{
		get
		{
			return drawOrder;
		}
		set
		{
			drawOrder = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Defines when to show current cell frame or border.")]
	[Category("Appearance")]
	[DefaultValue(GridShowCurrentCellBorder.WhenGridActive)]
	[Browsable(true)]
	public GridShowCurrentCellBorder ShowCurrentCellBorderBehavior
	{
		get
		{
			return hideCurrentCell;
		}
		set
		{
			hideCurrentCell = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Category("Appearance")]
	[DefaultValue(GridRefreshCurrentCellBehavior.RefreshCell)]
	[Browsable(true)]
	[Description("Which cells to refresh when moving the current cell.")]
	public GridRefreshCurrentCellBehavior RefreshCurrentCellBehavior
	{
		get
		{
			return refreshCurrentCellBehavior;
		}
		set
		{
			refreshCurrentCellBehavior = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool ShouldSynchronizeCurrentCell
	{
		get
		{
			if (!excelLikeCurrentCell)
			{
				return syncCurrentCell;
			}
			return true;
		}
		set
		{
			syncCurrentCell = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	[Description("Show empty rows after the last row.")]
	[DocumentationExclude]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool DisplayEmptyRows
	{
		get
		{
			return displayEmptyRows;
		}
		set
		{
			displayEmptyRows = value;
		}
	}

	[DocumentationExclude]
	[Category("Appearance")]
	[Browsable(true)]
	[DefaultValue(false)]
	[Description("Show empty columns after the last column.")]
	public bool DisplayEmptyColumns
	{
		get
		{
			return displayEmptyColumns;
		}
		set
		{
			displayEmptyColumns = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	[Description("Controls what the grid does when at last column in a row.")]
	[Category("Behavior-Keyboard")]
	public bool WrapCell
	{
		get
		{
			return wrapCellBehavior != GridWrapCellBehavior.None;
		}
		set
		{
			if (value)
			{
				wrapCellBehavior = GridWrapCellBehavior.WrapRow;
			}
			else
			{
				wrapCellBehavior = GridWrapCellBehavior.None;
			}
		}
	}

	[Browsable(true)]
	[Category("Behavior-Keyboard")]
	[DefaultValue(GridWrapCellBehavior.None)]
	[Description("Controls what the grid does when at last column in a row.")]
	public GridWrapCellBehavior WrapCellBehavior
	{
		get
		{
			return wrapCellBehavior;
		}
		set
		{
			wrapCellBehavior = value;
		}
	}

	[Category("Behavior-Keyboard")]
	[Browsable(true)]
	[DefaultValue(false)]
	[Description("Controls the kind of textbox control that is created for TextBox cells. In general the original text box behaves better than the default richtext box with Hebrew and arabic languages")]
	public bool UseRightToLeftCompatibleTextBox
	{
		get
		{
			return useRightToLeftCompatibleTextBox;
		}
		set
		{
			useRightToLeftCompatibleTextBox = value;
			OnOptionsChanged(EventArgs.Empty);
		}
	}

	[Description("Specifies look and feel skins for the Grid")]
	[DefaultValue(GridVisualStyles.SystemTheme)]
	[Category("Appearance")]
	[Browsable(true)]
	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return gridVisualStyles;
		}
		set
		{
			if (gridVisualStyles != value)
			{
				gridVisualStyles = value;
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[Description("Toggle between standard and Office2007 scrollbars.")]
	[DefaultValue(false)]
	public bool Office2007ScrollBars
	{
		get
		{
			return office2007ScrollBars;
		}
		set
		{
			if (office2007ScrollBars != value)
			{
				office2007ScrollBars = value;
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(true)]
	[Description("Office 2007 style scrollbars.")]
	[Category("Appearance")]
	[DefaultValue(Office2007ColorScheme.Blue)]
	public Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return office2007ScrollBarsColorScheme;
		}
		set
		{
			if (office2007ScrollBarsColorScheme != value)
			{
				office2007ScrollBarsColorScheme = value;
				OnOptionsChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the VisualStylesDrawing object")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IVisualStylesDrawing GridVisualStylesDrawing
	{
		get
		{
			if (gridVisualStylesDrawing == null || gridVisualStylesDrawing.VisualStyle != GridVisualStyles)
			{
				switch (GridVisualStyles)
				{
				case GridVisualStyles.SystemTheme:
					gridVisualStylesDrawing = new GridVisualStylesSystemTheme(GridVisualStyles);
					break;
				case GridVisualStyles.Office2003:
					gridVisualStylesDrawing = new GridVisualStylesOffice2003(GridVisualStyles);
					break;
				case GridVisualStyles.Office2007Blue:
					gridVisualStylesDrawing = new GridVisualStylesOffice2007Blue(GridVisualStyles);
					break;
				case GridVisualStyles.Office2007Black:
					gridVisualStylesDrawing = new GridVisualStylesOffice2007Black(GridVisualStyles);
					break;
				case GridVisualStyles.Office2007Silver:
					gridVisualStylesDrawing = new GridVisualStylesOffice2007Silver(GridVisualStyles);
					break;
				case GridVisualStyles.Custom:
					gridVisualStyles = GridVisualStyles.SystemTheme;
					gridVisualStylesDrawing = new GridVisualStylesSystemTheme(GridVisualStyles.SystemTheme);
					break;
				}
			}
			return gridVisualStylesDrawing;
		}
		set
		{
			if (gridVisualStylesDrawing != null)
			{
				if (gridVisualStylesDrawing is IDisposable)
				{
					((IDisposable)gridVisualStylesDrawing).Dispose();
				}
				gridVisualStylesDrawing = null;
			}
			gridVisualStylesDrawing = value;
		}
	}

	public event EventHandler ControllerOptionsChanged;

	public event EventHandler DataObjectConsumerOptionsChanged;

	[Description(" Occurs when the MergeCellsMode setting is changed.")]
	[Category("Behavior")]
	public event EventHandler MergeCellsModeChanged;

	[Description(" Occurs when the FloatCellsMode setting is changed.")]
	[Category("Behavior")]
	public event EventHandler FloatCellsModeChanged;

	[Category("Behavior")]
	[Description("Occurs when settings in any options have changed.")]
	public event EventHandler OptionsChanged;

	public void Dispose()
	{
		gridModel = null;
		if (gridVisualStylesDrawing != null)
		{
			if (gridVisualStylesDrawing is IDisposable)
			{
				((IDisposable)gridVisualStylesDrawing).Dispose();
			}
			gridVisualStylesDrawing = null;
		}
		GC.SuppressFinalize(this);
	}

	public GridModelOptions()
	{
	}

	protected GridModelOptions(SerializationInfo info, StreamingContext context)
	{
		int num = 0;
		try
		{
			num = info.GetInt32("Version");
		}
		catch (SerializationException ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		if (num == 0)
		{
			defaultGridBorderStyle = (GridBorderStyle)info.GetValue("DefaultGridBorderStyle", typeof(GridBorderStyle));
			excelLikeCurrentCell = info.GetBoolean("ExcelLikeCurrentCell");
			excelLikeSelectionFrame = info.GetBoolean("ExcelLikeSelectionFrame");
			enterKeyBehavior = (GridDirectionType)info.GetValue("EnterKeyBehavior", typeof(GridDirectionType));
			numberedRowHeaders = info.GetBoolean("NumberedRowHeaders");
			numberedColHeaders = info.GetBoolean("NumberedColHeaders");
			transparentBackground = info.GetBoolean("TransparentBackground");
			syncCurrentCell = info.GetBoolean("SyncCurrentCell");
			floatCellsMode = (GridFloatCellsMode)info.GetValue("FloatCellsMode", typeof(GridFloatCellsMode));
			alphaBlendSelectionColor = (Color)info.GetValue("AlphaBlendSelectionColor", typeof(Color));
			return;
		}
		floatCellsMode = (GridFloatCellsMode)info.GetValue("FloatCellsMode", typeof(GridFloatCellsMode));
		defaultGridBorderStyle = (GridBorderStyle)info.GetValue("DefaultGridBorderStyle", typeof(GridBorderStyle));
		dragDropDropTargetFlags = info.GetInt32("DragDropDropTargetFlags");
		controllerOptions = (GridControllerOptions)info.GetValue("ControllerOptions", typeof(GridControllerOptions));
		dataObjectConsumerOptions = (GridDataObjectConsumerOptions)info.GetValue("DataObjectConsumerOptions", typeof(GridDataObjectConsumerOptions));
		resizeRowHeightOptions = (GridResizeCellsBehavior)info.GetValue("ResizeRowsBehavior", typeof(GridResizeCellsBehavior));
		resizeColWidthOptions = (GridResizeCellsBehavior)info.GetValue("ResizeColsBehavior", typeof(GridResizeCellsBehavior));
		allowDragMoveCols = info.GetBoolean("AllowDragSelectedCols");
		allowDragMoveRows = info.GetBoolean("AllowDragSelectedRows");
		dragSelectCellsMouseButtonsMask = (MouseButtons)info.GetValue("DragSelectedCellsMouseButtonsMask", typeof(MouseButtons));
		allowSelection = (GridSelectionFlags)info.GetValue("AllowSelection", typeof(GridSelectionFlags));
		selectCellsMouseButtonsMask = (MouseButtons)info.GetValue("SelectCellsMouseButtonsMask", typeof(MouseButtons));
		alphaBlendSelectionColor = (Color)info.GetValue("AlphaBlendSelectionColor", typeof(Color));
		listboxMode = (SelectionMode)info.GetValue("ListBoxSelectionMode", typeof(SelectionMode));
		excelLikeCurrentCell = info.GetBoolean("ExcelLikeCurrentCell");
		excelLikeSelectionFrame = info.GetBoolean("ExcelLikeSelectionFrame");
		activateCurrentCellBehavior = (GridCellActivateAction)info.GetValue("ActivateCurrentCellBehavior", typeof(GridCellActivateAction));
		enterKeyBehavior = (GridDirectionType)info.GetValue("EnterKeyBehavior", typeof(GridDirectionType));
		transparentBackground = info.GetBoolean("TransparentBackground");
		numberedRowHeaders = info.GetBoolean("NumberedRowHeaders");
		numberedColHeaders = info.GetBoolean("NumberedColHeaders");
		horizontalThumbTrack = info.GetBoolean("HorizontalThumbTrack");
		verticalThumbTrack = info.GetBoolean("VerticalThumbTrack");
		horizontalScrollTips = info.GetBoolean("HorizontalScrollTips");
		verticalScrollTips = info.GetBoolean("VerticalScrollTips");
		minResizeRowSize = info.GetInt32("MinResizeRowSize");
		minResizeColSize = info.GetInt32("MinResizeColSize");
		smoothControlResize = info.GetBoolean("SmoothControlResize");
		scrollFrozenLikeExcel = info.GetBoolean("ScrollFrozen");
		drawOrder = (GridDrawOrder)info.GetValue("DrawOrder", typeof(GridDrawOrder));
		hideCurrentCell = (GridShowCurrentCellBorder)info.GetValue("ShowCurrentCellBorderBehavior", typeof(GridShowCurrentCellBorder));
		syncCurrentCell = info.GetBoolean("SyncCurrentCell");
		if (num >= 2)
		{
			displayEmptyRows = info.GetBoolean("DisplayEmptyRows");
			displayEmptyColumns = info.GetBoolean("DisplayEmptyColumns");
			if (num < 4)
			{
				WrapCell = info.GetBoolean("WrapCell");
			}
		}
		if (num >= 3)
		{
			refreshCurrentCellBehavior = (GridRefreshCurrentCellBehavior)info.GetValue("RefreshCurrentCellBehavior", typeof(GridRefreshCurrentCellBehavior));
		}
		if (num >= 4)
		{
			wrapCellBehavior = (GridWrapCellBehavior)info.GetValue("WrapCellBehavior", typeof(GridWrapCellBehavior));
		}
		if (num >= 5)
		{
			mergeCellsMode = (GridMergeCellsMode)info.GetValue("MergeCellsMode", typeof(GridMergeCellsMode));
		}
		if (num >= 6)
		{
			alphaBlendValue = info.GetInt32("AlphaBlendValue");
		}
		if (num >= 7)
		{
			mulitExtendedArrowKeySelect = info.GetBoolean("MulitExtendedArrowKeySelect");
		}
		if (num >= 8)
		{
			allowScrollCurrentCellInView = (GridScrollCurrentCellReason)info.GetValue("AllowScrollCurrentCellInView", typeof(GridScrollCurrentCellReason));
		}
		if (num >= 9)
		{
			useRightToLeftCompatibleTextBox = info.GetBoolean("UseRightToLeftCompatibleTextBox");
		}
		if (num >= 10)
		{
			clickedOnDisabledCellBehavior = (GridClickedOnDisabledCellBehavior)info.GetValue("ClickedOnDisabledCellBehavior", typeof(GridClickedOnDisabledCellBehavior));
		}
		if (num >= 11)
		{
			highlightFrozenLine = info.GetBoolean("HighlightFrozenLine");
		}
		if (num >= 12)
		{
			gridVisualStyles = (GridVisualStyles)info.GetValue("GridVisualStyles", typeof(GridVisualStyles));
		}
		if (num >= 13)
		{
			office2007ScrollBars = (bool)info.GetValue("Office2007ScrollBars", typeof(bool));
			office2007ScrollBarsColorScheme = (Office2007ColorScheme)info.GetValue("office2007ScrollBarsColorScheme", typeof(Office2007ColorScheme));
		}
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Version", 13);
		info.AddValue("MergeCellsMode", mergeCellsMode);
		info.AddValue("FloatCellsMode", floatCellsMode);
		info.AddValue("DefaultGridBorderStyle", defaultGridBorderStyle);
		info.AddValue("DragDropDropTargetFlags", dragDropDropTargetFlags);
		info.AddValue("ControllerOptions", controllerOptions);
		info.AddValue("DataObjectConsumerOptions", dataObjectConsumerOptions);
		info.AddValue("ResizeRowsBehavior", resizeRowHeightOptions);
		info.AddValue("ResizeColsBehavior", resizeColWidthOptions);
		info.AddValue("AllowDragSelectedCols", allowDragMoveCols);
		info.AddValue("AllowDragSelectedRows", allowDragMoveRows);
		info.AddValue("DragSelectedCellsMouseButtonsMask", dragSelectCellsMouseButtonsMask);
		info.AddValue("AllowSelection", allowSelection);
		info.AddValue("SelectCellsMouseButtonsMask", selectCellsMouseButtonsMask);
		info.AddValue("AlphaBlendSelectionColor", alphaBlendSelectionColor);
		info.AddValue("ListBoxSelectionMode", listboxMode);
		info.AddValue("ExcelLikeCurrentCell", excelLikeCurrentCell);
		info.AddValue("ExcelLikeSelectionFrame", excelLikeSelectionFrame);
		info.AddValue("ActivateCurrentCellBehavior", activateCurrentCellBehavior);
		info.AddValue("EnterKeyBehavior", enterKeyBehavior);
		info.AddValue("TransparentBackground", transparentBackground);
		info.AddValue("NumberedRowHeaders", numberedRowHeaders);
		info.AddValue("NumberedColHeaders", numberedColHeaders);
		info.AddValue("HorizontalThumbTrack", horizontalThumbTrack);
		info.AddValue("VerticalThumbTrack", verticalThumbTrack);
		info.AddValue("HorizontalScrollTips", horizontalScrollTips);
		info.AddValue("VerticalScrollTips", verticalScrollTips);
		info.AddValue("MinResizeRowSize", minResizeRowSize);
		info.AddValue("MinResizeColSize", minResizeColSize);
		info.AddValue("SmoothControlResize", smoothControlResize);
		info.AddValue("ScrollFrozen", scrollFrozenLikeExcel);
		info.AddValue("DrawOrder", drawOrder);
		info.AddValue("ShowCurrentCellBorderBehavior", hideCurrentCell);
		info.AddValue("SyncCurrentCell", syncCurrentCell);
		info.AddValue("DisplayEmptyRows", displayEmptyRows);
		info.AddValue("DisplayEmptyColumns", displayEmptyColumns);
		info.AddValue("WrapCellBehavior", wrapCellBehavior);
		info.AddValue("RefreshCurrentCellBehavior", refreshCurrentCellBehavior);
		info.AddValue("AlphaBlendValue", alphaBlendValue);
		info.AddValue("MulitExtendedArrowKeySelect", mulitExtendedArrowKeySelect);
		info.AddValue("AllowScrollCurrentCellInView", allowScrollCurrentCellInView);
		info.AddValue("UseRightToLeftCompatibleTextBox", useRightToLeftCompatibleTextBox);
		info.AddValue("ClickedOnDisabledCellBehavior", clickedOnDisabledCellBehavior);
		info.AddValue("HighlightFrozenLine", highlightFrozenLine);
		info.AddValue("GridVisualStyles", gridVisualStyles);
		info.AddValue("Office2007ScrollBars", office2007ScrollBars);
		info.AddValue("office2007ScrollBarsColorScheme", office2007ScrollBarsColorScheme);
	}

	protected internal virtual void OnMergeCellsModeChanged(EventArgs e)
	{
		if (this.MergeCellsModeChanged != null)
		{
			this.MergeCellsModeChanged(this, e);
		}
	}

	protected internal virtual void OnFloatCellsModeChanged(EventArgs e)
	{
		if (this.FloatCellsModeChanged != null)
		{
			this.FloatCellsModeChanged(this, e);
		}
	}

	protected internal virtual void OnOptionsChanged(EventArgs e)
	{
		gridModel.gridLineBorder = null;
		gridModel.fixedLineBorder = null;
		if (this.OptionsChanged != null)
		{
			this.OptionsChanged(this, e);
		}
	}

	public void SetControllerOption(GridControllerOptions coption, bool value)
	{
		if (value)
		{
			ControllerOptions |= coption;
		}
		else
		{
			ControllerOptions &= ~coption;
		}
	}

	public bool GetControllerOption(GridControllerOptions coption)
	{
		return (ControllerOptions & coption) != 0;
	}

	protected internal virtual void OnControllerOptionsChanged(EventArgs e)
	{
		if (this.ControllerOptionsChanged != null)
		{
			this.ControllerOptionsChanged(this, e);
		}
	}

	public void SetDataObjectConsumerOption(GridDataObjectConsumerOptions coption, bool value)
	{
		if (value)
		{
			DataObjectConsumerOptions |= coption;
		}
		else
		{
			DataObjectConsumerOptions &= ~coption;
		}
	}

	public bool GetDataObjectConsumerOption(GridDataObjectConsumerOptions doption)
	{
		return (DataObjectConsumerOptions & doption) != 0;
	}

	protected internal virtual void OnDataObjectConsumerOptionsChanged(EventArgs e)
	{
		if (this.DataObjectConsumerOptionsChanged != null)
		{
			this.DataObjectConsumerOptionsChanged(this, e);
		}
	}
}
