using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class MenuGridControlBase : GridControlBase, IBarItemContainerControl
{
	protected const int IconColumn = 1;

	protected const int TextColumn = 2;

	protected const int ShortcutColumn = 3;

	protected const int ArrowColumn = 4;

	private const int DEF_STEP = 1;

	internal const int DEF_BORDERRADIUS = 2;

	private BrushInfo brush;

	private bool menuBound;

	protected internal int IconColumnWidth = SystemInformation.MenuCheckSize.Width + 9;

	protected internal int TextColumnWidth = 84;

	protected internal int ShortcutColumnWidth = 50;

	protected internal int ArrowColumnWidth = SystemInformation.MenuCheckSize.Width + 9;

	protected readonly int MenuColCount = 4;

	protected GridRangeInfo lastHighlight = GridRangeInfo.Empty;

	internal ParentBarItem parentItem;

	protected int mouseDownItem = -1;

	protected internal bool fixedWidth;

	protected Point mouseDownPoint = Point.Empty;

	private Timer setCustomizingTimer;

	private MenuGridAccessibleObject asObject;

	private bool initialized;

	internal MenuGridControlBaseWeakContainer menuGridControlBaseWeakContainer;

	private bool m_bIsVistaOS;

	private Point m_prevPoint = Point.Empty;

	private bool m_bScrollOnMouseMove;

	protected BarItem cachedSelectedItem;

	private Regex m_regex = new Regex("[&]{2}|[&]");

	public bool Customizing
	{
		get
		{
			if (MenuBound && parentItem.Manager != null)
			{
				return parentItem.Manager.Customizing;
			}
			return false;
		}
	}

	protected virtual bool MenuBound
	{
		get
		{
			return menuBound;
		}
		set
		{
			if (menuBound == value)
			{
				return;
			}
			menuBound = value;
			if (menuBound)
			{
				base.TopRowIndex = 1;
				parentItem.PropertyChanged += Property_Changed;
				parentItem.Items.ItemPropertyChanged += Property_Changed;
				parentItem.Items.CollectionChanged += ChildCollection_Changed;
				if (parentItem.Manager != null)
				{
					parentItem.Manager.CustomizingItemChanged += CustomizingItemChanged;
				}
				UpdateMenuColors();
				if (asObject != null)
				{
					asObject.SetBarItemContainer(parentItem);
				}
			}
			else
			{
				CurrentCell.Deactivate(discardChanges: true);
				HighlightRange = GridRangeInfo.Empty;
				if (parentItem != null)
				{
					parentItem.PropertyChanged -= Property_Changed;
					if (parentItem.Items != null)
					{
						parentItem.Items.ItemPropertyChanged -= Property_Changed;
						parentItem.Items.CollectionChanged -= ChildCollection_Changed;
					}
					if (parentItem.Manager != null)
					{
						parentItem.Manager.CustomizingItemChanged -= CustomizingItemChanged;
					}
					parentItem = null;
				}
				if (asObject != null)
				{
					asObject.SetBarItemContainer(null);
				}
				ClearBrushInfo();
			}
			FreeObjectCache();
		}
	}

	public GridRangeInfo HighlightRange
	{
		get
		{
			return lastHighlight;
		}
		set
		{
			if (lastHighlight != value)
			{
				FreeObjectCache();
				GridRangeInfo gridRangeInfo = lastHighlight;
				lastHighlight = value;
				if (gridRangeInfo != GridRangeInfo.Empty)
				{
					HideHighlight(gridRangeInfo);
				}
				if (lastHighlight != GridRangeInfo.Empty)
				{
					ShowHighlight(lastHighlight);
				}
			}
		}
	}

	public int SelectedIndex
	{
		get
		{
			if (!MenuBound || HighlightRange == GridRangeInfo.Empty)
			{
				return -1;
			}
			return HighlightRange.Top - 1;
		}
		set
		{
			if (MenuBound)
			{
				if (value == -1)
				{
					HighlightRange = GridRangeInfo.Empty;
				}
				else if (value < parentItem.Items.Count)
				{
					HighlightRange = GridRangeInfo.Row(value + 1);
				}
			}
		}
	}

	public BarItem SelectedItem
	{
		get
		{
			if (SelectedIndex == -1)
			{
				return null;
			}
			return parentItem.Items[SelectedIndex];
		}
		set
		{
			if (!MenuBound)
			{
				return;
			}
			if (value == null)
			{
				SelectedIndex = -1;
				return;
			}
			int num = parentItem.Items.IndexOf(value);
			if (num != -1)
			{
				SelectedIndex = num;
			}
		}
	}

	public ParentBarItem ParentItem => parentItem;

	internal VisualStyle Style
	{
		get
		{
			if (parentItem != null)
			{
				return parentItem.Style;
			}
			return VisualStyle.OfficeXP;
		}
	}

	private Office2007Colors Office2007ColorTable
	{
		get
		{
			Office2007Colors result = Office2007Colors.Default;
			if (parentItem != null && parentItem.barManager != null && parentItem.barManager.commandBarManager != null)
			{
				CommandBarController commandBarController = parentItem.barManager.commandBarManager.GetCommandBarController();
				if (commandBarController != null)
				{
					result = commandBarController.Office2007ColorTable;
				}
			}
			return result;
		}
	}

	internal bool IsVistaOS => m_bIsVistaOS;

	public bool ScrollOnMouseMove
	{
		get
		{
			return m_bScrollOnMouseMove;
		}
		set
		{
			if (value != m_bScrollOnMouseMove)
			{
				m_bScrollOnMouseMove = value;
			}
		}
	}

	public BarItem CurrentHotTrackItem => cachedSelectedItem;

	internal bool ForcedVistaStyle
	{
		set
		{
			if (value)
			{
				m_bIsVistaOS = true;
			}
			else
			{
				m_bIsVistaOS = Environment.OSVersion.Version.Major >= 6;
			}
		}
	}

	protected override void InitializeMouseControllers()
	{
		base.Model.Options.ControllerOptions = GridControllerOptions.None;
		base.MouseControllerDispatcher.Add(new GridSelectCellsMouseController(this));
		base.InitializeMouseControllers();
	}

	static MenuGridControlBase()
	{
		GridControlBase.UseOldHiddenScrollLogic = true;
	}

	public MenuGridControlBase()
	{
		base.Model = new GridModel(ToolsComp.GetPublicType());
		SetStyle(ControlStyles.Selectable, value: false);
		base.HScrollBehavior = GridScrollbarMode.Disabled;
		base.VScrollBehavior = GridScrollbarMode.Disabled;
		InitializeComponent();
		menuGridControlBaseWeakContainer = new MenuGridControlBaseWeakContainer(this);
		MenuColors.MenuColorsChanged += menuGridControlBaseWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += menuGridControlBaseWeakContainer.Office2003ColorsChangedWeakEventHandler;
		setCustomizingTimer = new Timer();
		setCustomizingTimer.Interval = 300;
		setCustomizingTimer.Tick += SetCustomizingItemTick;
		initialized = true;
		firstPaint = false;
		ForcedVistaStyle = false;
	}

	protected internal virtual void JitCode()
	{
		ResizeColumns();
		OnQueryCellInfo(0, 0, GridStyleInfo.Empty, -1);
		MenuBound = MenuBound;
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		if (ParentItem != null)
		{
			asObject = new MenuGridAccessibleObject(ParentItem, this);
			return asObject;
		}
		return null;
	}

	BarItem IBarItemContainerControl.HitTest(int x, int y)
	{
		if (parentItem != null)
		{
			int num = HitTestBarItemIndex(PointToClient(new Point(x, y)));
			if (num >= 0)
			{
				return parentItem.Items[num];
			}
			return null;
		}
		return null;
	}

	Rectangle IBarItemContainerControl.GetBoundsOf(BarItem item)
	{
		Rectangle boundsOf = GetBoundsOf(item);
		return RectangleToScreen(boundsOf);
	}

	public Rectangle GetBoundsOf(BarItem item)
	{
		if (parentItem != null)
		{
			int num = parentItem.Items.IndexOf(item) + 1;
			if (num != 0)
			{
				return RangeInfoToRectangle(GridRangeInfo.Row(num), GridRangeOptions.None);
			}
		}
		return Rectangle.Empty;
	}

	AccessibleStates IBarItemContainerControl.GetAccessibilityState(BarItem item)
	{
		AccessibleStates accessibleStates = AccessibleStates.None;
		if (item.Checked)
		{
			accessibleStates |= AccessibleStates.Checked;
		}
		accessibleStates = ((!item.Enabled) ? (accessibleStates | AccessibleStates.Unavailable) : (accessibleStates | AccessibleStates.Focusable));
		if (MenuBound && HighlightRange.Top > 0)
		{
			BarItem barItem = parentItem.Items[HighlightRange.Top - 1];
			if (item == barItem)
			{
				accessibleStates |= AccessibleStates.Focused;
			}
		}
		return accessibleStates;
	}

	internal void MenuColorsChanged(object sender, EventArgs e)
	{
		UpdateMenuColors();
	}

	private void UpdateMenuColors()
	{
		base.Model.Properties.BackgroundColor = MenuColors.MenuBGColor;
		GridStyleInfo styleInfo = base.Model.BaseStylesMap["Standard"].StyleInfo;
		brush = new BrushInfo(MenuColors.MenuBGColor);
		styleInfo.Interior = brush;
		base.Model.ColWidths[1] = IconColumnWidth;
	}

	private void ClearBrushInfo()
	{
		if (brush != null)
		{
			brush.ClearColorInfo();
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			MenuColors.MenuColorsChanged -= MenuColorsChanged;
			Office2003Colors.MenuColorsChanged -= MenuColorsChanged;
			setCustomizingTimer.Tick -= SetCustomizingItemTick;
		}
		base.Dispose(disposing);
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
		if (MenuBound)
		{
			Refresh();
		}
	}

	protected override void WireModel()
	{
		base.WireModel();
		if (base.Model != null)
		{
			base.Model.QueryColCount += Model_QueryColCount;
			base.Model.SaveCellInfo += ModelSaveCellInfo;
			base.Model.QueryCellInfo += ModelQueryCellInfo;
			base.Model.QueryRowCount += ModelQueryRowCount;
			base.Model.QueryRowHeight += ModelQueryRowHeight;
			base.Model.QueryCoveredRange += ModelQueryCoveredRange;
		}
	}

	protected override void UnwireModel()
	{
		base.UnwireModel();
		if (base.Model != null)
		{
			base.Model.QueryColCount -= Model_QueryColCount;
			base.Model.SaveCellInfo -= ModelSaveCellInfo;
			base.Model.QueryCellInfo -= ModelQueryCellInfo;
			base.Model.QueryRowCount -= ModelQueryRowCount;
			base.Model.QueryRowHeight -= ModelQueryRowHeight;
			base.Model.QueryCoveredRange -= ModelQueryCoveredRange;
		}
	}

	protected virtual void InitializeComponent()
	{
		base.Model.BeginInit();
		this.SetupGridMenuLike();
		base.Model.EndInit();
	}

	protected virtual void SetupGridMenuLike()
	{
		base.Model.CommandStack.Enabled = false;
		base.Model.Options.ExcelLikeCurrentCell = false;
		base.Model.Options.ExcelLikeSelectionFrame = false;
		base.Model.Options.DefaultGridBorderStyle = GridBorderStyle.None;
		base.Model.Options.ResizeRowsBehavior = GridResizeCellsBehavior.None;
		base.Model.Options.ResizeColsBehavior = GridResizeCellsBehavior.None;
		base.Model.Options.AllowSelection = GridSelectionFlags.None;
		base.Model.Options.AllowDragSelectedCols = false;
		base.Model.Options.AllowDragSelectedRows = false;
		base.Model.Options.HorizontalThumbTrack = false;
		base.Model.Options.VerticalThumbTrack = false;
		base.Model.Options.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways;
		base.Model.Options.DefaultGridBorderStyle = GridBorderStyle.None;
		base.Model.Options.EnterKeyBehavior = GridDirectionType.None;
		base.Model.Data.ColCount = MenuColCount;
		base.Model.Properties.BackgroundColor = MenuColors.MenuBGColor;
		base.Model.Cols.DefaultSize = SystemInformation.MenuCheckSize.Width + 9;
		base.Model.Rows.DefaultSize = ((SystemInformation.MenuHeight < 22) ? 22 : SystemInformation.MenuHeight);
		base.Model.HideCols[0] = true;
		base.Model.HideRows[0] = true;
		GridStyleInfo styleInfo = base.Model.BaseStylesMap["Standard"].StyleInfo;
		styleInfo.Interior = new BrushInfo(MenuColors.MenuBGColor);
		Font menuFont = SystemInformation.MenuFont;
		SetStyleInfoFontFromGdipFont(styleInfo, menuFont);
		styleInfo.VerticalAlignment = GridVerticalAlignment.Middle;
		styleInfo.CellType = "Static";
		styleInfo.WrapText = false;
		styleInfo.Tag = null;
		styleInfo.CellValueType = typeof(string);
		styleInfo.HorizontalAlignment = GridHorizontalAlignment.Left;
		base.Model.Options.FloatCellsMode = GridFloatCellsMode.None;
		base.Model.CellModels.Add("TextBox", new TextBoxCellModel(base.Model));
		base.Model.CellModels.Add("MenuTextCell", new MenuTextCellModel(base.Model));
		base.Model.CellModels.Add("CheckMarkCell", new CheckMarkCellModel(base.Model));
		base.Model.CellModels.Add("IconCell", new IconCellModel(base.Model));
		base.Model.CellModels.Add("MenuGlyphCell", new MenuGlyphCellModel(base.Model));
		base.Model.CellModels.Add("SeparatorCell", new SeparatorCellModel(base.Model));
		base.Model.CellModels.Add("ShortcutCell", new ShortcutCellModel(base.Model));
		base.Model.CellModels.Add("ComboBox", new MenuComboBoxCellModel(base.Model, supportsTextBox: true));
		base.Model.CellModels.Add("ComboBox_ListboxMode", new MenuComboBoxCellModel(base.Model, supportsTextBox: false));
		foreach (DictionaryEntry cellModel in base.Model.CellModels)
		{
			base.CellRenderers.Add((string)cellModel.Key, ((GridCellModelBase)cellModel.Value).CreateRenderer(this));
		}
		InitMenuGrid();
	}

	private void SetStyleInfoFontFromGdipFont(GridStyleInfo si, Font newfont)
	{
		si.Font.FontStyle = newfont.Style;
		si.Font.Facename = newfont.Name;
		si.Font.Size = newfont.SizeInPoints;
	}

	protected virtual void InitMenuGrid()
	{
		base.Model.ColWidths[1] = IconColumnWidth;
		base.Model.ColWidths[4] = ArrowColumnWidth;
		base.Model.ColStyles[2].TextMargins.Left = 5;
		UpdateMenuColors();
	}

	protected virtual void CustomizingItemChanged(object sender, EventArgs e)
	{
		FreeObjectCache();
		Refresh();
	}

	protected virtual void Property_Changed(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (sender == parentItem)
		{
			RefreshMenuGrid(bNoShow: false);
		}
		else
		{
			if (!(e.PropertyName != "SeparatorIndices"))
			{
				return;
			}
			if (e.PropertyChangeEffect == PropertyChangeEffect.NeedRepaint || e.PropertyName == "Text" || e.PropertyName == "ImageIndex" || e.PropertyName == "Shortcut" || (e.PropertyName == "Checked" && base.Model.ColWidths[1] > 0))
			{
				int num = parentItem.Items.IndexOf(sender);
				if (num != -1)
				{
					FreeObjectCache();
					InvalidateRange(GridRangeInfo.Row(num + 1));
				}
			}
			else
			{
				RefreshMenuGrid(bNoShow: false);
			}
		}
	}

	private void ChildCollection_Changed(object sender, CollectionChangeEventArgs e)
	{
		try
		{
			BeginUpdate(BeginUpdateOptions.Invalidate);
			HighlightRange = GridRangeInfo.Empty;
			RefreshMenuGrid(bNoShow: true);
			OnChildCollectionChanged(sender, e);
		}
		finally
		{
			EndUpdate();
		}
	}

	protected virtual void OnChildCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
	}

	protected void FreeObjectCache()
	{
		base.ViewLayout.Reset();
		base.Model.ResetVolatileData();
		base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Table());
	}

	private void ModelSaveCellInfo(object sender, GridSaveCellInfoEventArgs e)
	{
		if (parentItem == null || e.RowIndex <= 0)
		{
			return;
		}
		BarItem barItem = parentItem.Items[e.RowIndex - 1];
		int num = ((barItem.Text.Length > 0) ? 3 : 2);
		if (e.ColIndex == num)
		{
			if (barItem is IRequiresControl requiresControl)
			{
				requiresControl.Value = e.Style.CellValue as string;
			}
			e.Handled = true;
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (e.Button == MouseButtons.Left)
		{
			Point point = new Point(e.X, e.Y);
			SetSelectionAt(point);
			mouseDownPoint = point;
			mouseDownItem = HitTestBarItemIndex(point);
			if (!IsSelectable(mouseDownItem + 1))
			{
				mouseDownItem = -1;
			}
		}
	}

	protected override void OnLeftColChanging(GridRowColIndexChangingEventArgs e)
	{
		if (e.Value != 1)
		{
			e.Cancel = true;
		}
	}

	protected virtual void ResetDragging()
	{
		mouseDownItem = -1;
	}

	public static bool ShouldDrawVisible(ParentBarItem parentItem, BarItem item, bool customizing)
	{
		if (item is ListBarItem && !customizing && ((ListBarItem)item).ChildCaptions.Count > 0)
		{
			return false;
		}
		if (item is SeparatorItem || item.Manager == null)
		{
			return item.Visible;
		}
		MainFrameBarManager mainFrameBarManager = item.Manager.MainFrameBarManager;
		bool flag = true;
		flag = mainFrameBarManager?.ShouldDrawVisible(item) ?? (item.Visible || customizing);
		if (flag && parentItem != null)
		{
			flag = parentItem.ShouldDrawVisible(item);
		}
		return flag;
	}

	protected int HitTestBarItemIndex(Point pointAt)
	{
		GridRangeInfo gridRangeInfo = PointToRangeInfo(pointAt, -1);
		if (!gridRangeInfo.IsEmpty)
		{
			return gridRangeInfo.Top - 1;
		}
		return -1;
	}

	protected BarItem SetSelectionAt(Point point)
	{
		GridRangeInfo gridRangeInfo = ((HighlightRange == GridRangeInfo.Empty) ? PointToRangeInfo(point, -1) : HighlightRange);
		int total = base.Model.RowHeights.GetTotal(0, base.Model.RowCount);
		bool flag = total > base.Height;
		gridRangeInfo = ((point.Y < 19 && gridRangeInfo.Top > 1 && flag && ScrollOnMouseMove) ? gridRangeInfo.OffsetRange(-1, 0) : ((point.Y <= base.Height + 19 || !flag || !ScrollOnMouseMove) ? PointToRangeInfo(point, -1) : gridRangeInfo.OffsetRange(1, 0)));
		if (gridRangeInfo.IsEmpty || gridRangeInfo.Top == 0 || gridRangeInfo.Bottom > base.Model.RowCount)
		{
			HighlightRange = GridRangeInfo.Empty;
			return null;
		}
		return SetSelectionAtRow(gridRangeInfo.Top);
	}

	protected BarItem SetSelectionAtRow(int row)
	{
		BarItem barItem = parentItem.Items[row - 1];
		if (row > 0 && row <= base.Model.RowCount && ShouldDrawEnabled(barItem))
		{
			if (row <= base.Model.RowCount && IsSelectable(row))
			{
				BarItem barItem2 = ((row - 1 < parentItem.Items.Count) ? parentItem.Items[row - 1] : null);
				if (Customizing && barItem2 != null)
				{
					if (parentItem.Manager.DesignMode)
					{
						parentItem.Manager.CustomizingItem = barItem2;
					}
					else
					{
						SetCustomizingItemDelayed(barItem2);
					}
				}
				HighlightRange = GridRangeInfo.Rows(row, row);
			}
			else
			{
				HighlightRange = GridRangeInfo.Empty;
			}
		}
		else
		{
			HighlightRange = GridRangeInfo.Empty;
		}
		return barItem;
	}

	private void SetCustomizingItemDelayed(BarItem selectedItem)
	{
		try
		{
			setCustomizingTimer.Stop();
		}
		catch
		{
		}
		cachedSelectedItem = selectedItem;
		setCustomizingTimer.Start();
	}

	private void SetCustomizingItemTick(object sender, EventArgs e)
	{
		cachedSelectedItem = null;
		try
		{
			setCustomizingTimer.Stop();
		}
		catch
		{
		}
		if (parentItem != null)
		{
			parentItem.Manager.CustomizingItem = cachedSelectedItem;
		}
	}

	public virtual void HidePopup(PopupCloseType popupCloseType)
	{
		MenuBound = false;
	}

	public virtual void Show(ParentBarItem parentItem, Point location, IPopupParent parentUI, bool setDefaultSelection)
	{
		Show(parentItem, location, parentUI, setDefaultSelection, null);
	}

	internal virtual void Show(ParentBarItem parentItem, Point location, IPopupParent parentUI, bool setDefaultSelection, Queue pbiQueue)
	{
		BeginUpdate(BeginUpdateOptions.Invalidate);
		try
		{
			this.parentItem = parentItem;
			MenuBound = true;
			if (Dock == DockStyle.None && location != Point.Empty)
			{
				base.Location = location;
			}
			HighlightRange = GridRangeInfo.Empty;
		}
		finally
		{
			EndUpdate();
			if (this.parentItem.Manager != null)
			{
				MainFrameBarManager mainFrameBarManager = this.parentItem.Manager.MainFrameBarManager;
				if (mainFrameBarManager != null)
				{
					base.ThemesEnabled = mainFrameBarManager.ThemesEnabled;
				}
			}
			RefreshMenuGrid(bNoShow: false);
		}
	}

	protected override void Refresh(bool fromModel)
	{
		if (initialized && !base.Model.Initializing)
		{
			base.Model.BeginUpdate(BeginUpdateOptions.None);
			base.Model.FloatingCells.EvaluateFloatingCells(GridRangeInfo.Table());
			base.Model.EndUpdate(update: false);
			base.Refresh(fromModel);
		}
	}

	protected string ReplaceCallBack(Match match)
	{
		return match.Value.Remove(0, 1);
	}

	protected virtual int GetApproxWidth(Graphics g, BarItem item, string text)
	{
		GridStyleInfo styleInfo = base.Model.BaseStylesMap["Standard"].StyleInfo;
		Font gdipFont = styleInfo.Font.GdipFont;
		ProvideFontInfoEventArgs e = new ProvideFontInfoEventArgs(gdipFont);
		item.OnProvideFontInfo(e);
		gdipFont = e.Font;
		text = m_regex.Replace(text, ReplaceCallBack);
		return (int)g.MeasureString(text, gdipFont, int.MaxValue).Width;
	}

	protected virtual int GetExactWidth(Graphics g, int row, int column)
	{
		return base.Model.CalculatePreferredCellSize(g, row, column, GridQueryBounds.Width).Width;
	}

	protected virtual bool IsItemVisibleOrExpandable(BarItem item, bool shouldDrawVisible)
	{
		if (!shouldDrawVisible)
		{
			return item.Visible;
		}
		return shouldDrawVisible;
	}

	protected internal void ResizeColumns()
	{
		if (!MenuBound)
		{
			return;
		}
		if (fixedWidth)
		{
			base.Model.ColWidths[1] = IconColumnWidth;
			base.Model.ColWidths[2] = TextColumnWidth;
			base.Model.ColWidths[3] = ShortcutColumnWidth;
			base.Model.ColWidths[4] = ArrowColumnWidth;
			return;
		}
		int num = -1;
		int num2 = -1;
		int num3 = -1;
		BarItem barItem = null;
		BarItem barItem2 = null;
		bool flag = true;
		Graphics graphics = CreateGraphics();
		int count = parentItem.Items.Count;
		for (int i = 1; i <= count; i++)
		{
			BarItem barItem3 = parentItem.Items[i - 1];
			bool flag2 = barItem3.Text.Length > 0;
			bool shouldDrawVisible = ShouldDrawVisible(parentItem, barItem3, Customizing);
			if (!IsItemVisibleOrExpandable(barItem3, shouldDrawVisible))
			{
				continue;
			}
			int approxWidth = GetApproxWidth(graphics, barItem3, barItem3.Text);
			approxWidth += 5;
			int num4 = 0;
			if (!(barItem3 is IRequiresControl requiresControl))
			{
				if (barItem3.Shortcut != Shortcut.None)
				{
					num4 = GetApproxWidth(graphics, barItem3, barItem3.ShortcutText);
				}
			}
			else
			{
				flag = false;
				if (flag2)
				{
					num4 = requiresControl.MinWidth - ArrowColumnWidth;
				}
			}
			bool flag3 = false;
			if (num2 < num4)
			{
				num2 = num4;
				barItem2 = barItem3;
				flag3 = true;
			}
			if (num3 < approxWidth)
			{
				num3 = approxWidth;
				barItem = barItem3;
				flag3 = true;
			}
			if (flag3 && flag && barItem2 != barItem && num2 > 0 && barItem.Shortcut != Shortcut.None)
			{
				flag = false;
			}
			if (num < num4 + approxWidth)
			{
				num = num4 + approxWidth;
			}
			if (barItem3.Shortcut != Shortcut.None && barItem2 != barItem3)
			{
				flag = false;
			}
		}
		graphics.Dispose();
		num3 += 4;
		num2 += 4;
		num += 8;
		base.Model.ColWidths[3] = num2;
		base.Model.ColWidths[2] = num3;
	}

	protected void ResizeRowHeights()
	{
		base.Model.Data.RowCount = base.Model.RowCount;
		base.Model.RowHeights.ResizeToFit(GridRangeInfo.Table());
	}

	protected virtual void RefreshMenuGrid(bool bNoShow)
	{
		base.Model.BeginUpdate(BeginUpdateOptions.None);
		FreeObjectCache();
		ResizeRowHeights();
		ResizeColumns();
		base.TopRowIndex = 1;
		PerformLayout();
		base.Model.EndUpdate(update: false);
		Invalidate();
	}

	protected virtual void HideHighlight(GridRangeInfo range)
	{
		InvalidateRange(range);
		if (range != GridRangeInfo.Empty && parentItem.Items != null && parentItem.Items.Count > range.Top - 1)
		{
			parentItem.Items[range.Top - 1].PerformUnselected();
		}
	}

	protected virtual void ShowHighlight(GridRangeInfo range)
	{
		ScrollCellInView(range.Top, GetCol(1));
		InvalidateRange(range);
		BarItem barItem = parentItem.Items[range.Top - 1];
		barItem.PerformSelected();
		BarItemsContainerAccessibleObject barItemsContainerAccessibleObject = base.AccessibilityObject as BarItemsContainerAccessibleObject;
		int accessibleObjectIndexFromBarItem = barItemsContainerAccessibleObject.GetAccessibleObjectIndexFromBarItem(barItem);
		if (accessibleObjectIndexFromBarItem != -1)
		{
			barItemsContainerAccessibleObject.NotifyClients(AccessibleEvents.Focus, accessibleObjectIndexFromBarItem);
		}
	}

	protected bool IsSelectable(int rowIndex)
	{
		if (rowIndex <= 0 || base.Model.RowHeights[rowIndex] == 0 || base.Model.HideRows[rowIndex] || parentItem.Items[rowIndex - 1].Text == "-")
		{
			return false;
		}
		return true;
	}

	protected bool ShouldDrawEnabled(BarItem item)
	{
		bool customizing = Customizing;
		if (item is ListBarItem && !customizing)
		{
			ListBarItem listBarItem = item as ListBarItem;
			if (listBarItem.ChildCaptions.Count == 0)
			{
				return false;
			}
		}
		if ((!item.Enabled && !customizing) || item.Text == "-" || (item is StaticBarItem && !customizing))
		{
			return false;
		}
		return true;
	}

	protected virtual void ModelQueryRowCount(object sender, GridRowColCountEventArgs e)
	{
		if (MenuBound)
		{
			e.Count = parentItem.Items.Count;
			e.Handled = true;
		}
	}

	protected virtual void ModelQueryRowHeight(object sender, GridRowColSizeEventArgs e)
	{
		int index = e.Index;
		if (index <= 0)
		{
			e.Size = 0;
			e.Handled = true;
		}
		else if (MenuBound && index <= parentItem.Items.Count)
		{
			BarItem barItem = parentItem.Items[index - 1];
			if (!ShouldDrawVisible(parentItem, barItem, Customizing))
			{
				e.Handled = true;
				e.Size = 0;
			}
			if (barItem.Text == "-")
			{
				e.Handled = true;
				e.Size = 3;
			}
		}
	}

	protected virtual bool MoveSelection(MoveHint hint)
	{
		bool result = false;
		switch (hint)
		{
		case MoveHint.moveFirst:
		{
			int j;
			for (j = 0; j <= base.Model.RowCount && (!IsSelectable(j) || parentItem.Items[j - 1] is StaticBarItem); j++)
			{
			}
			if (j <= base.Model.RowCount)
			{
				HighlightRange = GridRangeInfo.Row(j);
				result = true;
			}
			break;
		}
		case MoveHint.moveLast:
		{
			int num2 = base.Model.RowCount;
			while (num2 > 0 && (!IsSelectable(num2) || parentItem.Items[num2 - 1] is StaticBarItem))
			{
				num2--;
			}
			if (num2 > 0)
			{
				HighlightRange = GridRangeInfo.Row(num2);
				result = true;
			}
			break;
		}
		case MoveHint.moveNext:
		{
			if (HighlightRange == GridRangeInfo.Empty)
			{
				result = MoveSelection(MoveHint.moveFirst);
				break;
			}
			int i;
			for (i = HighlightRange.Top + 1; i <= base.Model.RowCount && (!IsSelectable(i) || parentItem.Items[i - 1] is StaticBarItem); i++)
			{
			}
			if (i <= base.Model.RowCount)
			{
				HighlightRange = GridRangeInfo.Row(i);
				result = true;
			}
			else
			{
				result = MoveSelection(MoveHint.moveFirst);
			}
			break;
		}
		case MoveHint.movePrevious:
		{
			if (HighlightRange == GridRangeInfo.Empty)
			{
				result = MoveSelection(MoveHint.moveLast);
				break;
			}
			int num = HighlightRange.Top - 1;
			while (num > 0 && (!IsSelectable(num) || parentItem.Items[num - 1] is StaticBarItem))
			{
				num--;
			}
			if (num > 0)
			{
				HighlightRange = GridRangeInfo.Row(num);
				result = true;
			}
			else
			{
				result = MoveSelection(MoveHint.moveLast);
			}
			break;
		}
		}
		return result;
	}

	protected virtual bool ProcessKeyDown(Keys keyCode)
	{
		if (keyCode != Keys.Return && CurrentCell.HasControlFocus)
		{
			return false;
		}
		bool flag = (Control.ModifierKeys & Keys.Shift) != 0;
		switch (keyCode)
		{
		case Keys.Tab:
			if (flag)
			{
				return MoveSelection(MoveHint.movePrevious);
			}
			return MoveSelection(MoveHint.moveNext);
		case Keys.Down:
			return MoveSelection(MoveHint.moveNext);
		case Keys.Up:
			return MoveSelection(MoveHint.movePrevious);
		case Keys.Home:
			return MoveSelection(MoveHint.moveFirst);
		case Keys.End:
			return MoveSelection(MoveHint.moveLast);
		case Keys.Return:
			if (CurrentCell.HasControlFocus || CurrentCell.IsModified)
			{
				CurrentCell.Deactivate(discardChanges: false);
				return false;
			}
			break;
		}
		return false;
	}

	protected override void OnScrollControlMouseDown(CancelMouseEventArgs e)
	{
		bool flag = base.WantKeys;
		base.WantKeys = false;
		base.OnScrollControlMouseDown(e);
		base.WantKeys = flag;
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (keyData == Keys.Return || keyData == Keys.Escape)
		{
			return true;
		}
		return base.IsInputKey(keyData);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (!e.Handled)
		{
			e.Handled |= ProcessKeyDown(e.KeyCode & Keys.KeyCode);
		}
	}

	private void ModelQueryCoveredRange(object sender, GridQueryCoveredRangeEventArgs e)
	{
		OnQueryCoveredRange(e.RowIndex, e.ColIndex, out var range);
		e.Range = range;
		e.Handled = true;
	}

	public virtual bool OnQueryCoveredRange(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		range = GridRangeInfo.Empty;
		if (rowIndex > 0 && parentItem != null && parentItem.Items != null && rowIndex <= parentItem.Items.Count)
		{
			BarItem barItem = parentItem.Items[rowIndex - 1];
			int num = ((barItem.Text.Length > 0) ? 3 : 2);
			if (barItem.Text == "-" && colIndex >= 2 && colIndex <= 4)
			{
				range = GridRangeInfo.Cells(rowIndex, 2, rowIndex, 4);
				return true;
			}
			if ((colIndex == 3 || colIndex == 2) && !(barItem is IRequiresControl))
			{
				if (barItem.ShortcutText == string.Empty)
				{
					range = GridRangeInfo.Cells(rowIndex, 2, rowIndex, 3);
					return true;
				}
			}
			else if ((colIndex == num || colIndex == 3 || colIndex == 4) && barItem is IRequiresControl && ShouldDrawVisible(ParentItem, barItem, Customizing))
			{
				range = GridRangeInfo.Cells(rowIndex, num, rowIndex, 4);
				return true;
			}
		}
		return false;
	}

	private void ModelQueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		OnQueryCellInfo(e.RowIndex, e.ColIndex, e.Style, 0);
		e.Handled = e.RowIndex >= 0;
	}

	protected virtual void UpdateStyleBasedOnItem(GridStyleInfo style, IRequiresControl barItemRequiringControl)
	{
		BarItem barItem = barItemRequiringControl as BarItem;
		if (barItem is ComboBoxBarItem comboBoxBarItem)
		{
			style.CellType = "ComboBox_ListboxMode";
			style.ChoiceList = comboBoxBarItem.ChoiceList;
			style.ExclusiveChoiceList = !comboBoxBarItem.Editable;
		}
		else if (barItem is TextBoxBarItem)
		{
			style.CellType = "TextBox";
		}
		style.Clickable = barItem.Enabled;
		if (base.ThemesEnabled && IsVistaOS)
		{
			style.Borders.All = new GridBorder(GridBorderStyle.Solid, VistaMenuColors.SelBorderColor);
		}
		else
		{
			style.Borders.All = new GridBorder(GridBorderStyle.Solid, SystemColors.Control);
		}
	}

	protected virtual void SetTextColorAndFontOnStyle(BarItem BarItem, GridStyleInfo Style)
	{
		if (BarItem == null)
		{
			return;
		}
		if (BarItem.CustomTextFont != null)
		{
			Style.Font = new GridFontInfo(BarItem.CustomTextFont);
		}
		if (BarItem.Enabled)
		{
			if (BarItem.CustomNormalTextColor != Color.Empty && SelectedItem != BarItem)
			{
				Style.TextColor = BarItem.CustomNormalTextColor;
			}
			else if (BarItem.CustomActiveTextColor != Color.Empty && SelectedItem == BarItem)
			{
				Style.TextColor = BarItem.CustomActiveTextColor;
			}
		}
		else if (BarItem.CustomDisabledTextColor != Color.Empty)
		{
			Style.TextColor = BarItem.CustomDisabledTextColor;
		}
	}

	public virtual bool OnQueryCellInfo(int rowIndex, int colIndex, GridStyleInfo style, int nType)
	{
		bool result = false;
		if (rowIndex == 0 || !MenuBound)
		{
			return result;
		}
		bool flag = IsRightToLeft();
		BarItem barItem = null;
		if (rowIndex > 0)
		{
			barItem = parentItem.Items[rowIndex - 1];
		}
		if (rowIndex == -1 && colIndex != -1)
		{
			switch (colIndex)
			{
			case 2:
				style.CellType = "MenuTextCell";
				if (base.ThemesEnabled && IsVistaOS)
				{
					style.Interior = new BrushInfo(BackColor);
				}
				result = true;
				break;
			case 1:
				style.CellType = "IconCell";
				if (base.ThemesEnabled && IsVistaOS)
				{
					style.Interior = new BrushInfo(BackColor);
				}
				else
				{
					style.Interior = GetColumnBrushInfo(Style);
				}
				result = true;
				break;
			case 3:
				style.HorizontalAlignment = ((!flag) ? GridHorizontalAlignment.Right : GridHorizontalAlignment.Left);
				style.CellType = "ShortcutCell";
				if (base.ThemesEnabled && IsVistaOS)
				{
					style.Interior = new BrushInfo(BackColor);
				}
				result = true;
				break;
			case 4:
				style.CellType = "MenuGlyphCell";
				if (base.ThemesEnabled && IsVistaOS)
				{
					style.Interior = new BrushInfo(BackColor);
				}
				result = true;
				break;
			}
		}
		else if (colIndex == -1 && rowIndex != -1)
		{
			if (barItem is StaticBarItem)
			{
				style.Enabled = false;
				if (base.ThemesEnabled && IsVistaOS)
				{
					style.Interior = new BrushInfo(VistaMenuColors.SelBGColorDark);
				}
				else
				{
					style.Interior = GetStaticBrushInfo(Style);
				}
				result = true;
			}
			else
			{
				Font gdipFont = style.Font.GdipFont;
				ProvideFontInfoEventArgs e = new ProvideFontInfoEventArgs(gdipFont);
				barItem.OnProvideFontInfo(e);
				if (gdipFont != e.Font)
				{
					SetStyleInfoFontFromGdipFont(style, e.Font);
					result = true;
				}
				if (!ShouldDrawEnabled(barItem))
				{
					style.Enabled = false;
					style.TextColor = ((barItem.CustomDisabledTextColor == Color.Empty) ? MenuColors.DisabledMenuTextColorBase : barItem.CustomDisabledTextColor);
					result = true;
				}
				else
				{
					style.TextColor = ((barItem.CustomNormalTextColor == Color.Empty) ? MenuColors.MenuTextColor : barItem.CustomNormalTextColor);
				}
				if (HighlightRange.Top == rowIndex)
				{
					if (base.ThemesEnabled && IsVistaOS)
					{
						style.Interior = new BrushInfo(GradientStyle.Vertical, VistaMenuColors.SelBGColorLight, VistaMenuColors.SelBGColorDark);
					}
					else if (ShouldDrawEnabled(barItem))
					{
						style.Interior = GetHighlightBrushInfo(Style);
					}
					else
					{
						style.Interior = new BrushInfo(MenuColors.MenuBGColor);
					}
					result = true;
					if (barItem.Enabled)
					{
						style.TextColor = ((barItem.CustomActiveTextColor == Color.Empty) ? MenuColors.SelTextColor : barItem.CustomActiveTextColor);
					}
				}
			}
		}
		else if (colIndex != -1 && rowIndex != -1)
		{
			bool flag2 = barItem.Text.Length > 0;
			switch (colIndex)
			{
			case 1:
				style.CellValue = " ";
				if (barItem.Checked)
				{
					style.CellValue = 1;
				}
				else
				{
					style.CellValue = 0;
				}
				style.ImageIndex = ((barItem.PaintStyle == PaintStyle.TextOnlyInMenus) ? (-1) : barItem.ImageIndex);
				break;
			case 2:
				style.CellValue = barItem.Text;
				style.HotkeyPrefix = ((barItem.HintViaHotKeyPrefix || barItem.ShowMnemonicUnderlinesAlways) ? HotkeyPrefix.Show : HotkeyPrefix.Hide);
				if (barItem != null)
				{
					style.SetValue(GridStyleInfoStore.HorizontalAlignmentProperty, (int)barItem.TextAlignment);
				}
				SetTextColorAndFontOnStyle(barItem, style);
				if (style.CellValue.ToString() == "-")
				{
					style.CellType = "SeparatorCell";
				}
				else
				{
					style.BorderMargins.Top = 2;
					style.BorderMargins.Bottom = 3;
				}
				if (!flag2)
				{
					CellRequiresControl(style, barItem);
				}
				break;
			case 3:
				if (!CellRequiresControl(style, barItem) && !(barItem is StaticBarItem))
				{
					if (barItem.Shortcut != Shortcut.None)
					{
						style.CellValue = barItem.ShortcutText;
					}
					style.HorizontalAlignment = GridHorizontalAlignment.Right;
					SetTextColorAndFontOnStyle(barItem, style);
				}
				break;
			case 4:
				style.CellValue = ((barItem is ParentBarItem || barItem is DropDownBarItem) ? 1 : 0);
				break;
			}
			if (base.ThemesEnabled && IsVistaOS && colIndex < 2 && !barItem.IsRecentlyUsedItem && parentItem.UsePartialMenus && (parentItem.Manager == null || parentItem.Manager.UsePartialMenus) && HighlightRange.Top != rowIndex)
			{
				if (Style != VisualStyle.Office2003)
				{
					style.Interior = new BrushInfo(MenuColors.ExpandedMenuStripBackColor);
				}
				else if (flag)
				{
					style.Interior = new BrushInfo(GradientStyle.Horizontal, Office2003Colors.MenuExpandedItemsMarginColorRight, Office2003Colors.MenuExpandedItemsMarginColorLeft);
				}
				else
				{
					style.Interior = new BrushInfo(GradientStyle.Horizontal, Office2003Colors.MenuExpandedItemsMarginColorLeft, Office2003Colors.MenuExpandedItemsMarginColorRight);
				}
			}
			result = true;
		}
		return result;
	}

	private bool CellRequiresControl(GridStyleInfo style, BarItem barItem)
	{
		bool result = false;
		if (barItem is IRequiresControl requiresControl)
		{
			style.CellValue = requiresControl.Value;
			style.Interior = new BrushInfo(MenuColors.MenuBGColor);
			style.HorizontalAlignment = GridHorizontalAlignment.Left;
			UpdateStyleBasedOnItem(style, barItem as IRequiresControl);
			result = true;
		}
		return result;
	}

	protected override void DrawInvertCell(Graphics g, int rowIndex, int colIndex, Rectangle rectItem, bool inPaint)
	{
		m_bInvertRect = false;
	}

	protected override void OnDrawCellFrameAppearance(GridDrawCellBackgroundEventArgs e)
	{
		base.OnDrawCellFrameAppearance(e);
		if (Style == VisualStyle.Office2007 && (!base.ThemesEnabled || !IsVistaOS))
		{
			Rectangle targetBounds = e.TargetBounds;
			if (e.Range.Left == 1)
			{
				bool bRTL = IsRightToLeft();
				Office2007MenuPainter.DrawMenuColumn(e.Graphics, targetBounds, bRTL);
			}
			if (HighlightRange.Top == e.Range.Top)
			{
				Office2007MenuPainter.DrawMenuItemHighlightBackground(e.Graphics, targetBounds);
				e.Cancel = true;
			}
		}
	}

	protected override void OnPaint(PaintEventArgs pevent)
	{
		UpdateColorScheme();
		Graphics graphics = pevent.Graphics;
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		Rectangle rect = RangeInfoToRectangle(HighlightRange, GridRangeOptions.None);
		rect.Width--;
		rect.Height--;
		if (!MenuBound)
		{
			return;
		}
		if (!HighlightRange.IsEmpty && base.ThemesEnabled && IsVistaOS)
		{
			GraphicsPath roundedRectangle = DrawingUtils.GetRoundedRectangle(rect, 2);
			graphics.SmoothingMode = SmoothingMode.AntiAlias;
			using Pen pen = new Pen(VistaMenuColors.SelBorderColor);
			graphics.DrawPath(pen, roundedRectangle);
		}
		base.OnPaint(pevent);
		if (!HighlightRange.IsEmpty && (!base.ThemesEnabled || !IsVistaOS))
		{
			if (Style == VisualStyle.Office2007)
			{
				Office2007MenuPainter.DrawMenuItemHighlightBorder(graphics, rect);
			}
			else
			{
				Pen borderPen = GetBorderPen(Style);
				graphics.DrawRectangle(borderPen, rect);
				borderPen.Dispose();
			}
		}
		graphics.SmoothingMode = smoothingMode;
	}

	protected override void OnThemeChanged(EventArgs e)
	{
		base.OnThemeChanged(e);
		if (base.ThemesEnabled && IsVistaOS)
		{
			BackColor = VistaMenuColors.BackgroundColor;
		}
		else
		{
			BackColor = Color.White;
		}
	}

	internal bool IsItemDropDownStyle(BarItem barItem)
	{
		if (!(barItem is IParentBarItem) || ((IParentBarItem)barItem).ParentStyle != ParentBarItemStyle.DropDown)
		{
			return barItem is ComboBoxBarItem;
		}
		return true;
	}

	private Pen GetBorderPen(VisualStyle style)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.MenuSelectedItemBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.MenuSelectedItemBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}

	private BrushInfo GetColumnBrushInfo(VisualStyle style)
	{
		BrushInfo brushInfo = null;
		bool flag = IsRightToLeft();
		if (base.ThemesEnabled && IsVistaOS)
		{
			return new BrushInfo(BackColor);
		}
		switch (style)
		{
		case VisualStyle.Office2003:
			if (flag)
			{
				return new BrushInfo(GradientStyle.Horizontal, Office2003Colors.MenuMarginColorDark, Office2003Colors.MenuMarginColorLight);
			}
			return new BrushInfo(GradientStyle.Horizontal, Office2003Colors.MenuMarginColorLight, Office2003Colors.MenuMarginColorDark);
		case VisualStyle.Office2007Outlook:
			return new BrushInfo(Office2007OutlookColors.MenuColumnStyleColor);
		case VisualStyle.VS2005:
			if (flag)
			{
				return new BrushInfo(GradientStyle.Horizontal, VS2005Colors.MenuColumnStyleDarkColor, VS2005Colors.MenuColumnStyleLightColor);
			}
			return new BrushInfo(GradientStyle.Horizontal, VS2005Colors.MenuColumnStyleLightColor, VS2005Colors.MenuColumnStyleDarkColor);
		default:
			return new BrushInfo(MenuColors.MenuLeftStripColor);
		}
	}

	private BrushInfo GetHighlightBrushInfo(VisualStyle style)
	{
		BrushInfo brushInfo = null;
		return style switch
		{
			VisualStyle.Office2003 => new BrushInfo(Office2003Colors.SelColor), 
			VisualStyle.Office2007Outlook => new BrushInfo(Office2007OutlookColors.MenuSelectedItemColor), 
			VisualStyle.VS2005 => new BrushInfo(VS2005Colors.MenuSelectedItemColor), 
			_ => new BrushInfo(MenuColors.SelColor), 
		};
	}

	private BrushInfo GetStaticBrushInfo(VisualStyle style)
	{
		BrushInfo brushInfo = null;
		if (base.ThemesEnabled && IsVistaOS)
		{
			return new BrushInfo(VistaMenuColors.SelBGColorDark);
		}
		return style switch
		{
			VisualStyle.Office2003 => new BrushInfo(Office2003Colors.MenuMarginColorDark), 
			VisualStyle.Office2007Outlook => new BrushInfo(Office2007OutlookColors.MenuColumnStyleColor), 
			VisualStyle.VS2005 => new BrushInfo(VS2005Colors.MenuColumnStyleDarkColor), 
			_ => new BrushInfo(MenuColors.MenuLeftStripColor), 
		};
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
		Office2007Theme office2007Theme = ((parentItem != null) ? parentItem.Office2007Theme : Office2007Theme.Blue);
		Office2007OutlookColors.UpdateMenuColors(office2007Theme);
		Office2007Colors.DefaultTheme = office2007Theme;
		Office2007MenuPainter.ColorTable = Office2007ColorTable;
	}

	private void Model_QueryColCount(object sender, GridRowColCountEventArgs e)
	{
		e.Count = MenuColCount;
		e.Handled = true;
	}
}
