using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Reflection;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Core.Licensing;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxBitmap(typeof(GridListControl), "ToolboxIcons.GridListControl.bmp")]
[Description("A list control based grid.")]
[ToolboxItem(true)]
[Designer(typeof(GridListControlDesigner))]
public class GridListControl : ListControl, IThemedControl, ISupportInitialize
{
	public const int NoMatches = -1;

	public const int DefaultItemHeight = 13;

	private BorderStyle borderStyle = BorderStyle.FixedSingle;

	internal GridListControlChild grid;

	private bool multiColumn;

	private bool inSetData;

	private bool resizeToFit;

	private SelectionMode selectionMode = SelectionMode.One;

	private int selectedIndex = -1;

	private int updateCount;

	private ImageList imageList;

	private PropertyDescriptor imageDescriptor;

	private bool showColumnHeader = true;

	private bool scrollAlwaysVisible;

	private bool fillLastColumn;

	private bool uiCues;

	private bool allowResize = true;

	private bool autoResize = true;

	private bool isDisposing;

	private ArrayList columns = new ArrayList();

	private ThemedWindowDrawing _themedDrawing;

	private bool forceNonThemedBorder;

	private bool inInit;

	private bool columnsDirty;

	private bool inInitLayout;

	private IGridListControlSource gridListControlSource;

	private int imageColumn = 1;

	private bool disableScrollInView;

	private bool isActiveControl;

	private bool isValidating;

	private bool isDeactivatedCalled;

	private bool hasControlFocus;

	private bool isValidated;

	private BindingContext bindingContext;

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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridControl Grid => grid;

