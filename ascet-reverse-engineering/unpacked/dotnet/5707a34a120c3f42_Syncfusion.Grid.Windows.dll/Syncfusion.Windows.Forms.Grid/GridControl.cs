using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.IO;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Grid.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Designer(typeof(GridControlDesigner))]
[ToolboxItem(true)]
[Description("A cell-oriented grid.")]
[DefaultEvent("CellClick")]
[Docking(DockingBehavior.Ask)]
[ToolboxBitmap(typeof(GridControl), "ToolboxIcons.GridControl.bmp")]
public class GridControl : GridControlBaseImp, ISupportInitialize
{
	private GridSerializeCellsBehavior serializeCellsBehavior;

	private bool serializeCellsBehaviorModified;

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

	[AmbientValue(null)]
	[Description("The font used to display text in the grid.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.All)]
	public override Font Font
	{
		get
		{
			return TableStyle.GdipFont;
		}
		set
		{
			if (value != null)
			{
				GridFontInfo font = TableStyle.Font;
				font.Facename = value.FontFamily.Name;
				font.FontStyle = value.Style;
				font.Unit = value.Unit;
				font.Size = value.Size;
			}
		}
	}

	[DefaultValue(null)]
	[Localizable(true)]
	[Description("The background image used for the grid.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
			if (!GetStyle(ControlStyles.SupportsTransparentBackColor) && value != null)
			{
				base.Model.Options.TransparentBackground = true;
			}
		}
	}

	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridControllerOptions.All)]
	[Description("Specifies which mouse controllers should be enabled for the grid.")]
	[RefreshProperties(RefreshProperties.All)]
	public GridControllerOptions ControllerOptions
	{
		get
		{
			return base.Model.Options.ControllerOptions;
		}
		set
		{
			base.Model.Options.ControllerOptions = value;
		}
	}