	[Browsable(true)]
	[Description("Gets or sets a value indicating whether to toggle support for Windows 2000 and Windows XP transparency. Set this to True if you want the grid to draw transparent over a background bitmap.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool SupportsTransparentBackColor
	{
		get
		{
			return GetStyle(ControlStyles.SupportsTransparentBackColor);
		}
		set
		{
			if (SupportsTransparentBackColor == value)
			{
				return;
			}
			SetStyle(ControlStyles.SupportsTransparentBackColor, value);
			foreach (Control control in base.Controls)
			{
				MakeTransparent(control, SupportsTransparentBackColor);
			}
			OnSupportsTransparentBackColorChanged(EventArgs.Empty);
		}
	}

	[Description("Indicates if the user can resize columns.")]
	[DefaultValue(true)]
	public bool AllowResizeColumns
	{
		get
		{
			return allowResize;
		}
		set
		{
			if (value != allowResize)
			{
				allowResize = value;
				if (allowResize)
				{
					grid.ResizeColsBehavior = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.InsideGrid;
				}
				else
				{
					grid.ResizeColsBehavior = GridResizeCellsBehavior.None;
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates if columns should be automatically sized to fit contents of their cells.")]
	public bool AutoSizeColumns
	{
		get
		{
			return autoResize;
		}
		set
		{
			if (value != autoResize)
			{
				autoResize = value;
				int num = (FillLastColumn ? 1 : 0);
				if (autoResize && grid.ColCount > num && autoResize && base.Visible)
				{
					grid.ColWidths.ResizeToFit(GridRangeInfo.Cells(0, 1, grid.RowCount, grid.ColCount - num), GridResizeToFitOptions.NoShrinkSize | GridResizeToFitOptions.IncludeHeaders);
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates if column headers should be displayed.")]
	public bool ShowColumnHeader
	{
		get
		{
			return showColumnHeader;
		}
		set
		{
			if (showColumnHeader != value)
			{
				showColumnHeader = value;
				if (showColumnHeader)
				{
					Grid.HideRows[0] = false;
				}
				else
				{
					Grid.HideRows[0] = true;
				}
			}
		}
	}

	[Description("Indicates if the last column should be sized in a way that the whole client area of the grid is used.")]
	[DefaultValue(false)]
	public bool FillLastColumn
	{
		get
		{
			return fillLastColumn;
		}
		set
		{
			if (fillLastColumn != value)
			{
				fillLastColumn = value;
				Grid.SmoothControlResize = !value;
				PerformLayout();
				Refresh();
			}
		}
	}

	public override string Text
	{
		get
		{
			if (Items != null && selectedIndex >= 0 && selectedIndex < Items.Count)
			{
				return GetItemText(Items[selectedIndex]);
			}
			return base.Text;
		}
		set
		{
			if (Items != null && value != Text)
			{
				if (value.Length > 0)
				{
					FindItem(value, selectItem: true, -1, ignoreCase: false);
				}
				else
				{
					SelectedIndex = -1;
				}
			}
		}
	}

	internal bool NeedsResizeToFit => resizeToFit;

	private ThemedWindowDrawing themedDrawing
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && _themedDrawing == null)
			{
				_themedDrawing = new ThemedWindowDrawing();
			}
			return _themedDrawing;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool ForceNonThemedBorder
	{
		get
		{
			return forceNonThemedBorder;
		}
		set
		{
			forceNonThemedBorder = value;
		}
	}

	[Description("A list of images that can be referenced with ImageIndex properties.")]
	public ImageList ImageList
	{
		get
		{
			return imageList;
		}
		set
		{
			imageList = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Initializing => inInit;

	[SRCategory("Appearance")]
	[DefaultValue(BorderStyle.None)]
	[Description("The border style of the control.")]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (borderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				borderStyle = value;
				UpdateStyles();
			}
		}
	}

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			return createParams;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates if the list box should always have a scroll bar present, regardless of how many items are in it.")]
	[Localizable(true)]
	public bool ScrollAlwaysVisible
	{
		get
		{
			return scrollAlwaysVisible;
		}
		set
		{
			if (scrollAlwaysVisible != value)
			{
				scrollAlwaysVisible = value;
				if (scrollAlwaysVisible)
				{
					Grid.VScrollBehavior = GridScrollbarMode.Enabled | GridScrollbarMode.AutoScroll;
				}
				else
				{
					Grid.VScrollBehavior = GridScrollbarMode.Automatic;
				}
				Grid.UpdateScrollBars();
			}
		}
	}

	[Description("The currently selected item in the list box, or NULL.")]
	[Bindable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object SelectedItem
	{
		get
		{
			if (Grid.Selections.Count > 0 && Items != null)
			{
				int num = Grid.Selections.Ranges[0].Top - 1;
				if (num >= 0 && num < Items.Count)
				{
					return Items[num];
				}
			}
			return null;
		}
		set
		{
			int num = -1;
			if (Items != null && value != null)
			{
				num = Items.IndexOf(value);
			}
			if (num != SelectedIndex)
			{
				SelectedIndex = num;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool Updating => updateCount > 0;

	[Category("Behavior")]
	[Description("Specifies the index of the selected item.")]
	public override int SelectedIndex
	{
		get
		{
			return selectedIndex;
		}
		set
		{
			if (value != selectedIndex)
			{
				SelectedIndexInternal = value;
				if (SelectedIndexInternal != selectedIndex)
				{
					selectedIndex = SelectedIndexInternal;
					OnSelectedIndexChanged(EventArgs.Empty);
				}
			}
		}
	}

	[Description("The column that should display any optional images from the image list.")]
	[DefaultValue(1)]
	public int ImageColumn
	{
		get
		{
			return imageColumn;
		}
		set
		{
			imageColumn = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	private CurrencyManager ListManager => base.DataManager;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	private int SelectedIndexInternal
	{
		get
		{
			if (!grid.CurrentCell.HasCurrentCell || grid.CurrentCell.RowIndex <= 0)
			{
				return -1;
			}
			return grid.CurrentCell.RowIndex - 1;
		}
		set
		{
			if (value == SelectedIndexInternal)
			{
				return;
			}
			if (value != -1)
			{
				grid.ForceCurrentCellMoveTo = true;
				if (grid.CurrentCell.MoveTo(value + 1, 0) && selectionMode == SelectionMode.One && value != -1)
				{
					grid.Selections.ChangeSelection(grid.Selections.Ranges.ActiveRange, GridRangeInfo.Row(value + 1));
				}
				grid.CurrentCell.ActivateOnGotFocus = true;
			}
			else
			{
				grid.CurrentCell.Deactivate(discardChanges: false);
				grid.Selections.Clear();
				grid.CurrentCell.ActivateOnGotFocus = false;
			}
		}
	}

	[Description("Indicates if the list box is to be single-select, multi-select, or unselectable.")]
	[DefaultValue(SelectionMode.One)]
	[Category("Behavior")]
	public virtual SelectionMode SelectionMode
	{
		get
		{
			return selectionMode;
		}
		set
		{
			if (!Enum.IsDefined(typeof(SelectionMode), value))
			{
				throw new InvalidEnumArgumentException("value", (int)value, typeof(SelectionMode));
			}
			if (selectionMode != value)
			{
				selectionMode = value;
				grid.ListBoxSelectionMode = selectionMode;
			}
		}
	}

	[Description("Indicates if the grid should display only single or multiple columns.")]
	public bool MultiColumn
	{
		get
		{
			return multiColumn;
		}
		set
		{
			if (multiColumn != value)
			{
				multiColumn = value;
				InitializeColumns(base.DataManager);
				PerformLayout();
				grid.Invalidate();
				OnMultiColumnChanged(EventArgs.Empty);
			}
		}
	}

	[Description("The first visible row index in the list control.")]
	public int TopIndex
	{
		get
		{
			return grid.TopRowIndex;
		}
		set
		{
			grid.TopRowIndex = value;
		}
	}

	[Description("The default row item height in the list control.")]
	public int ItemHeight
	{
		get
		{
			return grid.Rows.DefaultSize;
		}
		set
		{
			grid.Rows.DefaultSize = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IList Items
	{
		get
		{
			if (base.DataManager == null)
			{
				return null;
			}
			return base.DataManager.List;
		}
	}

	[Browsable(true)]
	[DefaultValue(GridVisualStyles.SystemTheme)]
	[Description("Specifies look and feel skins for the Grid")]
	[Category("Appearance")]
	public GridVisualStyles GridVisualStyles
	{
		get
		{
			return grid.GridVisualStyles;
		}
		set
		{
			grid.GridVisualStyles = value;
		}
	}

	[Description("Gets or sets the VisualStylesDrawing object")]
	[Browsable(false)]
	[Category("Appearance")]
	public IVisualStylesDrawing GridVisualStylesDrawing
	{
		get
		{
			return grid.GridVisualStylesDrawing;
		}
		set
		{
			grid.GridVisualStylesDrawing = value;
		}
	}

	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ThemesEnabled
	{
		get
		{
			return grid.ThemesEnabled;
		}
		set
		{
			if (grid.ThemesEnabled != value)
			{
				grid.ThemesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[Description("The foreground color used to display text and graphics in the control.")]
	public override Color ForeColor
	{
		get
		{
			if (grid == null)
			{
				return base.ForeColor;
			}
			return grid.TableStyle.TextColor;
		}
		set
		{
			grid.TableStyle.TextColor = value;
			Refresh();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsValidating => isValidating;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsValidated => isValidated;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsActiveControl => isActiveControl;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsDeactivated => isDeactivatedCalled;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasControlFocus => hasControlFocus;

	[Category("Appearance")]
	[Description("The Backcolor used to display text in the control.")]
	[RefreshProperties(RefreshProperties.All)]
	[AmbientValue(null)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (value.A != byte.MaxValue)
			{
				SupportsTransparentBackColor = true;
			}
			base.BackColor = value;
		}
	}

	[Description("The background image used for the control.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(null)]
	[Localizable(true)]
	[Category("Appearance")]
	public override Image BackgroundImage
	{
		get
		{
			return Grid.BackgroundImage;
		}
		set
		{
			if (!GetStyle(ControlStyles.SupportsTransparentBackColor) && value != null)
			{
				SupportsTransparentBackColor = true;
			}
			Grid.BackgroundImage = value;
		}
	}

	[Description("The font used to display text in the control.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.All)]
	[AmbientValue(null)]
	public override Font Font
	{
		get
		{
			if (!Grid.IsSplitterPaneClosing)
			{
				return TableStyle.GdipFont;
			}
			return base.Font;
		}
		set
		{
			if (value != null)
			{
				GridFontInfo font = TableStyle.Font;
				font.Facename = value.FontFamily.Name;
				font.FontStyle = value.Style;
				font.Size = value.SizeInPoints;
			}
		}
	}

	[Description("The table style. Individual cells will inherit attributes from the table style.")]
	[RefreshProperties(RefreshProperties.All)]
	[Browsable(true)]
	public GridStyleInfo TableStyle
	{
		get
		{
			return Grid.Model.TableStyle;
		}
		set
		{
			Grid.Model.TableStyle = value;
		}
	}

	[Browsable(true)]
	[Description("The backcolor for header cells.")]
	[RefreshProperties(RefreshProperties.All)]
	public Color HeaderBackColor
	{
		get
		{
			return grid.BaseStylesMap["Column Header"].StyleInfo.BackColor;
		}
		set
		{
			grid.BaseStylesMap["Column Header"].StyleInfo.BackColor = value;
			Refresh();
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("The text color for header cells.")]
	[Browsable(true)]
	public Color HeaderTextColor
	{
		get
		{
			return grid.BaseStylesMap["Column Header"].StyleInfo.TextColor;
		}
		set
		{
			grid.BaseStylesMap["Column Header"].StyleInfo.TextColor = value;
			Refresh();
		}
	}

	[Description("Defines the minimum row height when the user resizes a row with the mouse.")]
	[Browsable(true)]
	[DefaultValue(0)]
	public int MinResizeRowSize
	{
		get
		{
			return Grid.Model.Options.MinResizeRowSize;
		}
		set
		{
			Grid.Model.Options.MinResizeRowSize = value;
		}
	}

	[Description("Defines the minimum column width when the user resizes a column with the mouse.")]
	[Browsable(true)]
	[DefaultValue(0)]
	public int MinResizeColSize
	{
		get
		{
			return Grid.Model.Options.MinResizeColSize;
		}
		set
		{
			Grid.Model.Options.MinResizeColSize = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Manages more options for the grid. Printing related. Also manages colors for grid background, grid lines, and more.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridProperties Properties
	{
		get
		{
			return Grid.Model.Properties;
		}
		set
		{
			Grid.Model.Properties = value;
			Refresh();
		}
	}

	[Description("Defines behavior for resizing rows.")]
	[Browsable(true)]
	[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
	[DefaultValue(GridResizeCellsBehavior.None)]
	public GridResizeCellsBehavior ResizeRowsBehavior
	{
		get
		{
			return Grid.Model.Options.ResizeRowsBehavior;
		}
		set
		{
			Grid.Model.Options.ResizeRowsBehavior = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Defines whether the grid should erase and fill background of cells or only draw cell text.")]
	public bool TransparentBackground
	{
		get
		{
			return Grid.Model.Options.TransparentBackground;
		}
		set
		{
			Grid.Model.Options.TransparentBackground = value;
			Refresh();
		}
	}

	[Description("Specifies the color for alphablended cell selections.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public Color AlphaBlendSelectionColor
	{
		get
		{
			return Grid.Model.Options.AlphaBlendSelectionColor;
		}
		set
		{
			Grid.Model.Options.AlphaBlendSelectionColor = value;
		}
	}

	[Browsable(true)]
	[Description("Specifies if the control should enable its Accessibility support.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool AccessibilityEnabled
	{
		get
		{
			return grid.AccessibilityEnabled;
		}
		set
		{
			grid.AccessibilityEnabled = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override BindingContext BindingContext
	{
		get
		{
			if (bindingContext == null)
			{
				bindingContext = new BindingContext();
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

	[Category("Behavior")]
	[Description("Occurs when the MultiColumn property is changed.")]
	public event EventHandler MultiColumnChanged;

	[Category("Appearance")]
	[Description("Occurs when the SupportsTransparentBackColor property has changed.")]
	public event EventHandler SupportsTransparentBackColorChanged;

	[Category("Appearance")]
	[Description("This event will be fired when the ThemesEnabled property is changed.")]
	public event EventHandler ThemeChanged;

	[Description("Occurs when both OnControlLostFocus and OnLeave occur.")]
	[Category("Focus")]
	public event EventHandler Deactivated;

	public GridListControl()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += GridWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GridListControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= GridWindowsAssembly.AssemblyResolver;
		}
		grid = CreateGridChild();
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.UserMouse, value: true);
		grid.BeginInit();
		grid.SuspendChangeEvents();
		grid.ControllerOptions = GridControllerOptions.SelectCells | GridControllerOptions.ResizeCells;
		grid.Initialize();
		grid.KeyDown += GridKeyDown;
		grid.CausesValidationChanged += GridCausesValidationChanged;
		grid.QueryRowCount += GridQueryRowCount;
		grid.QueryColWidth += GridQueryColWidth;
		grid.QueryCellInfo += GridQueryCellInfo;
		grid.SaveCellInfo += grid_SaveCellInfo;
		grid.QueryColCount += GridQueryColCount;
		grid.PrepareViewStyleInfo += GridPrepareViewStyleInfo;
		grid.CurrentCellMoving += GridCurrentCellMoving;
		grid.CurrentCellActivating += GridCurrentCellActivating;
		grid.CurrentCellActivated += GridCurrentCellActivated;
		grid.CurrentCellDeactivated += GridCurrentCellDeactivated;
		grid.ResizingColumns += GridResizingColumns;
		grid.SelectionChanged += GridSelectionChanged;
		grid.GotFocus += GridGotFocus;
		grid.LostFocus += GridLostFocus;
		grid.Paint += GridPaint;
		grid.MouseWheel += GridMouseWheel;
		grid.MouseUp += GridMouseUp;
		grid.MouseMove += GridMouseMove;
		grid.MouseHover += GridMouseHover;
		grid.MouseLeave += GridMouseLeave;
		grid.MouseEnter += GridMouseEnter;
		grid.GridControlMouseMove += GridBeforeMouseMove;
		grid.MouseDown += GridMouseDown;
		grid.KeyUp += GridKeyUp;
		grid.KeyPress += GridKeyPress;
		grid.HelpRequested += GridHelpRequested;
		grid.DragDrop += GridDragDrop;
		grid.DragLeave += GridDragLeave;
		grid.DragOver += GridDragOver;
		grid.DragEnter += GridDragEnter;
		grid.DoubleClick += GridDoubleClick;
		grid.Click += GridClick;
		grid.ContextMenuChanged += GridContextMenuChanged;
		grid.InsideScrollMargins = Size.Empty;
		grid.CommandStack.Enabled = false;
		grid.Rows.DefaultSize = 17;
		grid.Cols.DefaultSize = 65;
		grid.RowHeights[0] = 21;
		grid.ColWidths[0] = 0;
		grid.ExcelLikeCurrentCell = false;
		grid.ExcelLikeSelectionFrame = false;
		grid.AllowDragSelectedCols = false;
		grid.AllowDragSelectedRows = false;
		grid.CommandStack.Enabled = false;
		grid.FloatCellsMode = GridFloatCellsMode.None;
		grid.NumberedColHeaders = false;
		grid.NumberedRowHeaders = false;
		grid.Dock = DockStyle.Fill;
		grid.BackColor = SystemColors.Window;
		grid.ListBoxSelectionMode = SelectionMode.One;
		grid.Model.Options.MulitExtendedArrowKeySelect = false;
		ResetBaseStyles();
		grid.Properties.BackgroundColor = SystemColors.Window;
		grid.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways;
		grid.AllowSelection = GridSelectionFlags.Row | GridSelectionFlags.AlphaBlend;
		grid.ResizeRowsBehavior = GridResizeCellsBehavior.None;
		grid.ResizeColsBehavior = GridResizeCellsBehavior.ResizeSingle | GridResizeCellsBehavior.InsideGrid;
		grid.TabIndex = 1;
		grid.WantKeys = true;
		BorderStyle = BorderStyle.Fixed3D;
		grid.VerticalThumbTrack = true;
		grid.HorizontalThumbTrack = true;
		grid.WantTabKey = false;
		grid.CurrentCell.ActivateOnGotFocus = true;
		SuspendLayout();
		base.Controls.Add(grid);
		grid.ResumeChangeEvents();
		ResumeLayout(performLayout: false);
		grid.EndInit();
	}

	private void grid_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)
	{
		e.Handled = true;
	}

	[DocumentationExclude]
	protected virtual GridListControlChild CreateGridChild()
	{
		return new GridListControlChild(this);
	}

	private void ResetBaseStyles()
	{
		grid.BaseStylesMap.RegisterStandardStyles();
		GridStyleInfo styleInfo = grid.BaseStylesMap["Standard"].StyleInfo;
		styleInfo.CellType = "Static";
		styleInfo.Trimming = StringTrimming.EllipsisCharacter;
		grid.BaseStylesMap["Header"].StyleInfo.Enabled = true;
		grid.BaseStylesMap["Column Header"].StyleInfo.Enabled = false;
		grid.BaseStylesMap["Row Header"].StyleInfo.Enabled = true;
		grid.BaseStylesMap.Modified = false;
	}

	private void _ControlAdded(ControlEventArgs e)
	{
		MakeTransparent(e.Control, SupportsTransparentBackColor);
	}

	private void MakeTransparent(Control control, bool value)
	{
		MethodInfo method = typeof(Control).GetMethod("SetStyle", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			method.Invoke(control, new object[2]
			{
				ControlStyles.SupportsTransparentBackColor,
				value
			});
		}
	}

	protected virtual void OnSupportsTransparentBackColorChanged(EventArgs e)
	{
		if (this.SupportsTransparentBackColorChanged != null)
		{
			this.SupportsTransparentBackColorChanged(this, e);
		}
	}

	private void GridResizingColumns(object sender, GridResizingColumnsEventArgs e)
	{
		if (e.Reason == GridResizeCellsReason.DoubleClick)
		{
			GridRangeInfo range = grid.Selections.Ranges.GetRangesContaining(e.Columns).ActiveRange.UnionRange(e.Columns);
			grid.Model.ColWidths.ResizeToFit(grid.ViewLayout.VisibleCellsRange.IntersectRange(range), GridResizeToFitOptions.IncludeHeaders);
			e.Cancel = true;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			isDisposing = true;
			base.DataSource = null;
			if (gridListControlSource != null)
			{
				gridListControlSource.ItemPropertiesChanged -= gridListControlSource_ItemPropertiesChanged;
			}
			if (_themedDrawing != null)
			{
				_themedDrawing.Dispose();
				_themedDrawing = null;
			}
		}
		base.Dispose(disposing);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 522:
			WmMouseWheel(ref m);
			return;
		case 133:
			WmNcPaint(ref m);
			break;
		}
		base.WndProc(ref m);
	}

	private void WmNcPaint(ref Message msg)
	{
		if (XPThemes.IsThemedOS && ((IThemedControl)this).ThemesEnabled && themedDrawing != null && !forceNonThemedBorder)
		{
			themedDrawing.DrawThemedBorderColor(this, ref msg);
		}
		base.WndProc(ref msg);
	}

	private void WmMouseWheel(ref Message m)
	{
		if (grid != null && !base.ContainsFocus)
		{
			Point p = new Point((short)(int)m.LParam, (int)m.LParam >> 16);
			p = grid.PointToClient(p);
			int num = (int)m.WParam.ToInt64();
			num >>= 16;
			grid.RaiseMouseWheel(new MouseEventArgs(MouseButtons.None, 0, p.X, p.Y, num));
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	public void SetDataBinding(BindingContext bindingContext, object dataSource, string displayMember, string valueMember)
	{
		if (base.DataManager == null || bindingContext != BindingContext || dataSource != base.DataSource || displayMember != base.DisplayMember || valueMember != base.ValueMember)
		{
			inSetData = true;
			SelectedIndex = -1;
			base.DataSource = null;
			base.DisplayMember = string.Empty;
			base.ValueMember = string.Empty;
			base.DisplayMember = displayMember;
			base.ValueMember = valueMember;
			base.DataSource = dataSource;
			BindingContext = bindingContext;
			OnBindingContextChanged(EventArgs.Empty);
			inSetData = false;
			resizeToFit = true;
			SetItemsCore(null);
		}
	}

	private bool ShouldSerializeImageList()
	{
		return imageList != null;
	}

	private void GridQueryColCount(object sender, GridRowColCountEventArgs e)
	{
		if (columnsDirty && base.DataManager != null)
		{
			SetItemsCore(base.DataManager.List);
		}
		if (ListManager == null)
		{
			e.Count = 255;
		}
		else if (multiColumn)
		{
			if (gridListControlSource != null)
			{
				e.Count = gridListControlSource.GetVisibleColumnCount();
			}
			else
			{
				e.Count = columns.Count;
			}
		}
		else
		{
			e.Count = 1;
		}
		e.Handled = true;
	}

	public void BeginInit()
	{
		if (inInit)
		{
			throw new Exception("BeginInit called twice.");
		}
		inInit = true;
		BeginUpdate();
	}

	public void EndInit()
	{
		inInit = false;
		EndUpdate();
	}

	public GridStyleInfo GetColumnStyle(int colNum)
	{
		return (GridStyleInfo)columns[colNum];
	}

	internal void InitializeColumns(CurrencyManager listManager)
	{
		if (inSetData || inInit)
		{
			return;
		}
		columnsDirty = false;
		grid.BeginUpdate();
		try
		{
			columns = new ArrayList();
			if (listManager == null)
			{
				return;
			}
			PropertyDescriptorCollection itemProperties = listManager.GetItemProperties();
			int count = itemProperties.Count;
			int num = 0;
			imageDescriptor = null;
			for (int i = 0; i < count; i++)
			{
				PropertyDescriptor propertyDescriptor = itemProperties[i];
				if (propertyDescriptor.IsBrowsable && !PropertyDescriptorIsARelation(propertyDescriptor))
				{
					if (propertyDescriptor.Name == "ImageIndex")
					{
						imageDescriptor = propertyDescriptor;
					}
					else if (multiColumn || (num == 0 && GridUtil.IsEmpty(base.DisplayMember)) || propertyDescriptor.Name == base.DisplayMember)
					{
						num++;
						CreateGridColumn(propertyDescriptor, num);
					}
				}
			}
			grid.ViewLayout.Reset();
			resizeToFit = true;
		}
		finally
		{
			grid.EndUpdate();
			grid.ResetVolatileData();
		}
	}

	public virtual void CreateGridColumn(PropertyDescriptor pd, int column)
	{
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		columns.Add(gridStyleInfo);
		Type type = (gridStyleInfo.CellValueType = pd.PropertyType);
		if (type.Equals(typeof(bool)))
		{
			gridStyleInfo.CellType = "GridCheckBoxCell";
		}
		else if (!type.Equals(typeof(string)))
		{
			if (type.Equals(typeof(DateTime)))
			{
				gridStyleInfo.Format = "d";
			}
			else if (type.Equals(typeof(short)) || type.Equals(typeof(int)) || type.Equals(typeof(long)) || type.Equals(typeof(ushort)) || type.Equals(typeof(uint)) || type.Equals(typeof(ulong)) || type.Equals(typeof(decimal)) || type.Equals(typeof(double)) || type.Equals(typeof(float)) || type.Equals(typeof(byte)) || type.Equals(typeof(sbyte)))
			{
				gridStyleInfo.Format = "G";
				gridStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right;
			}
			else if (type == typeof(decimal))
			{
				gridStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right;
			}
		}
		gridStyleInfo.Tag = pd;
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		Grid.ViewLayout.Reset();
		Invalidate();
	}

	public virtual int FindItem(string prefix, bool selectItem, int start, bool ignoreCase)
	{
		string itemText;
		int num = FindItemInternal(Items, prefix, start, ignoreCase, out itemText);
		if (selectItem && num != SelectedIndex)
		{
			SelectedIndex = num;
		}
		return num;
	}

	internal int FindItemInternal(IList items, string prefix, int start, bool ignoreCase, out string itemText)
	{
		return FindItemInternal(items, prefix, start, ignoreCase, exact: false, out itemText);
	}

	internal int FindItemInternal(IList items, string prefix, int start, bool ignoreCase, bool exact, out string itemText)
	{
		if (ignoreCase)
		{
			prefix = prefix.ToUpper(CultureInfo.CurrentCulture);
		}
		int count = items.Count;
		for (int i = 0; i < count; i++)
		{
			int num = (i + start + 1) % count;
			itemText = GetItemText(items[num]);
			string text = itemText;
			if (ignoreCase)
			{
				text = text.ToUpper(CultureInfo.CurrentCulture);
			}
			if (exact)
			{
				if (prefix == text)
				{
					return num;
				}
			}
			else if (text.Length >= prefix.Length)
			{
				text = text.Substring(0, prefix.Length);
				if (prefix == text)
				{
					return num;
				}
			}
		}
		itemText = string.Empty;
		return -1;
	}

	protected virtual void GridSelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		if (e.Range.Top > 0 && grid.CurrentCell.HasCurrentCell && grid.CurrentCell.RowIndex > 0)
		{
			SelectedIndex = grid.CurrentCell.RowIndex - 1;
		}
	}

	protected virtual void GridQueryColWidth(object sender, GridRowColSizeEventArgs e)
	{
		if (gridListControlSource != null)
		{
			if (fillLastColumn && e.Index == Grid.ColCount)
			{
				int num = ((Grid.ColCount > 0) ? Grid.ColWidths.GetTotal(0, Grid.ColCount - 1) : 0);
				e.Size = Grid.ClientRectangle.Width - num;
				e.Handled = true;
			}
			else if (e.Index > 0)
			{
				if (base.DataSource is IGridListControlSource)
				{
					e.Size = gridListControlSource.GetWidth(e.Index - 1);
					e.Handled = true;
				}
			}
			else
			{
				e.Size = 0;
				e.Handled = true;
			}
		}
		else if (fillLastColumn && e.Index == Grid.ColCount)
		{
			int num2 = ((Grid.ColCount > 0) ? Grid.ColWidths.GetTotal(0, Grid.ColCount - 1) : 0);
			e.Size = Grid.ClientRectangle.Width - num2;
			e.Handled = true;
		}
	}

	protected virtual void GridKeyDown(object sender, KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (e.Handled)
		{
			return;
		}
		Keys modifierKeys = Control.ModifierKeys;
		Keys keys = e.KeyCode & Keys.KeyCode;
		_ = e.Modifiers;
		_ = e.Modifiers;
		bool extendSelection = (modifierKeys & Keys.Shift) != 0;
		_ = e.Modifiers;
		switch (keys)
		{
		case Keys.Space:
			if (selectionMode == SelectionMode.MultiExtended || selectionMode == SelectionMode.MultiSimple)
			{
				GridRangeInfo range = GridRangeInfo.Row(grid.CurrentCell.RowIndex);
				grid.Selections.SelectRange(range, !grid.Selections.Ranges.AnyRangeContains(range));
				e.Handled = true;
			}
			break;
		case Keys.Home:
			grid.CurrentCell.Move(GridDirectionType.Top, 1, extendSelection);
			e.Handled = true;
			break;
		case Keys.End:
			grid.CurrentCell.Move(GridDirectionType.Bottom, 1, extendSelection);
			e.Handled = true;
			break;
		case Keys.Next:
			grid.CurrentCell.Move(GridDirectionType.PageDown, 1, extendSelection);
			e.Handled = true;
			break;
		case Keys.Prior:
			grid.CurrentCell.Move(GridDirectionType.PageUp, 1, extendSelection);
			e.Handled = true;
			break;
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		GridKeyDown(this, e);
	}

	private bool PropertyDescriptorIsARelation(PropertyDescriptor prop)
	{
		if (typeof(IList).IsAssignableFrom(prop.PropertyType))
		{
			return !typeof(Array).IsAssignableFrom(prop.PropertyType);
		}
		return false;
	}

	private void GridGotFocus(object sender, EventArgs e)
	{
	}

	private void GridLostFocus(object sender, EventArgs e)
	{
		if (SelectedIndex != -1)
		{
			RefreshItem(SelectedIndex);
		}
	}

	private void GridChangeUICues(object sender, UICuesEventArgs e)
	{
		Grid.Invalidate();
		uiCues = e.ShowFocus || e.ShowKeyboard;
		base.OnChangeUICues(e);
	}

	protected override void OnChangeUICues(UICuesEventArgs e)
	{
		Grid.Invalidate();
		base.OnChangeUICues(e);
	}

	private void CheckIndex(int index)
	{
		if (index < -1 || index >= Items.Count)
		{
			throw new ArgumentOutOfRangeException(SR.GetString("IndexOutOfRange", index));
		}
	}

	private void CheckNoDataSource()
	{
		if (base.DataSource != null)
		{
			throw new ArgumentException(SR.GetString("DataSourceLocksItems"));
		}
	}

	public void ClearSelected()
	{
		if (grid.Selections.Count > 0)
		{
			grid.Selections.Clear();
			OnSelectedIndexChanged(EventArgs.Empty);
		}
	}

	public int FindString(string s)
	{
		return FindString(s, 0);
	}

	public int FindString(string s, int startIndex)
	{
		CheckIndex(startIndex);
		string itemText;
		return FindItemInternal(Items, s, startIndex, ignoreCase: true, out itemText);
	}

	public int FindStringExact(string s)
	{
		return FindStringExact(s, -1);
	}

	public int FindStringExact(string s, int startIndex)
	{
		CheckIndex(startIndex);
		string itemText;
		return FindItemInternal(Items, s, startIndex, ignoreCase: false, exact: true, out itemText);
	}

	public int GetItemHeight(int index)
	{
		CheckIndex(index);
		return Grid.RowHeights[index + 1];
	}

	public Rectangle GetItemRectangle(int index)
	{
		CheckIndex(index);
		return Grid.RangeInfoToRectangle(GridRangeInfo.Row(index + 1));
	}

	public bool GetSelected(int index)
	{
		CheckIndex(index);
		return Grid.Selections.Ranges.AnyRangeContains(GridRangeInfo.Row(index + 1));
	}

	public int IndexFromPoint(Point p)
	{
		grid.PointToRowCol(p, out var rowIndex, out var _, -1);
		if (rowIndex != -1)
		{
			return rowIndex - 1;
		}
		return -1;
	}

	public int IndexFromPoint(int x, int y)
	{
		return IndexFromPoint(new Point(x, y));
	}

	protected override void SetItemCore(int index, object value)
	{
		grid.InvalidateRange(GridRangeInfo.Row(index + 1));
	}

	public void BeginUpdate()
	{
		updateCount++;
	}

	public void EndUpdate()
	{
		if (--updateCount == 0)
		{
			SetItemsCore(null);
			PerformLayout();
		}
	}

	protected override void SetItemsCore(IList items)
	{
		if (!inInitLayout && !inSetData && !Updating && base.DataManager != null)
		{
			grid.BeginUpdate();
			InitializeColumns(base.DataManager);
			int num = (FillLastColumn ? 1 : 0);
			if (autoResize && grid.ColCount > num)
			{
				grid.ColWidths.ResizeToFit(GridRangeInfo.Cells(0, 1, Math.Min(40, grid.RowCount), grid.ColCount - num), GridResizeToFitOptions.NoShrinkSize | GridResizeToFitOptions.IncludeHeaders);
			}
			grid.HideCols[0] = true;
			grid.RowHeights.ResizeToFit(GridRangeInfo.Row(0), GridResizeToFitOptions.NoShrinkSize | GridResizeToFitOptions.IncludeHeaders);
			Graphics graphics = CreateGraphics();
			ItemHeight = grid.CalculatePreferredCellSize(graphics, 1, 1, GridQueryBounds.Height).Height;
			graphics.Dispose();
			grid.EndUpdate(update: false);
			grid.Invalidate();
		}
	}

	protected override void RefreshItem(int index)
	{
		Grid.ResetVolatileData();
		grid.InvalidateRange(GridRangeInfo.Row(index + 1));
	}

	protected override void InitLayout()
	{
		inInitLayout = true;
		base.InitLayout();
		Grid.ViewLayout.Reset();
		Invalidate();
		inInitLayout = false;
	}

	protected override void OnBindingContextChanged(EventArgs e)
	{
		Grid.ResetVolatileData();
		base.OnBindingContextChanged(e);
	}

	protected override void OnDataSourceChanged(EventArgs e)
	{
		if (gridListControlSource != null)
		{
			gridListControlSource.ItemPropertiesChanged -= gridListControlSource_ItemPropertiesChanged;
		}
		gridListControlSource = base.DataSource as IGridListControlSource;
		if (gridListControlSource != null)
		{
			gridListControlSource.ItemPropertiesChanged += gridListControlSource_ItemPropertiesChanged;
		}
		Grid.ResetVolatileData();
		columnsDirty = true;
		base.OnDataSourceChanged(e);
		if (!isDisposing && base.IsHandleCreated)
		{
			BeginInvoke(new EventHandler(delayRefresh), this, null);
		}
	}

	private void delayRefresh(object sender, EventArgs e)
	{
		Refresh();
	}

	protected override void OnDisplayMemberChanged(EventArgs e)
	{
		Grid.ResetVolatileData();
		base.OnDisplayMemberChanged(e);
	}

	protected override void OnSelectedIndexChanged(EventArgs e)
	{
		base.OnSelectedIndexChanged(e);
		if (base.DataManager != null && base.DataManager.Position != SelectedIndex && SelectedIndex != -1)
		{
			base.DataManager.Position = SelectedIndex;
		}
		grid._AccessibilityNotifyClients(AccessibleEvents.Focus, SelectedIndex);
		grid._AccessibilityNotifyClients(AccessibleEvents.Selection, SelectedIndex);
	}

	protected override void OnSelectedValueChanged(EventArgs e)
	{
		base.OnSelectedValueChanged(e);
	}

	protected override void OnValueMemberChanged(EventArgs e)
	{
		Grid.ResetVolatileData();
		base.OnValueMemberChanged(e);
	}

	private void RefreshRows(CurrencyManager bmb)
	{
		grid.CurrentCell.Deactivate(discardChanges: true);
		grid.ResetVolatileData();
		if (autoResize)
		{
			grid.ColWidths.ResizeToFit(GridRangeInfo.Rows(grid.TopRowIndex, grid.ViewLayout.LastVisibleRow), GridResizeToFitOptions.IncludeHeaders);
		}
		Grid.ViewLayout.Reset();
		grid.UpdateScrollBars();
		grid.Refresh();
	}

	private void GridQueryRowCount(object sender, GridRowColCountEventArgs e)
	{
		if (ListManager != null)
		{
			e.Count = ListManager.Count;
			e.Handled = true;
		}
	}

	private void GridQueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		if (columnsDirty)
		{
			InitializeColumns(base.DataManager);
		}
		int num = e.ColIndex - 1;
		if (ListManager == null || columns == null || num < 0 || num >= columns.Count)
		{
			return;
		}
		GridStyleInfo columnStyle = GetColumnStyle(num);
		PropertyDescriptor propertyDescriptor = columnStyle.Tag as PropertyDescriptor;
		if (e.RowIndex < 0)
		{
			e.Style.ModifyStyle(columnStyle, StyleModifyType.Override);
			e.Handled = true;
		}
		else if (e.RowIndex == 0)
		{
			e.Style.CellValue = propertyDescriptor.Name;
			if (gridListControlSource != null)
			{
				GridStyleInfo style = gridListControlSource.GetStyle(e.RowIndex - 1, e.ColIndex);
				e.Style.ModifyStyle(style, StyleModifyType.Override);
				e.Style.Identity.InnerIdentity = style.Identity;
			}
			e.Handled = true;
		}
		else
		{
			if (e.RowIndex <= 0 || e.RowIndex > ListManager.Count)
			{
				return;
			}
			try
			{
				if (e.ColIndex == imageColumn && imageList != null && imageDescriptor != null)
				{
					e.Style.ImageIndex = Convert.ToInt32(imageDescriptor.GetValue(ListManager.List[e.RowIndex - 1]));
					e.Style.ImageList = imageList;
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
			e.Style.CellValue = propertyDescriptor.GetValue(ListManager.List[e.RowIndex - 1]);
			if (gridListControlSource != null)
			{
				GridStyleInfo style2 = gridListControlSource.GetStyle(e.RowIndex - 1, e.ColIndex);
				e.Style.ModifyStyle(style2, StyleModifyType.Override);
				e.Style.Identity.InnerIdentity = style2.Identity;
			}
			e.Handled = true;
		}
	}

	private void GridPrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
	{
		if (ListManager != null && e.RowIndex > 0)
		{
			if (e.ColIndex <= 0)
			{
				return;
			}
			e.Style.TextMargins.Left = 2;
			e.Style.TextMargins.Right = 2;
			e.Style.TextMargins.Top = 2;
			if (grid.HasControlFocus && grid.CurrentCell.HasCurrentCellAt(e.RowIndex))
			{
				GridBorder top = new GridBorder(GridBorderStyle.Dotted, SystemColors.Highlight);
				GridBorder gridBorder = new GridBorder(GridBorderStyle.Dotted, SystemColors.Highlight, GridBorderWeight.Thick);
				if (grid.DefaultGridBorderStyle == GridBorderStyle.None)
				{
					e.Style.TextMargins.Top = 1;
					e.Style.Borders.Top = top;
				}
				else
				{
					e.Style.TextMargins.Top = 1;
					e.Style.Borders.Top = top;
				}
				e.Style.Borders.Bottom = gridBorder;
				if (e.ColIndex == 1)
				{
					e.Style.TextMargins.Left = 0;
					e.Style.Borders.Left = gridBorder;
				}
				if (e.ColIndex == grid.ColCount)
				{
					e.Style.Borders.Right = gridBorder;
					e.Style.TextMargins.Right = 0;
				}
			}
		}
		else if (e.RowIndex == 0 && e.Style.Description.Length > 0)
		{
			e.Style.CellValue = e.Style.Description;
		}
	}

	public virtual int GetRowCount(object dataSource)
	{
		if (ListManager != null)
		{
			return ListManager.Count;
		}
		return 0;
	}

	protected virtual void GridCurrentCellMoving(object sender, GridCurrentCellMovingEventArgs e)
	{
		e.ColIndex = 0;
		e.Options = GridSetCurrentCellOptions.NoSetFocus | GridSetCurrentCellOptions.NoSyncCurrentCell | GridSetCurrentCellOptions.BeginEndUpdate;
		if (!disableScrollInView)
		{
			e.Options |= GridSetCurrentCellOptions.ScrollInView;
		}
		if (selectionMode != SelectionMode.One)
		{
			e.Options |= GridSetCurrentCellOptions.NoSelectRange;
		}
	}

	protected virtual void GridCurrentCellActivating(object sender, GridCurrentCellActivatingEventArgs e)
	{
		e.ColIndex = 0;
	}

	protected virtual void GridCurrentCellDeactivated(object sender, GridCurrentCellDeactivatedEventArgs e)
	{
		if (!grid.CurrentCell.IsInMoveTo || e.RowIndex != grid.CurrentCell.MoveToRowIndex)
		{
			grid.RefreshRange(GridRangeInfo.Row(e.RowIndex), GridRangeOptions.MergeAllSpannedCells);
		}
	}

	protected virtual void GridCurrentCellActivated(object sender, EventArgs e)
	{
		SelectedIndex = grid.CurrentCell.RowIndex - 1;
		if (!grid.CurrentCell.IsInMoveTo || grid.CurrentCell.RowIndex != grid.CurrentCell.MoveFromRowIndex || !grid.CurrentCell.MoveFromActiveState)
		{
			grid.RefreshRange(GridRangeInfo.Row(grid.CurrentCell.RowIndex), GridRangeOptions.MergeAllSpannedCells);
		}
	}

	protected virtual void OnMultiColumnChanged(EventArgs e)
	{
		if (this.MultiColumnChanged != null)
		{
			this.MultiColumnChanged(this, e);
		}
	}

	public void SetSelected(int index, bool value)
	{
		if (value)
		{
			SelectedIndex = index;
			grid.Selections.Add(GridRangeInfo.Row(index + 1));
			return;
		}
		if (SelectedIndex == index)
		{
			grid.CurrentCell.Deactivate(discardChanges: true);
		}
		grid.Selections.Remove(GridRangeInfo.Row(index + 1));
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged == null)
		{
			return;
		}
		try
		{
			this.ThemeChanged(this, e);
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

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		Grid.ViewLayout.Reset();
		Invalidate();
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		grid.ResetBackColor();
		base.OnBackColorChanged(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		grid.TableStyle.Font.Size = Font.SizeInPoints;
		grid.TableStyle.Font.FontStyle = Font.Style;
		base.OnFontChanged(e);
	}

	private void GridPaint(object sender, PaintEventArgs e)
	{
		OnPaint(e);
	}

	private void GridMouseWheel(object sender, MouseEventArgs e)
	{
		OnMouseWheel(e);
	}

	private void GridMouseUp(object sender, MouseEventArgs e)
	{
		OnMouseUp(e);
	}

	private void GridMouseMove(object sender, MouseEventArgs e)
	{
		disableScrollInView = Control.MouseButtons == MouseButtons.None;
		try
		{
			OnMouseMove(e);
		}
		finally
		{
			disableScrollInView = false;
		}
	}

	private void GridBeforeMouseMove(object sender, CancelMouseEventArgs e)
	{
		disableScrollInView = Control.MouseButtons == MouseButtons.None;
	}

	private void GridMouseHover(object sender, EventArgs e)
	{
		OnMouseHover(e);
	}

	private void GridMouseLeave(object sender, EventArgs e)
	{
		OnMouseLeave(e);
	}

	private void GridMouseEnter(object sender, EventArgs e)
	{
		OnMouseEnter(e);
	}

	private void GridMouseDown(object sender, MouseEventArgs e)
	{
		OnMouseDown(e);
	}

	private void GridKeyUp(object sender, KeyEventArgs e)
	{
		OnKeyUp(e);
	}

	private void GridKeyPress(object sender, KeyPressEventArgs e)
	{
		OnKeyPress(e);
	}

	private void GridHelpRequested(object sender, HelpEventArgs hevent)
	{
		OnHelpRequested(hevent);
	}

	private void GridGiveFeedback(object sender, GiveFeedbackEventArgs gfbevent)
	{
		OnGiveFeedback(gfbevent);
	}

	private void GridDragDrop(object sender, DragEventArgs drgevent)
	{
		OnDragDrop(drgevent);
	}

	private void GridDragLeave(object sender, EventArgs e)
	{
		OnDragLeave(e);
	}

	private void GridDragOver(object sender, DragEventArgs drgevent)
	{
		OnDragOver(drgevent);
	}

	private void GridDragEnter(object sender, DragEventArgs drgevent)
	{
		OnDragEnter(drgevent);
	}

	private void GridDoubleClick(object sender, EventArgs e)
	{
		OnDoubleClick(e);
	}

	private void GridClick(object sender, EventArgs e)
	{
		OnClick(e);
	}

	private void GridContextMenuChanged(object sender, EventArgs e)
	{
		OnContextMenuChanged(e);
	}

	protected override void OnCausesValidationChanged(EventArgs e)
	{
		if (grid != null)
		{
			grid.CausesValidation = base.CausesValidation;
		}
	}

	private void GridCausesValidationChanged(object sender, EventArgs e)
	{
		base.CausesValidation = grid.CausesValidation;
	}

	protected override void OnEnter(EventArgs e)
	{
		isActiveControl = true;
		isValidating = false;
		isValidated = false;
		base.OnEnter(e);
	}

	protected override void OnLeave(EventArgs e)
	{
		isActiveControl = false;
		isValidating = false;
		base.OnLeave(e);
		if ((!base.CausesValidation || IsValidated) && !hasControlFocus)
		{
			OnDeactivated(e);
		}
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		isValidating = true;
		base.OnValidating(e);
	}

	protected override void OnValidated(EventArgs e)
	{
		isValidating = false;
		isValidated = true;
		base.OnValidated(e);
		if (!isActiveControl && !hasControlFocus)
		{
			OnDeactivated(e);
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		RaiseControlLostFocus();
	}

	protected override void OnGotFocus(EventArgs e)
	{
		grid.Focus();
		RaiseControlGotFocus();
	}

	protected virtual void OnDeactivated(EventArgs e)
	{
		isDeactivatedCalled = true;
		if (this.Deactivated != null)
		{
			this.Deactivated(this, e);
		}
		if (grid != null)
		{
			grid.Invalidate();
		}
	}

	private void ChildGotFocus(object sender, EventArgs e)
	{
		RaiseControlGotFocus();
	}

	private void ChildLostFocus(object sender, EventArgs e)
	{
		RaiseControlLostFocus();
	}

	public virtual bool QueryFocusInside()
	{
		return base.ContainsFocus;
	}

	protected virtual void OnControlGotFocus()
	{
		base.OnGotFocus(EventArgs.Empty);
		if (grid != null)
		{
			grid.Invalidate();
		}
	}

	protected virtual void OnControlLostFocus()
	{
		base.OnLostFocus(EventArgs.Empty);
		if (!isActiveControl && !isValidating && (!base.CausesValidation || isValidated))
		{
			OnDeactivated(EventArgs.Empty);
			return;
		}
		grid.CancelUpdate();
		if (isValidating)
		{
			OnValidatingLostFocus();
		}
	}

	protected virtual void OnValidatingLostFocus()
	{
	}

	private void RaiseControlGotFocus()
	{
		if (!hasControlFocus)
		{
			hasControlFocus = true;
			OnControlGotFocus();
		}
	}

	private void RaiseControlLostFocus()
	{
		if (hasControlFocus && !QueryFocusInside())
		{
			hasControlFocus = false;
			OnControlLostFocus();
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		e.Control.GotFocus -= ChildGotFocus;
		e.Control.LostFocus -= ChildLostFocus;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.GotFocus += ChildGotFocus;
		e.Control.LostFocus += ChildLostFocus;
		_ControlAdded(e);
	}

	public override void ResetBackColor()
	{
		BackColor = SystemColors.Window;
	}

	private bool ShouldSerializeBackColor()
	{
		return BackColor != SystemColors.Window;
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

	private bool ShouldSerializeHeaderBackColor()
	{
		return grid.BaseStylesMap["Column Header"].StyleInfo.HasInterior;
	}

	public void ResetHeaderBackColor()
	{
		grid.BaseStylesMap["Column Header"].StyleInfo.ResetInterior();
	}

	private bool ShouldSerializeHeaderTextColor()
	{
		return grid.BaseStylesMap["Column Header"].StyleInfo.HasTextColor;
	}

	public void ResetHeaderTextColor()
	{
		grid.BaseStylesMap["Column Header"].StyleInfo.ResetTextColor();
	}

	private bool ShouldSerializeProperties()
	{
		return Grid.Model.Properties.Modified;
	}

	public void ResetProperties()
	{
		Grid.Model.Properties = new GridProperties();
		Grid.Model.Properties.BackgroundColor = SystemColors.Window;
		Grid.Model.Properties.ResetModified();
	}

	public void ResetAlphaBlendSelectionColor()
	{
		AlphaBlendSelectionColor = SystemColors.Highlight;
	}

	public bool ShouldSerializeAlphaBlendSelectionColor()
	{
		if (Grid.Model.Options.AlphaBlendSelectionColor != Color.FromArgb(64, SystemColors.Highlight))
		{
			return (Grid.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) != 0;
		}
		return false;
	}

	public object GetItemValue(object item)
	{
		return ListUtil.GetItemValue(base.DataSource, base.ValueMember, item);
	}

	private void gridListControlSource_ItemPropertiesChanged(object sender, EventArgs e)
	{
		Grid.ResetVolatileData();
		columnsDirty = true;
	}
}