	[DefaultValue(GridDataObjectConsumerOptions.All)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Category("Grid")]
	[Description("Controls clipboard interchange format. Can be plain text and/or fully formatted with styles.")]
	public GridDataObjectConsumerOptions DataObjectConsumerOptions
	{
		get
		{
			return base.Model.Options.DataObjectConsumerOptions;
		}
		set
		{
			base.Model.Options.DataObjectConsumerOptions = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridControlBase ActiveGridView
	{
		get
		{
			return base.Model.ActiveGridView;
		}
		set
		{
			base.Model.ActiveGridView = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IDictionary UserData => base.Model.UserData;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override BeginUpdateOptions UpdateOptions => base.Model.UpdateOptions;

	[Category("Grid Contents")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
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
			base.Model.BaseStylesMap = value;
		}
	}

	[Category("Grid Contents")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public GridCellInfoCollection GridCells
	{
		get
		{
			base.Model.GridCells.control = this;
			return base.Model.GridCells;
		}
		set
		{
			base.Model.GridCells = value;
			base.Model.GridCells.control = this;
		}
	}

	[Category("Grid Contents")]
	[Description("Defines the collection of styles for certain ranges.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridRangeStyleCollection RangeStyles
	{
		get
		{
			base.Model.RangeStyles.control = this;
			return base.Model.RangeStyles;
		}
		set
		{
			base.Model.RangeStyles = value;
			if (value != null)
			{
				value.control = this;
			}
		}
	}

	[Category("Grid Contents")]
	[Description("Set row heights interactively.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridRowHeightCollection RowHeightEntries
	{
		get
		{
			return base.Model.RowHeightEntries;
		}
		set
		{
			base.Model.RowHeightEntries = value;
		}
	}

	[Description("Set columns widths interactively.")]
	[Category("Grid Contents")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridColWidthCollection ColWidthEntries
	{
		get
		{
			return base.Model.ColWidthEntries;
		}
		set
		{
			base.Model.ColWidthEntries = value;
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	public GridData Data
	{
		get
		{
			return base.Model.Data;
		}
		set
		{
			if (value != null)
			{
				base.Model.Data = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasData => base.Model.HasData;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsUntitled => base.Model.IsUntitled;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Modified
	{
		get
		{
			return base.Model.Modified;
		}
		set
		{
			base.Model.Modified = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string FileName
	{
		get
		{
			return base.Model.FileName;
		}
		set
		{
			base.Model.FileName = value;
		}
	}

	[Category("Grid Contents")]
	[XmlIgnore]
	[Description("Set row heights interactively.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowColSizeIndexer RowHeights
	{
		get
		{
			return base.Model.RowHeights;
		}
		set
		{
			if (value != null)
			{
				value.SetModelInt(base.Model);
				base.Model.SetRowHeightsInt(value);
				base.Model.Refresh();
			}
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	[Category("Grid Contents")]
	[Description("Set columns widths interactively.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowColSizeIndexer ColWidths
	{
		get
		{
			return base.Model.ColWidths;
		}
		set
		{
			if (value != null)
			{
				value.SetModelInt(base.Model);
				base.Model.SetColWidthsInt(value);
				base.Model.Refresh();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Hide rows interactively.")]
	[Browsable(false)]
	[Category("Grid Contents")]
	public GridModelHideRowColsIndexer HideRows
	{
		get
		{
			return base.Model.HideRows;
		}
		set
		{
			if (value != null)
			{
				value.SetModelInt(base.Model);
				base.Model.SetHideRowsInt(value);
				base.Model.Refresh();
			}
		}
	}

	[Browsable(false)]
	[Description("Hide columns interactively.")]
	[Category("Grid Contents")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelHideRowColsIndexer HideCols
	{
		get
		{
			return base.Model.HideCols;
		}
		set
		{
			if (value != null)
			{
				value.SetModelInt(base.Model);
				base.Model.SetHideColsInt(value);
				base.Model.Refresh();
			}
		}
	}

	[Category("Grid Contents")]
	[Description("Hide rows interactively.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridRowHiddenCollection RowHiddenEntries
	{
		get
		{
			return base.Model.RowHiddenEntries;
		}
		set
		{
			base.Model.RowHiddenEntries = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Grid Contents")]
	[Description("Hide columns interactively.")]
	[Browsable(true)]
	public GridColHiddenCollection ColHiddenEntries
	{
		get
		{
			return base.Model.ColHiddenEntries;
		}
		set
		{
			base.Model.ColHiddenEntries = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelCommandManager CommandStack => base.Model.CommandStack;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelRowColOperations Rows => base.Model.Rows;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelRowColOperations Cols => base.Model.Cols;

	[Description("Specifies the border style to be used as default for cell borders.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Grid")]
	[DefaultValue(GridBorderStyle.Dotted)]
	public GridBorderStyle DefaultGridBorderStyle
	{
		get
		{
			return base.Model.Options.DefaultGridBorderStyle;
		}
		set
		{
			base.Model.Options.DefaultGridBorderStyle = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Description("Controls the kind of textbox control that is created for TextBox cells. In general the original text box behaves better than the default richtext box with Hebrew and arabic languages")]
	[Category("Grid")]
	public bool UseRightToLeftCompatibleTextBox
	{
		get
		{
			return base.Model.Options.UseRightToLeftCompatibleTextBox;
		}
		set
		{
			base.Model.Options.UseRightToLeftCompatibleTextBox = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Specifies the border style to be used as default for cell borders.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance")]
	public bool HighlightFrozenLine
	{
		get
		{
			return base.Model.Options.HighlightFrozenLine;
		}
		set
		{
			base.Model.Options.HighlightFrozenLine = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool DiscardReadOnly
	{
		get
		{
			return base.Model.DiscardReadOnly;
		}
		set
		{
			base.Model.DiscardReadOnly = value;
		}
	}

	[Category("Grid Contents")]
	[Browsable(true)]
	[DefaultValue(false)]
	[Description("The Read-only state of the grid.")]
	public bool ReadOnly
	{
		get
		{
			return base.Model.ReadOnly;
		}
		set
		{
			base.Model.ReadOnly = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	[Description("Styles used by the columns in the grid. Column cells will inherit this style.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Grid Contents")]
	public GridModelColStylesIndexer ColStyles
	{
		get
		{
			return base.Model.ColStyles;
		}
		set
		{
		}
	}

	[Category("Grid Contents")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Styles used by the rows in the grid. Row cells will inherit this style.")]
	public GridModelRowStylesIndexer RowStyles => base.Model.RowStyles;

	[Browsable(false)]
	[Description("Individual cells in the grid will inherit attributes from the table style.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Grid Contents")]
	[RefreshProperties(RefreshProperties.All)]
	public GridStyleInfo TableStyle
	{
		get
		{
			return base.Model.TableStyle;
		}
		set
		{
			base.Model.TableStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCurrentCellInfo CurrentCellInfo
	{
		get
		{
			return base.Model.CurrentCellInfo;
		}
		set
		{
			base.Model.CurrentCellInfo = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrentCellInfo => base.Model.HasCurrentCellInfo;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCellRendererBase CurrentCellRenderer => base.Model.CurrentCellRenderer;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelCutPaste CutPaste => base.Model.CutPaste;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelStyleDataExchange DataExchange => base.Model.DataExchange;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelTextDataExchange TextDataExchange => base.Model.TextDataExchange;

	[Category("Grid Contents")]
	[DefaultValue(10)]
	[Description("The number of rows in the grid.")]
	[Browsable(true)]
	public int RowCount
	{
		get
		{
			return base.Model.RowCount;
		}
		set
		{
			base.Model.RowCount = value;
		}
	}

	[DefaultValue(10)]
	[Browsable(true)]
	[Description("The number of columns in the grid.")]
	[Category("Grid Contents")]
	public int ColCount
	{
		get
		{
			return base.Model.ColCount;
		}
		set
		{
			base.Model.ColCount = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IgnoreReadOnly
	{
		get
		{
			return base.Model.IgnoreReadOnly;
		}
		set
		{
			base.Model.IgnoreReadOnly = value;
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The collection with covered ranges.")]
	[Category("Grid Contents")]
	public GridModelCoveredRanges CoveredRanges => base.Model.CoveredRanges;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	[Description("The collection with banner ranges.")]
	[Category("Grid Contents")]
	public GridModelBanneredRanges BanneredRanges => base.Model.BanneredRanges;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridModelFloatingCells FloatingCells => base.Model.FloatingCells;

	[Browsable(true)]
	[DefaultValue(GridFloatCellsMode.None)]
	[Description("Enables and specifies floating cells behavior for the grid.")]
	[Category("Grid")]
	public GridFloatCellsMode FloatCellsMode
	{
		get
		{
			return base.Model.Options.FloatCellsMode;
		}
		set
		{
			base.Model.Options.FloatCellsMode = value;
			if (base.DesignMode)
			{
				Refresh();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridCellModelCollection CellModels => base.Model.CellModels;

	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Description("Defines behavior for resizing rows.")]
	[Browsable(true)]
	public GridResizeCellsBehavior ResizeRowsBehavior
	{
		get
		{
			return base.Model.Options.ResizeRowsBehavior;
		}
		set
		{
			base.Model.Options.ResizeRowsBehavior = value;
		}
	}

	[DefaultValue(GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.OutlineHeaders | GridResizeCellsBehavior.OutlineBounds)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[Browsable(true)]
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
			base.Model.Options.ResizeColsBehavior = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(false)]
	[Description("Allow the user to drag selected columns by clicking on the column header.")]
	[Category("Grid")]
	public bool AllowDragSelectedCols
	{
		get
		{
			return base.Model.Options.AllowDragSelectedCols;
		}
		set
		{
			base.Model.Options.AllowDragSelectedCols = value;
		}
	}

	[Browsable(true)]
	[Category("Grid")]
	[DefaultValue(false)]
	[Description("Controls allowing the user to drag selected rows by clicking on the row header.")]
	public bool AllowDragSelectedRows
	{
		get
		{
			return base.Model.Options.AllowDragSelectedRows;
		}
		set
		{
			base.Model.Options.AllowDragSelectedRows = value;
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
			base.Model.Options.AlphaBlendSelectionColor = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridSelectionFlags.Any)]
	[Description("Defines selection behavior of the grid.")]
	public GridSelectionFlags AllowSelection
	{
		get
		{
			return base.Model.Options.AllowSelection;
		}
		set
		{
			base.Model.Options.AllowSelection = value;
		}
	}

	[Category("Scrolling")]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridScrollCurrentCellReason.Any)]
	[Description("Defines scroll cell in view behavior of the grid.")]
	public GridScrollCurrentCellReason AllowScrollCurrentCellInView
	{
		get
		{
			return base.Model.Options.AllowScrollCurrentCellInView;
		}
		set
		{
			base.Model.Options.AllowScrollCurrentCellInView = value;
		}
	}

	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(MouseButtons.Left)]
	[Description("Defines which mouse buttons can be used for dragging selected rows or columns.")]
	[Category("Grid")]
	public MouseButtons DragSelectedCellsMouseButtonsMask
	{
		get
		{
			return base.Model.Options.DragSelectedCellsMouseButtonsMask;
		}
		set
		{
			base.Model.Options.DragSelectedCellsMouseButtonsMask = value;
		}
	}

	[Browsable(true)]
	[Category("Grid")]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(MouseButtons.Left | MouseButtons.Right | MouseButtons.Middle)]
	[Description("Defines which mouse buttons can be used for selecting cells.")]
	public MouseButtons SelectCellsMouseButtonsMask
	{
		get
		{
			return base.Model.Options.SelectCellsMouseButtonsMask;
		}
		set
		{
			base.Model.Options.SelectCellsMouseButtonsMask = value;
		}
	}

	[Category("Grid")]
	[Description("Grid can simulate list boxes. In such mode indicates if the list box is to be single-select, multi-select, or unselectable.")]
	[DefaultValue(SelectionMode.None)]
	public virtual SelectionMode ListBoxSelectionMode
	{
		get
		{
			return base.Model.Options.ListBoxSelectionMode;
		}
		set
		{
			base.Model.Options.ListBoxSelectionMode = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines Excel-like current cell behavior. When the user moves the current cell out of a selected range, the range will be cleared.")]
	public bool ExcelLikeCurrentCell
	{
		get
		{
			return base.Model.Options.ExcelLikeCurrentCell;
		}
		set
		{
			base.Model.Options.ExcelLikeCurrentCell = value;
		}
	}

	[DefaultValue(GridClickedOnDisabledCellBehavior.Default)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines Excel-like current cell behavior. When the user clicks on a cell out of a selected range for which .Enabled has been set to false.")]
	[Category("Grid")]
	public GridClickedOnDisabledCellBehavior ClickedOnDisabledCellBehavior
	{
		get
		{
			return base.Model.Options.ClickedOnDisabledCellBehavior;
		}
		set
		{
			base.Model.Options.ClickedOnDisabledCellBehavior = value;
		}
	}

	[Category("Grid")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies whether the active selection should be outlined with a selection frame.")]
	[Browsable(true)]
	public bool ExcelLikeSelectionFrame
	{
		get
		{
			return base.Model.Options.ExcelLikeSelectionFrame;
		}
		set
		{
			base.Model.Options.ExcelLikeSelectionFrame = value;
		}
	}

	[DefaultValue(GridCellActivateAction.ClickOnCell)]
	[Browsable(true)]
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
			base.Model.Options.ActivateCurrentCellBehavior = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(GridDirectionType.Right)]
	[Description("Controls what the grid does with the 'Enter' key.")]
	[Category("Grid")]
	public GridDirectionType EnterKeyBehavior
	{
		get
		{
			return base.Model.Options.EnterKeyBehavior;
		}
		set
		{
			base.Model.Options.EnterKeyBehavior = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(false)]
	[Description("Defines whether grid should erase and fill background of cells or only draw cell text.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool TransparentBackground
	{
		get
		{
			return base.Model.Options.TransparentBackground;
		}
		set
		{
			base.Model.Options.TransparentBackground = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Toggle display of row numbers in row headers.")]
	[Category("Grid")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool NumberedRowHeaders
	{
		get
		{
			return base.Model.Options.NumberedRowHeaders;
		}
		set
		{
			base.Model.Options.NumberedRowHeaders = value;
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Toggle display of column ids (A, B, C, ...) in column headers.")]
	[Category("Grid")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool NumberedColHeaders
	{
		get
		{
			return base.Model.Options.NumberedColHeaders;
		}
		set
		{
			base.Model.Options.NumberedColHeaders = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Obsolete("Use HorizontalThumbTrack and VerticalThumbTrack properties instead.")]
	public bool AllowThumbTrack
	{
		get
		{
			return base.Model.Options.AllowThumbTrack;
		}
		set
		{
			GridModelOptions options = base.Model.Options;
			bool allowThumbTrack = (base.SupportsThumbTrack = value);
			options.AllowThumbTrack = allowThumbTrack;
		}
	}

	[Browsable(true)]
	[Description("Defines whether the grid should scroll immediately when the user grabs a horizontal scrollbar thumb and drags it.")]
	[Category("Scrolling")]
	public override bool HorizontalThumbTrack
	{
		get
		{
			return base.Model.Options.HorizontalThumbTrack;
		}
		set
		{
			GridModelOptions options = base.Model.Options;
			bool flag = (base.HorizontalThumbTrack = value);
			bool horizontalThumbTrack = (options.HorizontalThumbTrack = flag);
			base.HorizontalThumbTrack = horizontalThumbTrack;
		}
	}

	[Description("Specifies if the control should scroll while the user is dragging a vertical scrollbar thumb.")]
	[Browsable(true)]
	[Category("Scrolling")]
	public override bool VerticalThumbTrack
	{
		get
		{
			return base.Model.Options.VerticalThumbTrack;
		}
		set
		{
			GridModelOptions options = base.Model.Options;
			bool flag = (base.VerticalThumbTrack = value);
			bool verticalThumbTrack = (options.VerticalThumbTrack = flag);
			base.VerticalThumbTrack = verticalThumbTrack;
		}
	}

	[Browsable(true)]
	[Description("Defines whether the grid should display Scroll Tips when the user grabs a horizontal scrollbar thumb and drags it.")]
	[Category("Scrolling")]
	public override bool HorizontalScrollTips
	{
		get
		{
			return base.Model.Options.HorizontalScrollTips;
		}
		set
		{
			bool horizontalScrollTips = (base.Model.Options.HorizontalScrollTips = value);
			base.HorizontalScrollTips = horizontalScrollTips;
		}
	}

	[Description("Defines whether the grid should display Scroll Tips when the user grabs a vertical scrollbar thumb and drags it.")]
	[Browsable(true)]
	[Category("Scrolling")]
	public override bool VerticalScrollTips
	{
		get
		{
			return base.Model.Options.VerticalScrollTips;
		}
		set
		{
			bool verticalScrollTips = (base.Model.Options.VerticalScrollTips = value);
			base.VerticalScrollTips = verticalScrollTips;
		}
	}

	[Browsable(true)]
	[Category("Grid")]
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
			base.Model.Options.MinResizeRowSize = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[DefaultValue(0)]
	[Description("Defines the minimum column width when the user resizes a column with the mouse.")]
	public int MinResizeColSize
	{
		get
		{
			return base.Model.Options.MinResizeColSize;
		}
		set
		{
			base.Model.Options.MinResizeColSize = value;
		}
	}

	[Category("Grid")]
	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Defines whether a grid should be completely refreshed when the user resizes the window or if only newly visible rows or columns should be redrawn.")]
	public bool SmoothControlResize
	{
		get
		{
			return base.Model.Options.SmoothControlResize;
		}
		set
		{
			base.Model.Options.SmoothControlResize = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Defines scroll behavior when user moves current cell with arrow keys into frozen cells area.")]
	[Category("Scrolling")]
	public bool ScrollFrozen
	{
		get
		{
			return base.Model.Options.ScrollFrozen;
		}
		set
		{
			base.Model.Options.ScrollFrozen = value;
		}
	}

	[Description("Defines the order how cells are loaded before the grid is displayed.")]
	[Browsable(true)]
	[DefaultValue(GridDrawOrder.Rows)]
	[Category("Grid")]
	public GridDrawOrder DrawOrder
	{
		get
		{
			return base.Model.Options.DrawOrder;
		}
		set
		{
			base.Model.Options.DrawOrder = value;
		}
	}

	[Description("Defines when to show current cell frame or border.")]
	[Browsable(true)]
	[DefaultValue(GridShowCurrentCellBorder.WhenGridActive)]
	[Category("Grid")]
	public GridShowCurrentCellBorder ShowCurrentCellBorderBehavior
	{
		get
		{
			return base.Model.Options.ShowCurrentCellBorderBehavior;
		}
		set
		{
			base.Model.Options.ShowCurrentCellBorderBehavior = value;
		}
	}

	[Browsable(true)]
	[Description("Which cells to refresh when moving the current cell.")]
	[Category("Grid")]
	[DefaultValue(GridRefreshCurrentCellBehavior.RefreshCell)]
	public GridRefreshCurrentCellBehavior RefreshCurrentCellBehavior
	{
		get
		{
			return base.Model.Options.RefreshCurrentCellBehavior;
		}
		set
		{
			base.Model.Options.RefreshCurrentCellBehavior = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool ShouldSynchronizeCurrentCell
	{
		get
		{
			return base.Model.Options.ShouldSynchronizeCurrentCell;
		}
		set
		{
			base.Model.Options.ShouldSynchronizeCurrentCell = value;
		}
	}

	[Description("Manages more options for the grid. Printing related. Also manages colors for grid background, grid lines, and more.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Grid Contents")]
	public GridProperties Properties
	{
		get
		{
			return base.Model.Properties;
		}
		set
		{
			base.Model.Properties = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(GridVisualStyles.SystemTheme)]
	[Description("Specifies look and feel skins for the Grid")]
	[Category("Grid")]
	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return base.Model.Options.GridVisualStyles;
		}
		set
		{
			base.Model.Options.GridVisualStyles = value;
		}
	}

	[Category("Grid")]
	[Description("Gets or sets the VisualStylesDrawing object")]
	[Browsable(false)]
	public IVisualStylesDrawing GridVisualStylesDrawing
	{
		get
		{
			return base.Model.Options.GridVisualStylesDrawing;
		}
		set
		{
			base.Model.Options.GridVisualStylesDrawing = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Initializing => base.Model.Initializing;

	[Description("Choose to serialize cell contents as code or into a ResX file.")]
	[Category("Grid Contents")]
	public GridSerializeCellsBehavior SerializeCellsBehavior
	{
		get
		{
			return serializeCellsBehavior;
		}
		set
		{
			serializeCellsBehavior = value;
			serializeCellsBehaviorModified = true;
		}
	}

	[Category("Grid")]
	[Description("Occurs when the CellModels collection is changed")]
	public event CollectionChangeEventHandler CellModelsChanged;

	[Description("Occurs when GridModel.QueryCellModel is querying for the GridCellModelBase based on a string cellType")]
	[Category("Grid")]
	public event GridQueryCellModelEventHandler QueryCellModel;

	[Category("Grid")]
	[Description("Occurs when controller options have changed.")]
	public event EventHandler ControllerOptionsChanged;

	[Category("Grid")]
	[Description("Occurs when DataObjectConsumerOptions have changed.")]
	public event EventHandler DataObjectConsumerOptionsChanged;

	[Category("Grid")]
	[Description("Occurs when the reference to the BaseStylesMap has changed.")]
	public event EventHandler BaseStylesMapChanged;

	[Category("Grid")]
	[Description("Occurs when the modified flag has changed.")]
	public event EventHandler DataChanged;

	[Description("Occurs when the Modified property has been changed.")]
	[Category("Grid")]
	public event EventHandler ModifiedChanged;

	[Category("Grid")]
	[Description("Occurs when FileName has changed.")]
	public event EventHandler FileNameChanged;

	[Category("Grid")]
	[Description("Occurs after the contents of a specified range of cells have changed.")]
	public event GridCellsChangedEventHandler CellsChanged;

	[Category("Grid")]
	[Description(" Occurs before the contents of a specified range of cells are being changed.")]
	public event GridCellsChangingEventHandler CellsChanging;

	[Category("Grid")]
	[Description("Occurs when any changes in the grid should be confirmed.")]
	public event CancelEventHandler ConfirmingPendingChanges;

	[Category("Grid")]
	[Description("Occurs when Refresh was called.")]
	public event EventHandler RefreshRequest;

	[Description("Occurs when the first BeginUpdate was called for the grid model.")]
	[Category("Grid")]
	public event EventHandler BeginUpdateRequest;

	[Description("Occurs when the last EndUpdate was called for the grid model.")]
	[Category("Grid")]
	public event GridEndUpdateRequestEventHandler EndUpdateRequest;

	[Description("Occurs when the model is about to save style information about a specific cell.")]
	[Category("Grid")]
	public event GridSaveCellInfoEventHandler SaveCellInfo;

	[Description("Occurs when the model is about to save style information about a specific cell.")]
	[Category("Grid")]
	public event GridPasteCellTextEventHandler PasteCellText;

	[Description("Occurs when the model queries for style information about a specific cell.")]
	[Category("Grid")]
	public event GridQueryCellInfoEventHandler QueryCellInfo;

	[Description("Occurs when the model queries information about covered cells at a specific cell.")]
	[Category("Grid")]
	public event GridQueryCoveredRangeEventHandler QueryCoveredRange;

	[Category("Grid")]
	[Description("Occurs when the model queries information about bannered cells at a specific cell.")]
	public event GridQueryBanneredRangeEventHandler QueryBanneredRange;

	[Description("Occurs before the column count is returned from the model.")]
	[Category("Grid")]
	public event GridRowColCountEventHandler QueryColCount;

	[Description("Occurs before the row count is returned from the model.")]
	[Category("Grid")]
	public event GridRowColCountEventHandler QueryRowCount;

	[Description("Occurs before the column count is changed in the model.")]
	[Category("Grid")]
	public event GridRowColCountEventHandler SaveColCount;

	[Description("Occurs before the row count is changed in the model.")]
	[Category("Grid")]
	public event GridRowColCountEventHandler SaveRowCount;

	[Description("Occurs when an operation takes a longer time and the user should be notified about its status.")]
	[Category("Grid")]
	public event GraphicsEventHandler PrepareGraphics;

	[Description("Occurs when an operation takes a longer time and the user should be notified about its status.")]
	[Category("Grid")]
	public event OperationFeedbackEventHandler OperationFeedback;

	[Category("Grid")]
	[Description("Occurs after row heights for a specified range of rows has changed.")]
	public event GridRowColSizeChangedEventHandler RowHeightsChanged;

	[Category("Grid")]
	[Description("Occurs before row heights for a specified range of rows are changed.")]
	public event GridRowColSizeChangingEventHandler RowHeightsChanging;

	[Description("Occurs after column widths for a specified range of columns have been changed.")]
	[Category("Grid")]
	public event GridRowColSizeChangedEventHandler ColWidthsChanged;

	[Description("Occurs before column widths for a specified range of columns are changed.")]
	[Category("Grid")]
	public event GridRowColSizeChangingEventHandler ColWidthsChanging;

	[Category("Grid")]
	[Description("Occurs before the size of a column is returned from the dictionary.")]
	public event GridRowColSizeEventHandler QueryColWidth;

	[Category("Grid")]
	[Description("Occurs before the size of a row is returned from the dictionary.")]
	public event GridRowColSizeEventHandler QueryRowHeight;

	[Description("Occurs before the size of a column is stored in the dictionary.")]
	[Category("Grid")]
	public event GridRowColSizeEventHandler SaveColWidth;

	[Category("Grid")]
	[Description("Occurs before the size of a row is stored in the dictionary.")]
	public event GridRowColSizeEventHandler SaveRowHeight;

	[Description("Occurs after a range of columns was hidden.")]
	[Category("Grid")]
	public event GridRowColHiddenEventHandler ColsHidden;

	[Category("Grid")]
	[Description("Occurs before a range of columns is hidden.")]
	public event GridRowColHidingEventHandler ColsHiding;

	[Category("Grid")]
	[Description("Occurs after a range of rows was hidden.")]
	public event GridRowColHiddenEventHandler RowsHidden;

	[Description("Occurs before a range of rows is hidden.")]
	[Category("Grid")]
	public event GridRowColHidingEventHandler RowsHiding;

	[Description("Occurs before the hidden state of a column is returned from the dictionary.")]
	[Category("Grid")]
	internal event GridRowColHideEventHandler QueryHideCol;

	[Description("Occurs before the hidden state of a column is stored in the dictionary.")]
	[Category("Grid")]
	internal event GridRowColHideEventHandler SaveHideCol;

	[Category("Grid")]
	[Description("Occurs before the hidden state of a row is returned from the dictionary.")]
	internal event GridRowColHideEventHandler QueryHideRow;

	[Description("Occurs before the hidden state of a row is stored in the dictionary.")]
	[Category("Grid")]
	internal event GridRowColHideEventHandler SaveHideRow;

	[Description("Occurs before the default row height is changed.")]
	[Category("Grid")]
	public event GridDefaultSizeChangingEventHandler DefaultRowHeightChanging;

	[Category("Grid")]
	[Description("Occurs after the default row height has been changed.")]
	public event GridDefaultSizeChangedEventHandler DefaultRowHeightChanged;

	[Description("Occurs after the header row count has been changed.")]
	[Category("Grid")]
	public event GridCountChangedEventHandler HeaderRowCountChanged;

	[Description("Occurs before the header row count is changed.")]
	[Category("Grid")]
	public event GridCountChangingEventHandler HeaderRowCountChanging;

	[Description("Occurs after the frozen row count has been changed.")]
	[Category("Grid")]
	public event GridCountChangedEventHandler FrozenRowCountChanged;

	[Description("Occurs before the frozen row count is changed.")]
	[Category("Grid")]
	public event GridCountChangingEventHandler FrozenRowCountChanging;

	[Description("Occurs after a range of rows is moved.")]
	[Category("Grid")]
	public event GridRangeMovedEventHandler RowsMoved;

	[Description("Occurs before a range of rows is removed.")]
	[Category("Grid")]
	public event GridRangeMovingEventHandler RowsMoving;

	[Category("Grid")]
	[Description("Occurs after a range of rows has been removed.")]
	public event GridRangeRemovedEventHandler RowsRemoved;

	[Category("Grid")]
	[Description("Occurs before a range of rows is removed.")]
	public event GridRangeRemovingEventHandler RowsRemoving;

	[Category("Grid")]
	[Description("Occurs before a range of rows is inserted.")]
	public event GridRangeInsertingEventHandler RowsInserting;

	[Category("Grid")]
	[Description("Occurs after a range of rows has been inserted.")]
	public event GridRangeInsertedEventHandler RowsInserted;

	[Category("Grid")]
	[Description("Occurs before the default column width is changed.")]
	public event GridDefaultSizeChangingEventHandler DefaultColWidthChanging;

	[Category("Grid")]
	[Description("Occurs after the default column width has been changed.")]
	public event GridDefaultSizeChangedEventHandler DefaultColWidthChanged;

	[Description("Occurs after the header column count has been changed.")]
	[Category("Grid")]
	public event GridCountChangedEventHandler HeaderColCountChanged;

	[Category("Grid")]
	[Description("Occurs before the header column count is changed.")]
	public event GridCountChangingEventHandler HeaderColCountChanging;

	[Category("Grid")]
	[Description("Occurs after the frozen column count has been changed.")]
	public event GridCountChangedEventHandler FrozenColCountChanged;

	[Description("Occurs before the frozen column count is changed.")]
	[Category("Grid")]
	public event GridCountChangingEventHandler FrozenColCountChanging;

	[Description("Occurs after a range of columns is moved.")]
	[Category("Grid")]
	public event GridRangeMovedEventHandler ColsMoved;

	[Description("Occurs before a range of columns is removed.")]
	[Category("Grid")]
	public event GridRangeMovingEventHandler ColsMoving;

	[Description("Occurs after a range of columns has been inserted.")]
	[Category("Grid")]
	public event GridRangeRemovedEventHandler ColsRemoved;

	[Category("Grid")]
	[Description("Occurs before a range of columns is removed.")]
	public event GridRangeRemovingEventHandler ColsRemoving;

	[Category("Grid")]
	[Description("Occurs before a range of columns is inserted.")]
	public event GridRangeInsertingEventHandler ColsInserting;

	[Description("Occurs after a range of columns has been inserted.")]
	[Category("Grid")]
	public event GridRangeInsertedEventHandler ColsInserted;

	[Category("Grid")]
	[Description("Occurs when Read-only mode has changed.")]
	public event EventHandler ReadOnlyChanged;

	[Description("Occurs before internal data structures are updated with new selection state from a SelectRange command.")]
	[Category("Grid")]
	public event GridSelectionChangingEventHandler SelectionChanging;

	[Category("Grid")]
	[Description("Occurs after internal data structures were updated with new selection state from a SelectRange command.")]
	public event GridSelectionChangedEventHandler SelectionChanged;

	[Category("Grid")]
	[Description("Occurs before the grid will clear its list of selected ranges.")]
	public event EventHandler PrepareClearSelection;

	[Description("Occurs before the grid will change the active selection range.")]
	[Category("Grid")]
	public event GridPrepareChangeSelectionEventHandler PrepareChangeSelection;

	[Description("Occurs before covering is applied or reset for a range of cells.")]
	[Category("Grid")]
	public event GridCoveredRangesChangingEventHandler CoveredRangesChanging;

	[Category("Grid")]
	[Description("Occurs after covering was applied or reset for a range of cells.")]
	public event GridCoveredRangesChangedEventHandler CoveredRangesChanged;

	[Category("Grid")]
	[Description("Occurs before bannering is applied or reset for a range of cells.")]
	public event GridBanneredRangesChangingEventHandler BanneredRangesChanging;

	[Category("Grid")]
	[Description("Occurs after bannering was applied or reset for a range of cells.")]
	public event GridBanneredRangesChangedEventHandler BanneredRangesChanged;

	[Description("Occurs after floating state was changed for a range of cells.")]
	[Category("Grid")]
	public event GridFloatingCellsChangedEventHandler FloatingCellsChanged;

	[Category("Grid")]
	[Description("Occurs after floating state was changed for a range of cells.")]
	public event GridMergeCellsChangedEventHandler MergeCellsChanged;

	[Category("Grid")]
	[Description("Occurs when grid compares the contents of two cells to determine if they should be merged.")]
	public event GridQueryCanMergeCellsEventHandler QueryCanMergeCells;

	private event GridChangeLayoutCellsEventHandler ChangingLayoutCells;

	private event GridChangeLayoutCellsEventHandler ChangedLayoutCells;

	[Category("Grid")]
	[Description("Occurs when the grid's CanCopy method is called.")]
	public event GridCutPasteEventHandler ClipboardCanCopy
	{
		add
		{
			base.Model.ClipboardCanCopy += value;
		}
		remove
		{
			base.Model.ClipboardCanCopy -= value;
		}
	}

	[Description("Occurs when the grid's CanPaste method is called.")]
	[Category("Grid")]
	public event GridCutPasteEventHandler ClipboardCanPaste
	{
		add
		{
			base.Model.ClipboardCanPaste += value;
		}
		remove
		{
			base.Model.ClipboardCanPaste -= value;
		}
	}

	[Category("Grid")]
	[Description("Occurs when the grid's CanCut method is called.")]
	public event GridCutPasteEventHandler ClipboardCanCut
	{
		add
		{
			base.Model.ClipboardCanCut += value;
		}
		remove
		{
			base.Model.ClipboardCanCut -= value;
		}
	}

	[Description("Occurs when the grid's Copy method is called.")]
	[Category("Grid")]
	public event GridCutPasteEventHandler ClipboardCopy
	{
		add
		{
			base.Model.ClipboardCopy += value;
		}
		remove
		{
			base.Model.ClipboardCopy -= value;
		}
	}

	[Description("Occurs when the grid's Cut method is called.")]
	[Category("Grid")]
	public event GridCutPasteEventHandler ClipboardCut
	{
		add
		{
			base.Model.ClipboardCut += value;
		}
		remove
		{
			base.Model.ClipboardCut -= value;
		}
	}

	[Category("Grid")]
	[Description("Occurs when the grid's Paste method is called.")]
	public event GridCutPasteEventHandler ClipboardPaste
	{
		add
		{
			base.Model.ClipboardPaste += value;
		}
		remove
		{
			base.Model.ClipboardPaste -= value;
		}
	}

	[Category("Grid")]
	[Description("Occurs when the grid's ClearCells method is called.")]
	public event GridClearingCellsEventHandler ClearingCells
	{
		add
		{
			base.Model.ClearingCells += value;
		}
		remove
		{
			base.Model.ClearingCells -= value;
		}
	}

	[Description("Occurs each time the GridStyleInfo.Text is called to get the string that represents the underlying cell's value.")]
	[Category("Data")]
	public event GridCellTextEventHandler QueryCellText
	{
		add
		{
			base.Model.QueryCellText += value;
		}
		remove
		{
			base.Model.QueryCellText -= value;
		}
	}

	[Description("Occurs each time the GridStyleInfo.Text is called to set the raw string that represents the underlying cell's value.")]
	[Category("Data")]
	public event GridCellTextEventHandler SaveCellText
	{
		add
		{
			base.Model.SaveCellText += value;
		}
		remove
		{
			base.Model.SaveCellText -= value;
		}
	}

	[Description("Occurs each time the GridStyleInfo.Text is called to get the string that represents the underlying cell's value.")]
	[Category("Data")]
	public event GridCellTextEventHandler QueryCellFormattedText
	{
		add
		{
			base.Model.QueryCellFormattedText += value;
		}
		remove
		{
			base.Model.QueryCellFormattedText -= value;
		}
	}

	[Description("Occurs each time the GridStyleInfo.FormattedText is called to set the raw string that represents the underlying cell's value.")]
	[Category("Data")]
	public event GridCellTextEventHandler SaveCellFormattedText
	{
		add
		{
			base.Model.SaveCellFormattedText += value;
		}
		remove
		{
			base.Model.SaveCellFormattedText -= value;
		}
	}

	[Category("Data")]
	[Description("Handle this event to provide support for parsing the formatted string and convert it into the the underlying cell's value.")]
	public event GridCellTextEventHandler ParseCommonFormats
	{
		add
		{
			base.Model.ParseCommonFormats += value;
		}
		remove
		{
			base.Model.ParseCommonFormats -= value;
		}
	}

	[Description("Occurs when a user starts dragging a range of selected cells using OLE drag-and-drop.")]
	[Category("Grid")]
	public event GridQueryOleDataSourceDataEventHandler QueryOleDataSourceData
	{
		add
		{
			base.Model.QueryOleDataSourceData += value;
		}
		remove
		{
			base.Model.QueryOleDataSourceData -= value;
		}
	}

	public GridControl()
		: this(null)
	{
		InitializeModel();
	}

	internal void InitializeModel()
	{
		CommandStack.Enabled = false;
		Rows.DefaultSize = 17;
		Cols.DefaultSize = 65;
		RowHeights[0] = 21;
		ColWidths[0] = 35;
		RowHeights.ResetModified();
		ColWidths.ResetModified();
		ExcelLikeCurrentCell = false;
		ExcelLikeSelectionFrame = false;
		AllowDragSelectedCols = false;
		AllowDragSelectedRows = false;
		CommandStack.Enabled = false;
		FloatCellsMode = GridFloatCellsMode.None;
		ResetBaseStylesMap();
		_ = base.Model;
		RowCount = 10;
		ColCount = 10;
	}

	public GridControl(GridModel model)
		: base(model)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GridControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
	}

	public void Attach(GridModel model)
	{
		base.Model = model;
	}

	public GridModel Detach()
	{
		GridModel gridModel = base.Model;
		return null;
	}

	private bool ShouldSerializeFont()
	{
		return TableStyle.HasFont;
	}

	protected override void WireModel()
	{
		base.WireModel();
		base.Model.CellModelsChanged += ModelCellModelsChanged;
		base.Model.QueryCellModel += ModelQueryCellModel;
		base.Model.Options.ControllerOptionsChanged += ModelControllerOptionsChanged;
		base.Model.Options.DataObjectConsumerOptionsChanged += ModelDataObjectConsumerOptionsChanged;
		base.Model.BaseStylesMapChanged += ModelBaseStylesMapChanged;
		base.Model.DataChanged += ModelDataChanged;
		base.Model.ModifiedChanged += ModelModifiedChanged;
		base.Model.FileNameChanged += ModelFileNameChanged;
		base.Model.CellsChanged += ModelCellsChanged;
		base.Model.CellsChanging += ModelCellsChanging;
		base.Model.ConfirmingPendingChanges += ModelConfirmingPendingChanges;
		base.Model.RefreshRequest += ModelRefreshRequest;
		base.Model.BeginUpdateRequest += ModelBeginUpdateRequest;
		base.Model.EndUpdateRequest += ModelEndUpdateRequest;
		base.Model.SaveCellInfo += ModelSaveCellInfo;
		base.Model.PasteCellText += ModelPasteCellText;
		base.Model.QueryCellInfo += ModelQueryCellInfo;
		base.Model.QueryCoveredRange += ModelQueryCoveredRange;
		base.Model.QueryBanneredRange += ModelQueryBanneredRange;
		base.Model.QueryColCount += ModelQueryColCount;
		base.Model.QueryRowCount += ModelQueryRowCount;
		base.Model.SaveColCount += ModelSaveColCount;
		base.Model.SaveRowCount += ModelSaveRowCount;
		base.Model.PrepareGraphics += ModelPrepareGraphics;
		base.Model.OperationFeedback += ModelOperationFeedback;
		base.Model.RowHeightsChanged += ModelRowHeightsChanged;
		base.Model.RowHeightsChanging += ModelRowHeightsChanging;
		base.Model.ColWidthsChanged += ModelColWidthsChanged;
		base.Model.ColWidthsChanging += ModelColWidthsChanging;
		base.Model.QueryColWidth += ModelQueryColWidth;
		base.Model.QueryRowHeight += ModelQueryRowHeight;
		base.Model.SaveColWidth += ModelSaveColWidth;
		base.Model.SaveRowHeight += ModelSaveRowHeight;
		base.Model.ColsHidden += ModelColsHidden;
		base.Model.ColsHiding += ModelColsHiding;
		base.Model.RowsHidden += ModelRowsHidden;
		base.Model.RowsHiding += ModelRowsHiding;
		base.Model.QueryHideCol += ModelQueryHideCol;
		base.Model.SaveHideCol += ModelSaveHideCol;
		base.Model.QueryHideRow += ModelQueryHideRow;
		base.Model.SaveHideRow += ModelSaveHideRow;
		base.Model.DefaultRowHeightChanging += ModelDefaultRowHeightChanging;
		base.Model.DefaultRowHeightChanged += ModelDefaultRowHeightChanged;
		base.Model.HeaderRowCountChanged += ModelHeaderRowCountChanged;
		base.Model.HeaderRowCountChanging += ModelHeaderRowCountChanging;
		base.Model.FrozenRowCountChanged += ModelFrozenRowCountChanged;
		base.Model.FrozenRowCountChanging += ModelFrozenRowCountChanging;
		base.Model.RowsMoved += ModelRowsMoved;
		base.Model.RowsMoving += ModelRowsMoving;
		base.Model.RowsRemoved += ModelRowsRemoved;
		base.Model.RowsRemoving += ModelRowsRemoving;
		base.Model.RowsInserting += ModelRowsInserting;
		base.Model.RowsInserted += ModelRowsInserted;
		base.Model.DefaultColWidthChanging += ModelDefaultColWidthChanging;
		base.Model.DefaultColWidthChanged += ModelDefaultColWidthChanged;
		base.Model.HeaderColCountChanged += ModelHeaderColCountChanged;
		base.Model.HeaderColCountChanging += ModelHeaderColCountChanging;
		base.Model.FrozenColCountChanged += ModelFrozenColCountChanged;
		base.Model.FrozenColCountChanging += ModelFrozenColCountChanging;
		base.Model.ColsMoved += ModelColsMoved;
		base.Model.ColsMoving += ModelColsMoving;
		base.Model.ColsRemoved += ModelColsRemoved;
		base.Model.ColsRemoving += ModelColsRemoving;
		base.Model.ColsInserting += ModelColsInserting;
		base.Model.ColsInserted += ModelColsInserted;
		base.Model.ReadOnlyChanged += ModelReadOnlyChanged;
		base.Model.SelectionChanging += ModelSelectionChanging;
		base.Model.SelectionChanged += ModelSelectionChanged;
		base.Model.PrepareClearSelection += ModelPrepareClearSelection;
		base.Model.PrepareChangeSelection += ModelPrepareChangeSelection;
		base.Model.CoveredRangesChanging += ModelCoveredRangesChanging;
		base.Model.CoveredRangesChanged += ModelCoveredRangesChanged;
		base.Model.BanneredRangesChanging += ModelBanneredRangesChanging;
		base.Model.BanneredRangesChanged += ModelBanneredRangesChanged;
		base.Model.FloatingCellsChanged += ModelFloatingCellsChanged;
		base.Model.MergeCellsChanged += ModelMergeCellsChanged;
		base.Model.QueryCanMergeCells += ModelQueryCanMergeCells;
	}

	protected override void UnwireModel()
	{
		base.UnwireModel();
		base.Model.CellModelsChanged -= ModelCellModelsChanged;
		base.Model.QueryCellModel -= ModelQueryCellModel;
		base.Model.Options.ControllerOptionsChanged -= ModelControllerOptionsChanged;
		base.Model.Options.DataObjectConsumerOptionsChanged -= ModelDataObjectConsumerOptionsChanged;
		base.Model.BaseStylesMapChanged -= ModelBaseStylesMapChanged;
		base.Model.DataChanged -= ModelDataChanged;
		base.Model.ModifiedChanged -= ModelModifiedChanged;
		base.Model.FileNameChanged -= ModelFileNameChanged;
		base.Model.CellsChanged -= ModelCellsChanged;
		base.Model.CellsChanging -= ModelCellsChanging;
		base.Model.ConfirmingPendingChanges -= ModelConfirmingPendingChanges;
		base.Model.RefreshRequest -= ModelRefreshRequest;
		base.Model.BeginUpdateRequest -= ModelBeginUpdateRequest;
		base.Model.EndUpdateRequest -= ModelEndUpdateRequest;
		base.Model.SaveCellInfo -= ModelSaveCellInfo;
		base.Model.PasteCellText -= ModelPasteCellText;
		base.Model.QueryCellInfo -= ModelQueryCellInfo;
		base.Model.QueryCoveredRange -= ModelQueryCoveredRange;
		base.Model.QueryBanneredRange -= ModelQueryBanneredRange;
		base.Model.QueryColCount -= ModelQueryColCount;
		base.Model.QueryRowCount -= ModelQueryRowCount;
		base.Model.SaveColCount -= ModelSaveColCount;
		base.Model.SaveRowCount -= ModelSaveRowCount;
		base.Model.PrepareGraphics -= ModelPrepareGraphics;
		base.Model.OperationFeedback -= ModelOperationFeedback;
		base.Model.RowHeightsChanged -= ModelRowHeightsChanged;
		base.Model.RowHeightsChanging -= ModelRowHeightsChanging;
		base.Model.ColWidthsChanged -= ModelColWidthsChanged;
		base.Model.ColWidthsChanging -= ModelColWidthsChanging;
		base.Model.QueryColWidth -= ModelQueryColWidth;
		base.Model.QueryRowHeight -= ModelQueryRowHeight;
		base.Model.SaveColWidth -= ModelSaveColWidth;
		base.Model.SaveRowHeight -= ModelSaveRowHeight;
		base.Model.ColsHidden -= ModelColsHidden;
		base.Model.ColsHiding -= ModelColsHiding;
		base.Model.RowsHidden -= ModelRowsHidden;
		base.Model.RowsHiding -= ModelRowsHiding;
		base.Model.QueryHideCol -= ModelQueryHideCol;
		base.Model.SaveHideCol -= ModelSaveHideCol;
		base.Model.QueryHideRow -= ModelQueryHideRow;
		base.Model.SaveHideRow -= ModelSaveHideRow;
		base.Model.DefaultRowHeightChanging -= ModelDefaultRowHeightChanging;
		base.Model.DefaultRowHeightChanged -= ModelDefaultRowHeightChanged;
		base.Model.HeaderRowCountChanged -= ModelHeaderRowCountChanged;
		base.Model.HeaderRowCountChanging -= ModelHeaderRowCountChanging;
		base.Model.FrozenRowCountChanged -= ModelFrozenRowCountChanged;
		base.Model.FrozenRowCountChanging -= ModelFrozenRowCountChanging;
		base.Model.RowsMoved -= ModelRowsMoved;
		base.Model.RowsMoving -= ModelRowsMoving;
		base.Model.RowsRemoved -= ModelRowsRemoved;
		base.Model.RowsRemoving -= ModelRowsRemoving;
		base.Model.RowsInserting -= ModelRowsInserting;
		base.Model.RowsInserted -= ModelRowsInserted;
		base.Model.DefaultColWidthChanging -= ModelDefaultColWidthChanging;
		base.Model.DefaultColWidthChanged -= ModelDefaultColWidthChanged;
		base.Model.HeaderColCountChanged -= ModelHeaderColCountChanged;
		base.Model.HeaderColCountChanging -= ModelHeaderColCountChanging;
		base.Model.FrozenColCountChanged -= ModelFrozenColCountChanged;
		base.Model.FrozenColCountChanging -= ModelFrozenColCountChanging;
		base.Model.ColsMoved -= ModelColsMoved;
		base.Model.ColsMoving -= ModelColsMoving;
		base.Model.ColsRemoved -= ModelColsRemoved;
		base.Model.ColsRemoving -= ModelColsRemoving;
		base.Model.ColsInserting -= ModelColsInserting;
		base.Model.ColsInserted -= ModelColsInserted;
		base.Model.ReadOnlyChanged -= ModelReadOnlyChanged;
		base.Model.SelectionChanging -= ModelSelectionChanging;
		base.Model.SelectionChanged -= ModelSelectionChanged;
		base.Model.PrepareClearSelection -= ModelPrepareClearSelection;
		base.Model.PrepareChangeSelection -= ModelPrepareChangeSelection;
		base.Model.CoveredRangesChanging -= ModelCoveredRangesChanging;
		base.Model.CoveredRangesChanged -= ModelCoveredRangesChanged;
		base.Model.BanneredRangesChanging -= ModelBanneredRangesChanging;
		base.Model.BanneredRangesChanged -= ModelBanneredRangesChanged;
		base.Model.FloatingCellsChanged -= ModelFloatingCellsChanged;
		base.Model.MergeCellsChanged -= ModelMergeCellsChanged;
		base.Model.QueryCanMergeCells -= ModelQueryCanMergeCells;
	}

	private void ModelCellModelsChanged(object sender, CollectionChangeEventArgs e)
	{
		OnCellModelsChanged(e);
	}

	private void ModelQueryCellModel(object sender, GridQueryCellModelEventArgs e)
	{
		OnQueryCellModel(e);
	}

	private void ModelFloatingCellsChanged(object sender, GridFloatingCellsChangedEventArgs e)
	{
		OnFloatingCellsChanged(e);
	}

	private void ModelMergeCellsChanged(object sender, GridMergeCellsChangedEventArgs e)
	{
		OnMergeCellsChanged(e);
	}

	private void ModelQueryCanMergeCells(object sender, GridQueryCanMergeCellsEventArgs e)
	{
		OnQueryCanMergeCells(e);
	}

	private void ModelCoveredRangesChanged(object sender, GridCoveredRangesChangedEventArgs e)
	{
		OnCoveredRangesChanged(e);
	}

	private void ModelCoveredRangesChanging(object sender, GridCoveredRangesChangingEventArgs e)
	{
		OnCoveredRangesChanging(e);
	}

	private void ModelBanneredRangesChanged(object sender, GridBanneredRangesChangedEventArgs e)
	{
		OnBanneredRangesChanged(e);
	}

	private void ModelBanneredRangesChanging(object sender, GridBanneredRangesChangingEventArgs e)
	{
		OnBanneredRangesChanging(e);
	}

	private void ModelPrepareChangeSelection(object sender, GridPrepareChangeSelectionEventArgs e)
	{
		OnPrepareChangeSelection(e);
	}

	private void ModelPrepareClearSelection(object sender, EventArgs e)
	{
		OnPrepareClearSelection(e);
	}

	private void ModelSelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		OnSelectionChanged(e);
	}

	private void ModelSelectionChanging(object sender, GridSelectionChangingEventArgs e)
	{
		OnSelectionChanging(e);
	}

	private void ModelConfirmingPendingChanges(object sender, CancelEventArgs e)
	{
		OnConfirmingPendingChanges(e);
	}

	private void ModelSaveRowCount(object sender, GridRowColCountEventArgs e)
	{
		OnSaveRowCount(e);
	}

	private void ModelSaveColCount(object sender, GridRowColCountEventArgs e)
	{
		OnSaveColCount(e);
	}

	private void ModelQueryRowCount(object sender, GridRowColCountEventArgs e)
	{
		OnQueryRowCount(e);
	}

	private void ModelQueryColCount(object sender, GridRowColCountEventArgs e)
	{
		OnQueryColCount(e);
	}

	private void ModelCellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		OnCellsChanged(e);
	}

	private void ModelCellsChanging(object sender, GridCellsChangingEventArgs e)
	{
		OnCellsChanging(e);
	}

	private void ModelSaveCellInfo(object sender, GridSaveCellInfoEventArgs e)
	{
		OnSaveCellInfo(e);
	}

	private void ModelPasteCellText(object sender, GridPasteCellTextEventArgs e)
	{
		OnPasteCellText(e);
	}

	private void ModelColsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		OnColsInserted(e);
	}

	private void ModelColsInserting(object sender, GridRangeInsertingEventArgs e)
	{
		OnColsInserting(e);
	}

	private void ModelColsRemoving(object sender, GridRangeRemovingEventArgs e)
	{
		OnColsRemoving(e);
	}

	private void ModelColsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		OnColsRemoved(e);
	}

	private void ModelColsMoving(object sender, GridRangeMovingEventArgs e)
	{
		OnColsMoving(e);
	}

	private void ModelColsMoved(object sender, GridRangeMovedEventArgs e)
	{
		OnColsMoved(e);
	}

	private void ModelFrozenColCountChanging(object sender, GridCountChangingEventArgs e)
	{
		OnFrozenColCountChanging(e);
	}

	private void ModelFrozenColCountChanged(object sender, GridCountChangedEventArgs e)
	{
		OnFrozenColCountChanged(e);
	}

	private void ModelHeaderColCountChanging(object sender, GridCountChangingEventArgs e)
	{
		OnHeaderColCountChanging(e);
	}

	private void ModelHeaderColCountChanged(object sender, GridCountChangedEventArgs e)
	{
		OnHeaderColCountChanged(e);
	}

	private void ModelDefaultColWidthChanged(object sender, GridDefaultSizeChangedEventArgs e)
	{
		OnDefaultColWidthChanged(e);
	}

	private void ModelDefaultColWidthChanging(object sender, GridDefaultSizeChangingEventArgs e)
	{
		OnDefaultColWidthChanging(e);
	}

	private void ModelRowsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		OnRowsInserted(e);
	}

	private void ModelRowsInserting(object sender, GridRangeInsertingEventArgs e)
	{
		OnRowsInserting(e);
	}

	private void ModelRowsRemoving(object sender, GridRangeRemovingEventArgs e)
	{
		OnRowsRemoving(e);
	}

	private void ModelRowsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		OnRowsRemoved(e);
	}

	private void ModelRowsMoving(object sender, GridRangeMovingEventArgs e)
	{
		OnRowsMoving(e);
	}

	private void ModelRowsMoved(object sender, GridRangeMovedEventArgs e)
	{
		OnRowsMoved(e);
	}

	private void ModelFrozenRowCountChanging(object sender, GridCountChangingEventArgs e)
	{
		OnFrozenRowCountChanging(e);
	}

	private void ModelFrozenRowCountChanged(object sender, GridCountChangedEventArgs e)
	{
		OnFrozenRowCountChanged(e);
	}

	private void ModelHeaderRowCountChanging(object sender, GridCountChangingEventArgs e)
	{
		OnHeaderRowCountChanging(e);
	}

	private void ModelHeaderRowCountChanged(object sender, GridCountChangedEventArgs e)
	{
		OnHeaderRowCountChanged(e);
	}

	private void ModelDefaultRowHeightChanged(object sender, GridDefaultSizeChangedEventArgs e)
	{
		OnDefaultRowHeightChanged(e);
	}

	private void ModelDefaultRowHeightChanging(object sender, GridDefaultSizeChangingEventArgs e)
	{
		OnDefaultRowHeightChanging(e);
	}

	private void ModelQueryHideCol(object sender, GridRowColHideEventArgs e)
	{
		OnQueryHideCol(e);
	}

	private void ModelSaveHideCol(object sender, GridRowColHideEventArgs e)
	{
		OnSaveHideCol(e);
	}

	private void ModelQueryHideRow(object sender, GridRowColHideEventArgs e)
	{
		OnQueryHideRow(e);
	}

	private void ModelSaveHideRow(object sender, GridRowColHideEventArgs e)
	{
		OnSaveHideRow(e);
	}

	private void ModelColsHiding(object sender, GridRowColHidingEventArgs e)
	{
		OnColsHiding(e);
	}

	private void ModelColsHidden(object sender, GridRowColHiddenEventArgs e)
	{
		OnColsHidden(e);
	}

	private void ModelRowsHiding(object sender, GridRowColHidingEventArgs e)
	{
		OnRowsHiding(e);
	}

	private void ModelRowsHidden(object sender, GridRowColHiddenEventArgs e)
	{
		OnRowsHidden(e);
	}

	private void ModelQueryColWidth(object sender, GridRowColSizeEventArgs e)
	{
		OnQueryColWidth(e);
	}

	private void ModelSaveColWidth(object sender, GridRowColSizeEventArgs e)
	{
		OnSaveColWidth(e);
	}

	private void ModelQueryRowHeight(object sender, GridRowColSizeEventArgs e)
	{
		OnQueryRowHeight(e);
	}

	private void ModelSaveRowHeight(object sender, GridRowColSizeEventArgs e)
	{
		OnSaveRowHeight(e);
	}

	private void ModelColWidthsChanging(object sender, GridRowColSizeChangingEventArgs e)
	{
		OnColWidthsChanging(e);
	}

	private void ModelColWidthsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		OnColWidthsChanged(e);
	}

	private void ModelRowHeightsChanging(object sender, GridRowColSizeChangingEventArgs e)
	{
		OnRowHeightsChanging(e);
	}

	private void ModelRowHeightsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		OnRowHeightsChanged(e);
	}

	private void ModelDataChanged(object sender, EventArgs e)
	{
		OnDataChanged(e);
	}

	private void ModelModifiedChanged(object sender, EventArgs e)
	{
		OnModifiedChanged(e);
	}

	private void ModelFileNameChanged(object sender, EventArgs e)
	{
		OnFileNameChanged(e);
	}

	private void ModelBeginUpdateRequest(object sender, EventArgs e)
	{
		OnBeginUpdateRequest(e);
	}

	private void ModelEndUpdateRequest(object sender, GridEndUpdateRequestEventArgs e)
	{
		OnEndUpdateRequest(e);
	}

	private void ModelQueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		OnQueryCellInfo(e);
	}

	private void ModelQueryCoveredRange(object sender, GridQueryCoveredRangeEventArgs e)
	{
		OnQueryCoveredRange(e);
	}

	private void ModelQueryBanneredRange(object sender, GridQueryBanneredRangeEventArgs e)
	{
		OnQueryBanneredRange(e);
	}

	private void ModelChangingLayoutCells(object sender, GridChangeLayoutCellsEventArgs e)
	{
		OnChangingLayoutCells(e);
	}

	private void ModelChangedLayoutCells(object sender, GridChangeLayoutCellsEventArgs e)
	{
		OnChangedLayoutCells(e);
	}

	private void ModelPrepareGraphics(object sender, GraphicsEventArgs e)
	{
		OnPrepareGraphics(e);
	}

	private void ModelOperationFeedback(object sender, OperationFeedbackEventArgs e)
	{
		OnOperationFeedback(e);
	}

	private void ModelReadOnlyChanged(object sender, EventArgs e)
	{
		OnReadOnlyChanged(e);
	}

	private void ModelControllerOptionsChanged(object sender, EventArgs e)
	{
		OnControllerOptionsChanged(e);
	}

	private void ModelDataObjectConsumerOptionsChanged(object sender, EventArgs e)
	{
		OnDataObjectConsumerOptionsChanged(e);
	}

	private void ModelBaseStylesMapChanged(object sender, EventArgs e)
	{
		OnBaseStylesMapChanged(e);
	}

	protected virtual void OnControllerOptionsChanged(EventArgs e)
	{
		if (this.ControllerOptionsChanged != null)
		{
			this.ControllerOptionsChanged(this, e);
		}
	}

	protected virtual void OnDataObjectConsumerOptionsChanged(EventArgs e)
	{
		if (this.DataObjectConsumerOptionsChanged != null)
		{
			this.DataObjectConsumerOptionsChanged(this, e);
		}
	}

	protected virtual void OnBaseStylesMapChanged(EventArgs e)
	{
		if (this.BaseStylesMapChanged != null)
		{
			this.BaseStylesMapChanged(this, e);
		}
	}

	protected virtual void OnDataChanged(EventArgs e)
	{
		if (this.DataChanged != null)
		{
			this.DataChanged(this, e);
		}
	}

	protected virtual void OnModifiedChanged(EventArgs e)
	{
		if (this.ModifiedChanged != null)
		{
			this.ModifiedChanged(this, e);
		}
	}

	protected virtual void OnFileNameChanged(EventArgs e)
	{
		if (this.FileNameChanged != null)
		{
			this.FileNameChanged(this, e);
		}
	}

	protected virtual void OnCellsChanged(GridCellsChangedEventArgs e)
	{
		if (this.CellsChanged != null)
		{
			this.CellsChanged(this, e);
		}
	}

	protected virtual void OnCellsChanging(GridCellsChangingEventArgs e)
	{
		if (this.CellsChanging != null)
		{
			this.CellsChanging(this, e);
		}
	}

	protected virtual void OnConfirmingPendingChanges(CancelEventArgs e)
	{
		if (this.ConfirmingPendingChanges != null)
		{
			this.ConfirmingPendingChanges(this, e);
		}
	}

	protected virtual void OnRefreshRequest(EventArgs e)
	{
		if (this.RefreshRequest != null)
		{
			this.RefreshRequest(this, e);
		}
	}

	protected virtual void OnBeginUpdateRequest(EventArgs e)
	{
		if (this.BeginUpdateRequest != null)
		{
			this.BeginUpdateRequest(this, e);
		}
	}

	protected virtual void OnEndUpdateRequest(GridEndUpdateRequestEventArgs e)
	{
		if (this.EndUpdateRequest != null)
		{
			this.EndUpdateRequest(this, e);
		}
	}

	protected virtual void OnSaveCellInfo(GridSaveCellInfoEventArgs e)
	{
		if (this.SaveCellInfo != null)
		{
			this.SaveCellInfo(this, e);
		}
	}

	protected virtual void OnPasteCellText(GridPasteCellTextEventArgs e)
	{
		if (this.PasteCellText != null)
		{
			this.PasteCellText(this, e);
		}
	}

	protected virtual void OnQueryCellInfo(GridQueryCellInfoEventArgs e)
	{
		if (this.QueryCellInfo != null)
		{
			this.QueryCellInfo(this, e);
		}
	}

	protected virtual void OnQueryCoveredRange(GridQueryCoveredRangeEventArgs e)
	{
		if (this.QueryCoveredRange != null)
		{
			this.QueryCoveredRange(this, e);
		}
	}

	protected virtual void OnQueryBanneredRange(GridQueryBanneredRangeEventArgs e)
	{
		if (this.QueryBanneredRange != null)
		{
			this.QueryBanneredRange(this, e);
		}
	}

	protected virtual void OnQueryColCount(GridRowColCountEventArgs e)
	{
		if (this.QueryColCount != null)
		{
			this.QueryColCount(this, e);
		}
	}

	protected virtual void OnQueryRowCount(GridRowColCountEventArgs e)
	{
		if (this.QueryRowCount != null)
		{
			this.QueryRowCount(this, e);
		}
	}

	protected virtual void OnSaveColCount(GridRowColCountEventArgs e)
	{
		if (this.SaveColCount != null)
		{
			this.SaveColCount(this, e);
		}
	}

	protected virtual void OnSaveRowCount(GridRowColCountEventArgs e)
	{
		if (this.SaveRowCount != null)
		{
			this.SaveRowCount(this, e);
		}
	}

	internal void OnChangingLayoutCells(GridChangeLayoutCellsEventArgs e)
	{
		if (this.ChangingLayoutCells != null)
		{
			this.ChangingLayoutCells(this, e);
		}
	}

	internal void OnChangedLayoutCells(GridChangeLayoutCellsEventArgs e)
	{
		if (this.ChangedLayoutCells != null)
		{
			this.ChangedLayoutCells(this, e);
		}
	}

	protected virtual void OnPrepareGraphics(GraphicsEventArgs e)
	{
		if (this.PrepareGraphics != null)
		{
			this.PrepareGraphics(this, e);
		}
	}

	protected virtual void OnOperationFeedback(OperationFeedbackEventArgs e)
	{
		if (this.OperationFeedback != null)
		{
			this.OperationFeedback(this, e);
		}
	}

	protected virtual void OnRowHeightsChanged(GridRowColSizeChangedEventArgs e)
	{
		if (this.RowHeightsChanged != null)
		{
			this.RowHeightsChanged(this, e);
		}
	}

	protected virtual void OnRowHeightsChanging(GridRowColSizeChangingEventArgs e)
	{
		if (this.RowHeightsChanging != null)
		{
			this.RowHeightsChanging(this, e);
		}
	}

	protected virtual void OnColWidthsChanged(GridRowColSizeChangedEventArgs e)
	{
		if (this.ColWidthsChanged != null)
		{
			this.ColWidthsChanged(this, e);
		}
	}

	protected virtual void OnColWidthsChanging(GridRowColSizeChangingEventArgs e)
	{
		if (this.ColWidthsChanging != null)
		{
			this.ColWidthsChanging(this, e);
		}
	}

	protected virtual void OnQueryColWidth(GridRowColSizeEventArgs e)
	{
		if (this.QueryColWidth != null)
		{
			this.QueryColWidth(this, e);
		}
	}

	protected virtual void OnQueryRowHeight(GridRowColSizeEventArgs e)
	{
		if (this.QueryRowHeight != null)
		{
			this.QueryRowHeight(this, e);
		}
	}

	protected virtual void OnSaveColWidth(GridRowColSizeEventArgs e)
	{
		if (this.SaveColWidth != null)
		{
			this.SaveColWidth(this, e);
		}
	}

	protected virtual void OnSaveRowHeight(GridRowColSizeEventArgs e)
	{
		if (this.SaveRowHeight != null)
		{
			this.SaveRowHeight(this, e);
		}
	}

	protected virtual void OnColsHidden(GridRowColHiddenEventArgs e)
	{
		if (this.ColsHidden != null)
		{
			this.ColsHidden(this, e);
		}
	}

	protected virtual void OnColsHiding(GridRowColHidingEventArgs e)
	{
		if (this.ColsHiding != null)
		{
			this.ColsHiding(this, e);
		}
	}

	protected virtual void OnRowsHidden(GridRowColHiddenEventArgs e)
	{
		if (this.RowsHidden != null)
		{
			this.RowsHidden(this, e);
		}
	}

	protected virtual void OnRowsHiding(GridRowColHidingEventArgs e)
	{
		if (this.RowsHiding != null)
		{
			this.RowsHiding(this, e);
		}
	}

	protected virtual void OnQueryHideCol(GridRowColHideEventArgs e)
	{
		if (this.QueryHideCol != null)
		{
			this.QueryHideCol(this, e);
		}
	}

	protected virtual void OnSaveHideCol(GridRowColHideEventArgs e)
	{
		if (this.SaveHideCol != null)
		{
			this.SaveHideCol(this, e);
		}
	}

	protected virtual void OnQueryHideRow(GridRowColHideEventArgs e)
	{
		if (this.QueryHideRow != null)
		{
			this.QueryHideRow(this, e);
		}
	}

	protected virtual void OnSaveHideRow(GridRowColHideEventArgs e)
	{
		if (this.SaveHideRow != null)
		{
			this.SaveHideRow(this, e);
		}
	}

	protected virtual void OnDefaultRowHeightChanging(GridDefaultSizeChangingEventArgs e)
	{
		if (this.DefaultRowHeightChanging != null)
		{
			this.DefaultRowHeightChanging(this, e);
		}
	}

	protected virtual void OnDefaultRowHeightChanged(GridDefaultSizeChangedEventArgs e)
	{
		if (this.DefaultRowHeightChanged != null)
		{
			this.DefaultRowHeightChanged(this, e);
		}
	}

	protected virtual void OnHeaderRowCountChanged(GridCountChangedEventArgs e)
	{
		if (this.HeaderRowCountChanged != null)
		{
			this.HeaderRowCountChanged(this, e);
		}
	}

	protected virtual void OnHeaderRowCountChanging(GridCountChangingEventArgs e)
	{
		if (this.HeaderRowCountChanging != null)
		{
			this.HeaderRowCountChanging(this, e);
		}
	}

	protected virtual void OnFrozenRowCountChanged(GridCountChangedEventArgs e)
	{
		if (this.FrozenRowCountChanged != null)
		{
			this.FrozenRowCountChanged(this, e);
		}
	}

	protected virtual void OnFrozenRowCountChanging(GridCountChangingEventArgs e)
	{
		if (this.FrozenRowCountChanging != null)
		{
			this.FrozenRowCountChanging(this, e);
		}
	}

	protected virtual void OnRowsMoved(GridRangeMovedEventArgs e)
	{
		if (this.RowsMoved != null)
		{
			this.RowsMoved(this, e);
		}
	}

	protected virtual void OnRowsMoving(GridRangeMovingEventArgs e)
	{
		if (this.RowsMoving != null)
		{
			this.RowsMoving(this, e);
		}
	}

	protected virtual void OnRowsRemoved(GridRangeRemovedEventArgs e)
	{
		if (this.RowsRemoved != null)
		{
			this.RowsRemoved(this, e);
		}
	}

	protected virtual void OnRowsRemoving(GridRangeRemovingEventArgs e)
	{
		if (this.RowsRemoving != null)
		{
			this.RowsRemoving(this, e);
		}
	}

	protected virtual void OnRowsInserting(GridRangeInsertingEventArgs e)
	{
		if (this.RowsInserting != null)
		{
			this.RowsInserting(this, e);
		}
	}

	protected virtual void OnRowsInserted(GridRangeInsertedEventArgs e)
	{
		if (this.RowsInserted != null)
		{
			this.RowsInserted(this, e);
		}
	}

	protected virtual void OnDefaultColWidthChanging(GridDefaultSizeChangingEventArgs e)
	{
		if (this.DefaultColWidthChanging != null)
		{
			this.DefaultColWidthChanging(this, e);
		}
	}

	protected virtual void OnDefaultColWidthChanged(GridDefaultSizeChangedEventArgs e)
	{
		if (this.DefaultColWidthChanged != null)
		{
			this.DefaultColWidthChanged(this, e);
		}
	}

	protected virtual void OnHeaderColCountChanged(GridCountChangedEventArgs e)
	{
		if (this.HeaderColCountChanged != null)
		{
			this.HeaderColCountChanged(this, e);
		}
	}

	protected virtual void OnHeaderColCountChanging(GridCountChangingEventArgs e)
	{
		if (this.HeaderColCountChanging != null)
		{
			this.HeaderColCountChanging(this, e);
		}
	}

	protected virtual void OnFrozenColCountChanged(GridCountChangedEventArgs e)
	{
		if (this.FrozenColCountChanged != null)
		{
			this.FrozenColCountChanged(this, e);
		}
	}

	protected virtual void OnFrozenColCountChanging(GridCountChangingEventArgs e)
	{
		if (this.FrozenColCountChanging != null)
		{
			this.FrozenColCountChanging(this, e);
		}
	}

	protected virtual void OnColsMoved(GridRangeMovedEventArgs e)
	{
		if (this.ColsMoved != null)
		{
			this.ColsMoved(this, e);
		}
	}

	protected virtual void OnColsMoving(GridRangeMovingEventArgs e)
	{
		if (this.ColsMoving != null)
		{
			this.ColsMoving(this, e);
		}
	}

	protected virtual void OnColsRemoved(GridRangeRemovedEventArgs e)
	{
		if (this.ColsRemoved != null)
		{
			this.ColsRemoved(this, e);
		}
	}

	protected virtual void OnColsRemoving(GridRangeRemovingEventArgs e)
	{
		if (this.ColsRemoving != null)
		{
			this.ColsRemoving(this, e);
		}
	}

	protected virtual void OnColsInserting(GridRangeInsertingEventArgs e)
	{
		if (this.ColsInserting != null)
		{
			this.ColsInserting(this, e);
		}
	}

	protected virtual void OnColsInserted(GridRangeInsertedEventArgs e)
	{
		if (this.ColsInserted != null)
		{
			this.ColsInserted(this, e);
		}
	}

	protected virtual void OnReadOnlyChanged(EventArgs e)
	{
		if (this.ReadOnlyChanged != null)
		{
			this.ReadOnlyChanged(this, e);
		}
	}

	protected virtual void OnSelectionChanging(GridSelectionChangingEventArgs e)
	{
		if (this.SelectionChanging != null)
		{
			this.SelectionChanging(this, e);
		}
	}

	protected virtual void OnSelectionChanged(GridSelectionChangedEventArgs e)
	{
		if (this.SelectionChanged != null)
		{
			this.SelectionChanged(this, e);
		}
	}

	protected virtual void OnPrepareClearSelection(EventArgs e)
	{
		if (this.PrepareClearSelection != null)
		{
			this.PrepareClearSelection(this, e);
		}
	}

	protected virtual void OnQueryCellModel(GridQueryCellModelEventArgs e)
	{
		if (this.QueryCellModel != null)
		{
			this.QueryCellModel(this, e);
		}
		if (e.CellModel == null)
		{
			IGridCellModelFactory cellModelFactory = GridFactoryProvider.CellModelFactory;
			if (cellModelFactory != null)
			{
				e.CellModel = cellModelFactory.CreateCellModel(e.CellType, base.Model);
			}
		}
	}

	protected virtual void OnCellModelsChanged(CollectionChangeEventArgs e)
	{
		if (this.CellModelsChanged != null)
		{
			this.CellModelsChanged(this, e);
		}
	}

	protected virtual void OnPrepareChangeSelection(GridPrepareChangeSelectionEventArgs e)
	{
		if (this.PrepareChangeSelection != null)
		{
			this.PrepareChangeSelection(this, e);
		}
	}

	protected virtual void OnCoveredRangesChanging(GridCoveredRangesChangingEventArgs e)
	{
		if (this.CoveredRangesChanging != null)
		{
			this.CoveredRangesChanging(this, e);
		}
	}

	protected virtual void OnCoveredRangesChanged(GridCoveredRangesChangedEventArgs e)
	{
		if (this.CoveredRangesChanged != null)
		{
			this.CoveredRangesChanged(this, e);
		}
	}

	protected virtual void OnBanneredRangesChanging(GridBanneredRangesChangingEventArgs e)
	{
		if (this.BanneredRangesChanging != null)
		{
			this.BanneredRangesChanging(this, e);
		}
	}

	protected virtual void OnBanneredRangesChanged(GridBanneredRangesChangedEventArgs e)
	{
		if (this.BanneredRangesChanged != null)
		{
			this.BanneredRangesChanged(this, e);
		}
	}

	protected virtual void OnFloatingCellsChanged(GridFloatingCellsChangedEventArgs e)
	{
		if (this.FloatingCellsChanged != null)
		{
			this.FloatingCellsChanged(this, e);
		}
	}

	protected virtual void OnMergeCellsChanged(GridMergeCellsChangedEventArgs e)
	{
		if (this.MergeCellsChanged != null)
		{
			this.MergeCellsChanged(this, e);
		}
	}

	protected virtual void OnQueryCanMergeCells(GridQueryCanMergeCellsEventArgs e)
	{
		if (this.QueryCanMergeCells != null)
		{
			this.QueryCanMergeCells(this, e);
		}
	}

	private bool ShouldSerializeBaseStylesMap()
	{
		return BaseStylesMap.Modified;
	}

	public void ResetBaseStylesMap()
	{
		BaseStylesMap.RegisterStandardStyles();
		GridModel gridModel = base.Model;
		GridStyleInfo styleInfo = gridModel.BaseStylesMap["Standard"].StyleInfo;
		GridStyleInfo styleInfo2 = gridModel.BaseStylesMap["Header"].StyleInfo;
		GridStyleInfo styleInfo3 = gridModel.BaseStylesMap["Row Header"].StyleInfo;
		_ = gridModel.BaseStylesMap["Column Header"].StyleInfo;
		GridFontInfo gridFontInfo = new GridFontInfo();
		gridFontInfo.Bold = true;
		gridFontInfo.Size = 8f;
		gridFontInfo.Facename = "Verdana";
		styleInfo2.Interior = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo3.Interior = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo.Font.Facename = "Tahoma";
		BaseStylesMap.Modified = false;
		Refresh();
	}

	public bool ShouldSerializeGridCells()
	{
		return SerializeCellsBehavior == GridSerializeCellsBehavior.SerializeIntoCode;
	}

	public void ResetGridCells()
	{
		base.Model.GridCells.Clear();
	}

	public void ResetRangeStyles()
	{
		base.Model.RangeStyles.Clear();
		base.Model.RangeStyles.WriteToData();
	}

	public bool ShouldSerializeRangeStyles()
	{
		return SerializeCellsBehavior == GridSerializeCellsBehavior.SerializeAsRangeStylesIntoCode;
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
			RowHeights[0] = 21;
			RowHeights.ResetModified();
			base.Model.rowHeightEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	public bool ShouldSerializeColWidthEntries()
	{
		return ColWidths.Modified;
	}

	public void ResetColWidthEntries()
	{
		if (ColWidths.Dictionary is GridRowColSizeDictionary { InnerDict: var innerDict })
		{
			BeginUpdate(BeginUpdateOptions.None);
			innerDict.Clear();
			ColWidths[0] = 35;
			ColWidths.ResetModified();
			base.Model.colWidthEntries = null;
			EndUpdate(update: false);
			Refresh();
		}
	}

	private bool ShouldSerializeData()
	{
		return SerializeCellsBehavior == GridSerializeCellsBehavior.SerializeIntoResX;
	}

	private bool ShouldSerializeRowHeights()
	{
		return base.Model.RowHeights.Modified;
	}

	private void ResetRowHeights()
	{
		if (base.Model.RowCount > 0)
		{
			base.Model.RowHeights.ResetRange(1, base.Model.RowCount);
		}
	}

	private bool ShouldSerializeColWidths()
	{
		return base.Model.ColWidths.Modified;
	}

	private void ResetColWidths()
	{
		if (base.Model.ColCount > 0)
		{
			base.Model.ColWidths.ResetRange(1, base.Model.ColCount);
		}
	}

	private bool ShouldSerializeHideRows()
	{
		return base.Model.HideRows.Modified;
	}

	private void ResetHideRows()
	{
		if (base.Model.RowCount > 0)
		{
			base.Model.HideRows.ResetRange(1, base.Model.RowCount);
		}
	}

	private bool ShouldSerializeHideCols()
	{
		return base.Model.HideCols.Modified;
	}

	private void ResetHideCols()
	{
		if (base.Model.ColCount > 0)
		{
			base.Model.HideCols.ResetRange(1, base.Model.ColCount);
		}
	}

	public bool ShouldSerializeRowHiddenEntries()
	{
		return HideRows.Modified;
	}

	public void ResetRowHiddenEntries()
	{
		base.Model.ResetRowHiddenEntries();
	}

	public bool ShouldSerializeColHiddenEntries()
	{
		return HideCols.Modified;
	}

	public void ResetColHiddenEntries()
	{
		base.Model.ResetColHiddenEntries();
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

	private bool ShouldSerializeCoveredRanges()
	{
		return base.Model.CoveredRanges.Count > 0;
	}

	public void ResetCoveredRanges()
	{
		if (base.Model.CoveredRanges.Count > 0)
		{
			base.Model.CoveredRanges.Clear();
		}
	}

	private bool ShouldSerializeBanneredRanges()
	{
		return base.Model.BanneredRanges.Count > 0;
	}

	public void ResetBanneredRanges()
	{
		if (base.Model.BanneredRanges.Count > 0)
		{
			base.Model.BanneredRanges.Clear();
		}
	}

	public void ResetAlphaBlendSelectionColor()
	{
		base.Model.Options.AlphaBlendSelectionColor = SystemColors.Highlight;
	}

	private bool ShouldSerializeAlphaBlendSelectionColor()
	{
		if (base.Model.Options.AlphaBlendSelectionColor != Color.FromArgb(64, SystemColors.Highlight))
		{
			return (base.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) != 0;
		}
		return false;
	}

	private bool ShouldSerializeProperties()
	{
		return base.Model.Properties.Modified;
	}

	public virtual bool GetSpannedRangeInfo(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		return base.Model.GetSpannedRangeInfo(rowIndex, colIndex, out range);
	}

	public override void EndUpdateModel(bool update, bool fromModel)
	{
		if (!fromModel)
		{
			base.Model.EndUpdate(update);
		}
		else
		{
			base.EndUpdateModel(update, fromModel);
		}
	}

	public void BeginUpdate(BeginUpdateOptions options, string commandDesc)
	{
		base.Model.BeginUpdate(options, commandDesc);
	}

	public override void BeginUpdateModel(BeginUpdateOptions options, bool fromModel)
	{
		if (!fromModel)
		{
			base.Model.BeginUpdate(options);
		}
		else
		{
			base.BeginUpdateModel(options, fromModel);
		}
	}

	public void SuspendChangeEvents()
	{
		base.Model.SuspendChangeEvents();
	}

	public void ResumeChangeEvents()
	{
		base.Model.ResumeChangeEvents();
	}

	public void SuspendRecordUndo()
	{
		base.Model.SuspendRecordUndo();
	}

	public void ResumeRecordUndo()
	{
		base.Model.ResumeRecordUndo();
	}

	public void BeginInit()
	{
		base.Model.BeginInit();
	}

	public void EndInit()
	{
		InitSplitterControl();
		base.Model.EndInit();
	}

	protected override void Refresh(bool fromModel)
	{
		if (!fromModel)
		{
			base.Model.Refresh();
		}
		else
		{
			base.Refresh(fromModel);
		}
	}

	public void DoPrepareGraphics(Graphics g)
	{
		base.Model.DoPrepareGraphics(g);
	}

	public static GridModel LoadSoap(string fileName)
	{
		return GridModel.LoadSoap(fileName);
	}

	public static GridModel LoadSoap(Stream s)
	{
		return GridModel.LoadSoap(s);
	}

	public void SaveSoap()
	{
		base.Model.SaveSoap();
	}

	public void SaveSoap(string fileName)
	{
		base.Model.SaveSoap(fileName);
	}

	public void SaveSoap(Stream s)
	{
		base.Model.SaveSoap(s);
	}

	public static GridModel LoadBinary(string fileName)
	{
		return GridModel.LoadBinary(fileName);
	}

	public static GridModel LoadBinary(Stream s)
	{
		return GridModel.LoadBinary(s);
	}

	public void SaveBinary()
	{
		base.Model.SaveBinary();
	}

	public void SaveBinary(string fileName)
	{
		base.Model.SaveBinary(fileName);
	}

	public void SaveBinary(Stream s)
	{
		base.Model.SaveBinary(s);
	}

	public void InitializeFromXml(string fileName)
	{
		InitializeFromXml(fileName, resolveBackgroundImages: true);
	}

	public void InitializeFromXml(string fileName, bool resolveBackgroundImages)
	{
		FileStream fileStream = File.OpenRead(fileName);
		InitializeFromXml(fileStream, resolveBackgroundImages);
		fileStream.Close();
	}

	public void InitializeFromXml(Stream s)
	{
		InitializeFromXml(s, resolveBackgroundImages: true);
	}

	public void InitializeFromXml(Stream s, bool resolveBackgroundImages)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(typeof(GridSyncProperties));
		object obj = xmlSerializer.Deserialize(s);
		GridSynchronizer gridSynchronizer = new GridSynchronizer();
		gridSynchronizer.InitializeGridSync(obj as GridSyncProperties, this);
		if (resolveBackgroundImages)
		{
			ResolveBackgroundImages();
		}
	}

	private void ResolveBackgroundImages()
	{
		if (base.BackgroundImageID != null && base.BackgroundImageID != string.Empty)
		{
			string name = base.BackgroundImageID;
			base.BackgroundImageID = string.Empty;
			name = GridDesignerMain.syncProps.StoredImages.GetValueForName(name);
			Bitmap imageFromBytes = GridSyncProperties.GetImageFromBytes(Convert.FromBase64String(name));
			BackgroundImage = imageFromBytes;
		}
		GridCellInfoCollection.GridCellInfoEnumerator enumerator = GridCells.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.StyleInfo != null && enumerator.Current.StyleInfo.BackgroundImageID != null && enumerator.Current.StyleInfo.BackgroundImageID != string.Empty)
			{
				string name2 = enumerator.Current.StyleInfo.BackgroundImageID;
				enumerator.Current.StyleInfo.BackgroundImageID = string.Empty;
				name2 = GridDesignerMain.syncProps.StoredImages.GetValueForName(name2);
				Bitmap imageFromBytes2 = GridSyncProperties.GetImageFromBytes(Convert.FromBase64String(name2));
				enumerator.Current.StyleInfo.BackgroundImage = imageFromBytes2;
			}
		}
	}

	public void SaveXml()
	{
		SaveXml(FileName);
	}

	public void SaveXml(string fileName)
	{
		FileName = fileName;
		FileStream fileStream = File.Create(FileName);
		SaveXml(fileStream);
		fileStream.Close();
	}

	public void SaveXml(Stream s)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(typeof(GridSyncProperties));
		GridSynchronizer gridSynchronizer = new GridSynchronizer();
		gridSynchronizer.InitializeGridSyncProperties(this);
		GridStylesParser.ParsePropertyStore(GridDesignerMain.syncProps.Store);
		GridDesignerMain.syncProps.Cells.InitializeFrom(this);
		xmlSerializer.Serialize(s, GridDesignerMain.syncProps);
	}

	public Size CalculatePreferredCellSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		return base.Model.CalculatePreferredCellSize(g, rowIndex, colIndex, style, queryBounds);
	}

	public Size CalculatePreferredCellSize(Graphics g, int rowIndex, int colIndex, GridQueryBounds queryBounds)
	{
		return base.Model.CalculatePreferredCellSize(g, rowIndex, colIndex, queryBounds);
	}

	public GridStyleInfoStoreTable GetCells(GridRangeInfo range)
	{
		return base.Model.GetCells(range);
	}

	public void PopulateValues(GridRangeInfo range, object dataSource)
	{
		base.Model.PopulateValues(range, dataSource);
	}

	public void PopulateHeaders(GridRangeInfo range, object dataSource)
	{
		base.Model.PopulateHeaders(range, dataSource);
	}

	public bool SetCellInfo(int rowIndex, int colIndex, GridStyleInfo style, StyleModifyType modifyType)
	{
		return base.Model.SetCellInfo(rowIndex, colIndex, style, modifyType);
	}

	public bool SetCellInfo(int rowIndex, int colIndex, GridStyleInfo style, StyleModifyType modifyType, bool dontRaiseSaveCellInfoEvent, bool copyReferenceOnly)
	{
		return base.Model.SetCellInfo(rowIndex, colIndex, style, modifyType, dontRaiseSaveCellInfoEvent, copyReferenceOnly);
	}

	public void SetCells(GridRangeInfo range, GridStyleInfoStoreTable data)
	{
		base.Model.SetCells(range, data);
	}

	public void SetCells(GridRangeInfo range, GridStyleInfoStoreTable data, bool dontRaiseSaveCellInfoEvent, bool copyReferenceOnly)
	{
		base.Model.SetCells(range, data, dontRaiseSaveCellInfoEvent, copyReferenceOnly);
	}

	public void ResetVolatileData()
	{
		base.Model.ResetVolatileData();
	}

	public GridStyleInfo GetCombinedStyle(GridRangeInfo range)
	{
		return base.Model.GetCombinedStyle(range);
	}

	public GridStyleInfo GetCombinedStyle(GridRangeInfoList ranges)
	{
		return base.Model.GetCombinedStyle(ranges);
	}

	public void ChangeSelectionState(int currentRow, int currentCol, GridRangeInfo[] ranges)
	{
		base.Model.ChangeSelectionState(currentRow, currentCol, ranges);
	}

	public bool ChangeCells(GridRangeInfo range, string textValue)
	{
		return base.Model.ChangeCells(range, textValue);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo cellInfo)
	{
		return base.Model.ChangeCells(range, cellInfo);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo cellInfo, StyleModifyType modifyType)
	{
		return base.Model.ChangeCells(range, cellInfo, modifyType);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo[] cellsInfo)
	{
		return base.Model.ChangeCells(range, cellsInfo);
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo[] cellsInfo, StyleModifyType modifyType)
	{
		return base.Model.ChangeCells(range, cellsInfo, modifyType);
	}

	public GridStyleInfo[] GetCellsInfo(GridRangeInfo range)
	{
		return base.Model.GetCellsInfo(range);
	}

	public GridStyleInfo[] GetCellsInfo(GridRangeInfo range, OperationFeedback op)
	{
		return base.Model.GetCellsInfo(range, op);
	}

	public bool CanClearSelection()
	{
		return base.Model.CanClearSelection();
	}

	public bool Clear(bool styleOrValue)
	{
		return base.Model.Clear(styleOrValue);
	}

	public bool ClearCells(GridRangeInfo range, bool bStyleOrValue)
	{
		return base.Model.ClearCells(range, bStyleOrValue);
	}

	public bool ClearCells(GridRangeInfoList selList, bool styleOrValue)
	{
		return base.Model.ClearCells(selList, styleOrValue);
	}

	public void ResetCurrentCellInfo()
	{
		base.Model.ResetCurrentCellInfo();
	}

	public void ConfirmChanges()
	{
		base.Model.ConfirmChanges();
	}

	public void EndEdit()
	{
		base.Model.EndEdit();
	}

	public void QueryMaximumRowCol(int nLastRow, int nLastCol)
	{
		base.Model.RaiseQueryMaximumRowCol(nLastRow, nLastCol);
	}

	public bool ConfirmPendingChanges()
	{
		return base.Model.ConfirmPendingChanges();
	}

	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style, bool isRightToLeft)
	{
		return base.Model.SubtractBorders(cellBounds, style, isRightToLeft);
	}

	public Rectangle SubtractBorders(Rectangle cellBounds, GridStyleInfo style)
	{
		return base.Model.SubtractBorders(cellBounds, style, isRightToLeft: false);
	}

	public Size AddBorders(Size size, GridStyleInfo style)
	{
		return base.Model.AddBorders(size, style);
	}

	public GridMargins StyleInfoBordersToMargins(GridStyleInfo style)
	{
		return base.Model.StyleInfoBordersToMargins(style);
	}

	public void SynchronizeCurrentCell(int rowIndex, int colIndex)
	{
		base.Model.SynchronizeCurrentCell(rowIndex, colIndex);
	}

	internal void FakeLButtonDown(Point pt, MouseButtons button)
	{
		OnMouseDown(new MouseEventArgs(button, 1, pt.X, pt.Y, 0));
	}

	internal void FakeLButtonUp(Point pt, MouseButtons button)
	{
		OnMouseUp(new MouseEventArgs(button, 1, pt.X, pt.Y, 0));
	}

	internal void FakeMouseMove(Point pt)
	{
		OnMouseMove(new MouseEventArgs(Control.MouseButtons, 0, pt.X, pt.Y, 0));
	}

	internal void FakeHScrollBarScroll(ScrollEventArgs args)
	{
		OnHScroll(this, args);
	}

	internal void FakeVScrollBarScroll(ScrollEventArgs args)
	{
		OnVScroll(this, args);
	}

	internal void ResetSerializeCellsBehavior()
	{
		serializeCellsBehavior = GridSerializeCellsBehavior.SerializeIntoCode;
		serializeCellsBehaviorModified = false;
	}

	internal bool ShouldSerializeSerializeCellsBehavior()
	{
		return serializeCellsBehaviorModified;
	}
}
