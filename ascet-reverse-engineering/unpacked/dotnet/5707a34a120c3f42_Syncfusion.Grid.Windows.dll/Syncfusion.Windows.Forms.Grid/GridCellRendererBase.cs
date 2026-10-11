using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Text;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellRendererBase : NonFinalizeDisposable, IQueryFocusInside, IGridDropDownCell, IPopupParent, IPopupItem, IDisposable
{
	private GridControlBase grid;

	private Control control;

	internal GridCellModelBase cellModel;

	internal int currentRowIndex = int.MaxValue;

	internal int currentColIndex = int.MaxValue;

	private bool initalizeCalled;

	private bool inInitialize;

	private GridRangeInfo rangeCanceled = GridRangeInfo.Empty;

	private GridCellHitTestInfo ht = new GridCellHitTestInfo();

	private GridCellHitTestInfo savedHt = new GridCellHitTestInfo();

	private bool hasFocusControl;

	private bool supportsEditing = true;

	private bool supportsFocusControl;

	private GridCellContextValue layout = new GridCellContextValue(null);

	private string controlText = string.Empty;

	private bool hasControlText;

	private object controlValue;

	private bool hasControlValue;

	internal bool ignoreWmChar;

	private Point scrolledInfo;

	private ArrayList buttons;

	private bool inDispose;

	private bool isDisposed;

	[DocumentationExclude]
	internal IGridDropDownCellImp dropDownImp;

	internal bool inBeginEdit;

	private bool shouldDrawBorders = true;

	private bool inSetControlText;

	internal bool onSetControlTextFailed;

	private bool inSetControlValue;

	private bool inSetSetControlValue;

	private WeakReference _currentStyle = new WeakReference(null);

	private byte charsToIgnore;

	private bool _forceRefreshOnActivateCell;

	private string lastValidateString;

	private int lastValidateTime = int.MinValue;

	private bool lastValidateResult;

	private int mouseDownTick;

	private Point mouseDownPoint = Point.Empty;

	private int mouseUpCellButtonHitTest;

	internal bool clickOverImage;

	private bool isGridClick;

	private bool alwaysRaiseCellClick = true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[XmlIgnore]
	public bool IsDisposing => inDispose;

	[Browsable(false)]
	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsDisposed => isDisposed;

	public IGridDropDownCellImp DropDownImp
	{
		get
		{
			return dropDownImp;
		}
		set
		{
			dropDownImp = value;
		}
	}

	public GridCellModelBase Model
	{
		get
		{
			return cellModel;
		}
		set
		{
			if (cellModel != value)
			{
				if (cellModel != null)
				{
					UnwireModel(cellModel);
				}
				cellModel = value;
				if (cellModel != null)
				{
					WireModel(cellModel);
				}
				OnModelChanged(EventArgs.Empty);
			}
		}
	}

	public GridCurrentCell CurrentCell => Grid.CurrentCell;

	public bool InBeginEdit => inBeginEdit;

	public bool SupportsFocusControl
	{
		get
		{
			return supportsFocusControl;
		}
		set
		{
			supportsFocusControl = value;
		}
	}

	public bool SupportsEditing
	{
		get
		{
			return supportsEditing;
		}
		set
		{
			supportsEditing = value;
		}
	}

	public bool HasFocusControl
	{
		get
		{
			if (!CurrentCell.StaticDrawing && hasFocusControl)
			{
				return supportsFocusControl;
			}
			return false;
		}
	}

	protected bool IsEditing => CurrentCell.IsEditing;

	protected virtual bool IsDroppedDown
	{
		get
		{
			if (dropDownImp != null)
			{
				return dropDownImp.IsDroppedDown;
			}
			return false;
		}
	}

	private ArrayList Buttons
	{
		get
		{
			if (buttons == null)
			{
				buttons = new ArrayList();
			}
			return buttons;
		}
	}

	public Control Control => control;

	public bool InSetControlText => inSetControlText;

	public virtual string ControlText
	{
		get
		{
			if (!HasControlText && HasControlValue)
			{
				GridStyleInfo styleInfo = StyleInfo;
				object value = (styleInfo.CellValue = ControlValue);
				controlText = styleInfo.GetFormattedText(value, 3);
				hasControlText = true;
			}
			return controlText;
		}
		set
		{
			if (InSetControlText)
			{
				return;
			}
			inSetControlText = true;
			try
			{
				onSetControlTextFailed = false;
				if (!InSetControlValue && !InSetSetControlValue)
				{
					ResetControlValue();
				}
				bool flag = hasControlText;
				string text = controlText;
				hasControlText = true;
				controlText = value;
				OnSetControlText(controlText);
				if (onSetControlTextFailed)
				{
					hasControlText = flag;
					controlText = text;
				}
				if (CurrentCell.IsModified)
				{
					Model.SetActiveText(currentRowIndex, currentColIndex, value);
				}
			}
			finally
			{
				inSetControlText = false;
			}
		}
	}

	[Browsable(false)]
	public bool LastOnSetControlTextFailed
	{
		get
		{
			return onSetControlTextFailed;
		}
		set
		{
			onSetControlTextFailed = value;
		}
	}

	public bool HasControlText => hasControlText;

	public bool InSetControlValue => inSetControlValue;

	public virtual object ControlValue
	{
		get
		{
			if (!HasControlValue && HasControlText)
			{
				try
				{
					GridStyleInfo styleInfo = StyleInfo;
					Model.ApplyFormattedText(styleInfo, ControlText, 5);
					controlValue = styleInfo.CellValue;
					hasControlValue = true;
				}
				catch
				{
					controlValue = null;
					hasControlValue = true;
				}
			}
			return controlValue;
		}
		set
		{
			inSetControlValue = true;
			try
			{
				SetControlValue(value, initControlText: true);
			}
			finally
			{
				inSetControlValue = false;
			}
		}
	}

	public bool InSetSetControlValue => inSetSetControlValue;

	public bool HasControlValue => hasControlValue;

	protected bool InInitialize => inInitialize;

	private GridStyleInfo currentStyle
	{
		get
		{
			GridStyleInfo gridStyleInfo = _currentStyle.Target as GridStyleInfo;
			if (gridStyleInfo == null)
			{
				gridStyleInfo = StyleInfo;
				_currentStyle = new WeakReference(gridStyleInfo);
			}
			return gridStyleInfo;
		}
		set
		{
			_currentStyle = new WeakReference(value);
		}
	}

	public GridStyleInfo CurrentStyle => currentStyle;

	public bool Initalized => initalizeCalled;

	public GridControlBase Grid => grid;

	public GridStyleInfo StyleInfo => Grid.GetViewStyleInfo(currentRowIndex, currentColIndex);

	public bool ForceRefreshOnActivateCell
	{
		get
		{
			return _forceRefreshOnActivateCell;
		}
		set
		{
			_forceRefreshOnActivateCell = value;
		}
	}

	public int RowIndex
	{
		get
		{
			return currentRowIndex;
		}
		set
		{
			currentRowIndex = value;
		}
	}

	public int ColIndex
	{
		get
		{
			return currentColIndex;
		}
		set
		{
			currentColIndex = value;
		}
	}

	protected int MouseDownTick
	{
		get
		{
			return mouseDownTick;
		}
		set
		{
			mouseDownTick = value;
		}
	}

	protected Point MouseDownPoint
	{
		get
		{
			return mouseDownPoint;
		}
		set
		{
			mouseDownPoint = value;
		}
	}

	protected bool ClickOverImage
	{
		get
		{
			return clickOverImage;
		}
		set
		{
			clickOverImage = value;
		}
	}

	public bool AlwaysRaiseCellClick
	{
		get
		{
			return alwaysRaiseCellClick;
		}
		set
		{
			alwaysRaiseCellClick = value;
		}
	}

	public IGridDropDownCellImp DropDownPart
	{
		get
		{
			return dropDownImp;
		}
		set
		{
			dropDownImp = value;
		}
	}

	public GridCellButton DropDownButton
	{
		get
		{
			if (dropDownImp == null)
			{
				throw new InvalidOperationException("dropDownImp is null");
			}
			return dropDownImp.DropDownButton;
		}
		set
		{
			if (dropDownImp == null)
			{
				throw new InvalidOperationException("dropDownImp is null");
			}
			dropDownImp.DropDownButton = value;
		}
	}

	bool IPopupParent.IsRightToLeft => grid.IsRightToLeft();

	public IGridDropDownContainer DropDownContainer
	{
		get
		{
			if (dropDownImp != null)
			{
				return dropDownImp.PopupControlContainer;
			}
			return null;
		}
	}

	public new void Dispose()
	{
		inDispose = true;
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
		inDispose = false;
		isDisposed = true;
	}

	public virtual bool ProcessMouseWheel(MouseEventArgs e)
	{
		return false;
	}

	public virtual object GetEditState()
	{
		return null;
	}

	public virtual void SetEditState(object state)
	{
	}

	public GridCellRendererBase(GridControlBase grid, GridCellModelBase cellModel)
	{
		this.grid = grid;
		this.cellModel = cellModel;
		grid.ViewLayout.LayoutChanged += GridViewLayoutChanged;
		WireModel(cellModel);
	}

	public override string ToString()
	{
		return GetType().Name;
	}

	internal bool RaiseDeleting()
	{
		return OnDeleting();
	}

	protected virtual bool OnDeleting()
	{
		return true;
	}

	internal void IntUnwireModel(GridCellModelBase cellModel)
	{
		UnwireModel(cellModel);
	}

	protected virtual void UnwireModel(GridCellModelBase cellModel)
	{
	}

	protected virtual void WireModel(GridCellModelBase cellModel)
	{
	}

	protected virtual void OnModelChanged(EventArgs e)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (Model != null)
			{
				UnwireModel(Model);
			}
			if (dropDownImp != null)
			{
				dropDownImp.Dispose();
			}
			if (control != null)
			{
				UnwireControl();
			}
			if (buttons != null)
			{
				foreach (GridCellButton button in buttons)
				{
					button.Clicked -= ButtonClicked;
					button.Dispose();
				}
				buttons.Clear();
				buttons = null;
			}
			grid.ViewLayout.LayoutChanged -= GridViewLayoutChanged;
		}
		base.Dispose(disposing);
	}

	private void InvertRect(Graphics g, Rectangle bounds, Rectangle r)
	{
		if (r.IntersectsWith(bounds))
		{
			Grid.InvertRect(g, Rectangle.Intersect(bounds, r));
		}
	}

	protected virtual bool OnDeactivating()
	{
		return true;
	}

	internal bool RaiseDeactivating()
	{
		return OnDeactivating();
	}

	protected virtual void OnDeactived(int rowIndex, int colIndex)
	{
		CurrentCell.notifyChangingCalled = false;
	}

	internal void RaiseDeactived(int rowIndex, int colIndex)
	{
		OnDeactived(rowIndex, colIndex);
		Hide();
		hasControlText = false;
		hasControlValue = false;
		currentStyle = null;
	}

	protected virtual void OnBeginEdit()
	{
		if (SupportsFocusControl && CurrentCell.FocusRendererOnBeginEdit && (Grid.HasControlFocus || CurrentCell.IsInActivate))
		{
			SetHasFocusControl(value: true);
		}
		inBeginEdit = true;
		Model.SetActiveText(RowIndex, ColIndex, ControlText);
		inBeginEdit = false;
	}

	internal void RaiseBeginEdit()
	{
		OnBeginEdit();
	}

	protected virtual void OnEndEdit()
	{
		if (HasFocusControl)
		{
			SetHasFocusControl(value: false);
		}
		inBeginEdit = true;
		Model.ResetActiveText(RowIndex, ColIndex);
		inBeginEdit = false;
		if (!rangeCanceled.IsEmpty)
		{
			Grid.InvalidateRange(rangeCanceled);
		}
	}

	internal void RaiseEndEdit()
	{
		OnEndEdit();
	}

	public virtual bool QueryFocusInside()
	{
		if (dropDownImp != null)
		{
			return dropDownImp.QueryFocusInside();
		}
		return false;
	}

	internal void SetHasFocusControl(bool value)
	{
		value &= SupportsFocusControl;
		if (value == hasFocusControl)
		{
			return;
		}
		hasFocusControl = value;
		currentColIndex = CurrentCell.ColIndex;
		currentRowIndex = CurrentCell.RowIndex;
		OnHasFocusControlChanged();
		bool flag = false;
		if (hasFocusControl)
		{
			if (!Grid.ScrollGrid.m_bInDoScroll)
			{
				_ = Grid.IsMousePressed;
			}
			Control control = Control;
			if (control != null && !control.Visible)
			{
				control.Location = new Point(-1000, -1000);
			}
		}
		else
		{
			Hide();
		}
		if (!flag)
		{
			CurrentCell.Invalidate();
		}
	}

	protected virtual void OnHasFocusControlChanged()
	{
		if (dropDownImp != null)
		{
			dropDownImp.OnHasFocusControlChanged();
		}
	}

	protected virtual bool OnSaveChanges()
	{
		if (CurrentCell.IsModified)
		{
			GridStyleInfo gridStyleInfo = Grid.Model[RowIndex, ColIndex];
			if (!HasControlValue && HasControlText)
			{
				gridStyleInfo.ApplyFormattedText(ControlText);
			}
			else
			{
				gridStyleInfo.CellValue = ControlValue;
			}
			return true;
		}
		return false;
	}

	internal bool RaiseSaveChanges()
	{
		return OnSaveChanges();
	}

	protected virtual void OnRejectChanges()
	{
		ResetControlText();
		ResetControlValue();
		inBeginEdit = true;
		Model.ResetActiveText(RowIndex, ColIndex);
		inBeginEdit = false;
	}

	internal void RaiseRejectChanges()
	{
		OnRejectChanges();
	}

	protected virtual bool OnStartEditing()
	{
		return true;
	}

	internal bool RaiseStartEditing()
	{
		return OnStartEditing();
	}

	protected virtual void OnEditingComplete()
	{
	}

	internal void RaiseEditingComplete()
	{
		OnEditingComplete();
	}

	protected virtual bool OnValidate()
	{
		bool flag = true;
		string empty = string.Empty;
		if (CurrentCell.IsEditing && CurrentCell.IsModified)
		{
			empty = ControlText;
			using GridStyleInfo gridStyleInfo = Grid.GetViewStyleInfo(currentRowIndex, currentColIndex, forceQueryCellInfo: false);
			GridCellValidateValueInfo readOnlyValidateValue = gridStyleInfo.ReadOnlyValidateValue;
			if (readOnlyValidateValue != null)
			{
				double result = double.NaN;
				bool flag2 = false;
				if (empty.Length > 0)
				{
					flag2 = double.TryParse(empty, NumberStyles.AllowExponent, gridStyleInfo.GetCulture(useCurrentCultureIfNull: true).NumberFormat, out result);
				}
				if (readOnlyValidateValue.NumberRequired && !flag2)
				{
					CurrentCell.ErrorMessage = empty + " is not a valid number.";
					return false;
				}
				if (!GridUtil.IsNotValidNumber(readOnlyValidateValue.Minimum) && !GridUtil.IsNotValidNumber(result) && result < readOnlyValidateValue.Minimum)
				{
					flag = false;
				}
				if (flag && !GridUtil.IsNotValidNumber(readOnlyValidateValue.Maximum) && !GridUtil.IsNotValidNumber(result) && result > readOnlyValidateValue.Maximum)
				{
					flag = false;
				}
				if (!flag)
				{
					CurrentCell.ErrorMessage = readOnlyValidateValue.ErrorMessage;
					return false;
				}
			}
			ExceptionManager.SuspendCatchExceptions();
			try
			{
				gridStyleInfo.ApplyFormattedText(empty);
				ExceptionManager.ResumeCatchExceptions();
			}
			catch (Exception ex)
			{
				ExceptionManager.ResumeCatchExceptions();
				TraceUtil.TraceExceptionCatched(ex);
				Type cellValueType = gridStyleInfo.CellValueType;
				string text = string.Empty;
				if (cellValueType != null)
				{
					text = $"{empty} is not a valid value for {cellValueType.Name}.";
				}
				CurrentCell.Exception = ex;
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					if (cellValueType != null)
					{
						throw new FormatException(text, ex);
					}
					throw;
				}
				if (text != string.Empty)
				{
					CurrentCell.ErrorMessage = text;
				}
				return false;
			}
			if (!ValidateString(empty))
			{
				return false;
			}
		}
		return true;
	}

	internal bool RaiseValidate()
	{
		return OnValidate();
	}

	protected virtual void OnValidated()
	{
	}

	internal void RaiseValidated()
	{
		OnValidated();
	}

	protected virtual bool OnActivating(int rowIndex, int colIndex)
	{
		return true;
	}

	internal bool RaiseActivating(int rowIndex, int colIndex)
	{
		return OnActivating(rowIndex, colIndex);
	}

	protected virtual void OnActivated()
	{
		CurrentCell.notifyChangingCalled = false;
	}

	internal void RaiseActivated()
	{
		OnActivated();
	}

	public bool ShouldDrawEditing(int rowIndex, int colIndex)
	{
		if (Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && CurrentCell.IsEditing && !Grid.IsPrinting())
		{
			return !CurrentCell.InternalHide;
		}
		return false;
	}

	public bool ShouldDrawFocused(int rowIndex, int colIndex)
	{
		if (ShouldDrawEditing(rowIndex, colIndex))
		{
			return HasFocusControl;
		}
		return false;
	}

	protected virtual bool NotifyCurrentCellChanging()
	{
		if (!Grid.Model.IgnoreReadOnly && CurrentStyle.ReadOnly)
		{
			return false;
		}
		if (CurrentCell.IsModified || CurrentCell.notifyChangingCalled)
		{
			return true;
		}
		CurrentCell.IsChanging = true;
		bool result = CurrentCell.NotifyChanging();
		CurrentCell.IsChanging = false;
		return result;
	}

	internal bool RaiseNotifyCurrentCellChanging()
	{
		return NotifyCurrentCellChanging();
	}

	protected virtual void NotifyCurrentCellChanged()
	{
		Grid.RaiseNotifyCurrentCellChanged();
	}

	internal void RaiseNotifyCurrentCellChanged()
	{
		NotifyCurrentCellChanged();
	}

	protected void NotifyCurrentCellControlDoubleClick(Control control)
	{
		OnControlDoubleClick(control);
	}

	protected virtual void ControlDoubleClick(object sender, EventArgs e)
	{
		OnControlDoubleClick(Control);
	}

	protected virtual void OnControlDoubleClick(Control control)
	{
		CurrentCell.NotifyControlDoubleClick(control);
	}

	protected void NotifyCurrentCellControlGotFocus(Control control)
	{
		CurrentCell.NotifyControlGotFocus(control);
	}

	protected void NotifyCurrentCellControlLostFocus(Control control)
	{
		CurrentCell.NotifyControlLostFocus(control);
	}

	internal bool GetDroppedDown()
	{
		return IsDroppedDown;
	}

	protected virtual void OnShowDropDown()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.OnShowDropDown();
	}

	internal void RaiseShowDropDown()
	{
		OnShowDropDown();
	}

	protected virtual void OnCloseDropDown(PopupCloseType reason)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.OnCloseDropDown(reason);
	}

	internal void RaiseCloseDropDown(PopupCloseType reason)
	{
		OnCloseDropDown(reason);
	}

	public virtual void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	protected virtual void OnOutlineCurrentCell(Graphics g, Rectangle r)
	{
		Rectangle cellBoundsCore = GetCellBoundsCore(currentRowIndex, currentColIndex);
		cellBoundsCore.Intersect(Rectangle.Ceiling(g.ClipBounds));
		if (Grid.Model.Options.ExcelLikeCurrentCell)
		{
			r = grid.RangeInfoToRectangle(GridRangeInfo.Cell(currentRowIndex, currentColIndex), GridRangeOptions.MergeCoveredCells | GridRangeOptions.CalculateNonClientArea);
			InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left, r.Top, r.Right, r.Top + 2));
			InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left, r.Top + 2, r.Left + 2, r.Bottom));
			InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Right - 3, r.Top + 2, r.Right, r.Bottom - 3));
			InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left + 2, r.Bottom - 3, r.Right, r.Bottom));
			return;
		}
		GridShowCurrentCellBorder showCurrentCellBorderBehavior = Grid.Model.Options.ShowCurrentCellBorderBehavior;
		if (showCurrentCellBorderBehavior == GridShowCurrentCellBorder.HideAlways)
		{
			return;
		}
		bool flag = Grid.HasControlFocus && !Grid.CurrentCell.StaticDrawing;
		bool flag2 = !flag && showCurrentCellBorderBehavior != GridShowCurrentCellBorder.AlwaysVisible;
		GridDrawCurrentCellBorderEventArgs e = new GridDrawCurrentCellBorderEventArgs(currentRowIndex, currentColIndex, g, r, flag, StyleInfo, showCurrentCellBorderBehavior);
		grid.RaiseDrawCurrentCellBorder(e);
		if (!e.Cancel)
		{
			if (!flag2)
			{
				flag2 = false;
				_ = Grid.Model.Properties;
				int num = 1;
				InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left, r.Top, r.Left + num, r.Bottom));
				InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Right - num, r.Top, r.Right, r.Bottom));
				InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left + num, r.Top, r.Right - num, r.Top + num));
				InvertRect(g, cellBoundsCore, Rectangle.FromLTRB(r.Left + num, r.Bottom - num, r.Right - num, r.Bottom));
			}
			else
			{
				GridBorderPaint.DrawRectangle(g, new GridBorder(GridBorderStyle.Dashed, Color.Gray, GridBorderWeight.Thin), r, StyleInfo.Interior.BackColor, GridBorderSide.All);
			}
		}
	}

	internal void RaiseOutlineCurrentCell(Graphics g, Rectangle r)
	{
		OnOutlineCurrentCell(g, r);
	}

	private void GridViewLayoutChanged(object sender, EventArgs e)
	{
		ResetCellLayout();
		OnCellLayoutChanged();
	}

	protected virtual void OnCellLayoutChanged()
	{
	}

	protected virtual void OnGridGotFocus(EventArgs e)
	{
	}

	internal void RaiseGridGotFocus(EventArgs e)
	{
		OnGridGotFocus(e);
	}

	public void ResetCellLayout()
	{
		layout = new GridCellContextValue(null);
	}

	public Rectangle GetCellBoundsCore(int rowIndex, int colIndex)
	{
		return GetCellBoundsCore(rowIndex, colIndex, includeFloated: false);
	}

	public Rectangle GetCellBoundsCore(int rowIndex, int colIndex, bool includeFloated)
	{
		GridRangeOptions gridRangeOptions = GridRangeOptions.MergeCoveredCells | GridRangeOptions.MergeMergedCells | GridRangeOptions.CalculateNonClientArea;
		if (includeFloated)
		{
			gridRangeOptions |= GridRangeOptions.MergeFloatedCells;
		}
		return Grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), gridRangeOptions);
	}

	[DocumentationExclude]
	public Rectangle GetCellBoundsCoreInt(int rowIndex, int colIndex, bool nonClientIfVisible)
	{
		if (rowIndex <= Grid.ViewLayout.LastVisibleRow && colIndex <= Grid.ViewLayout.LastVisibleCol)
		{
			GridRangeInfo range = Grid.ViewLayout.CombineSpannedRanges(GridRangeInfo.Cell(rowIndex, colIndex));
			if (Grid.ViewLayout.IsRangeVisible(range))
			{
				return grid.RangeInfoToRectangle(range, nonClientIfVisible ? GridRangeOptions.CalculateNonClientArea : GridRangeOptions.None);
			}
		}
		return Rectangle.Empty;
	}

	public GridCellLayout GetCellLayout(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridCellLayout gridCellLayout = layout.GetValue(rowIndex, colIndex) as GridCellLayout;
		if (gridCellLayout == null)
		{
			Rectangle cellBoundsCore = GetCellBoundsCore(rowIndex, colIndex);
			gridCellLayout = PerformLayout(rowIndex, colIndex, style, cellBoundsCore);
			layout.SetValue(rowIndex, colIndex, gridCellLayout);
		}
		return gridCellLayout;
	}

	public Rectangle GetCellClientRectangle(int rowIndex, int colIndex, GridStyleInfo style, bool floatedCells)
	{
		if (!floatedCells)
		{
			return GetCellLayout(rowIndex, colIndex, style).ClientRectangle;
		}
		Rectangle cellBoundsCore = GetCellBoundsCore(rowIndex, colIndex, includeFloated: true);
		GridCellLayout gridCellLayout = PerformLayout(rowIndex, colIndex, style, cellBoundsCore);
		return gridCellLayout.ClientRectangle;
	}

	public GridCellLayout PerformLayout(int rowIndex, int colIndex)
	{
		Rectangle cellBoundsCore = GetCellBoundsCore(rowIndex, colIndex);
		return PerformLayout(rowIndex, colIndex, Grid.Model[rowIndex, colIndex], cellBoundsCore);
	}

	public GridCellLayout PerformLayout(int rowIndex, int colIndex, GridStyleInfo style)
	{
		Rectangle cellBoundsCore = GetCellBoundsCore(rowIndex, colIndex);
		return PerformLayout(rowIndex, colIndex, style, cellBoundsCore);
	}

	public GridCellLayout PerformLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle cellRectangle)
	{
		GridCellLayout gridCellLayout = new GridCellLayout();
		gridCellLayout.CellRectangle = cellRectangle;
		GridMargins gridMargins = Grid.Model.StyleInfoBordersToMargins(style);
		if (Grid.IsRightToLeft())
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		gridCellLayout.InnerRectangle = GridMargins.RemoveMargins(cellRectangle, gridMargins);
		int count = Buttons.Count;
		Rectangle[] array = new Rectangle[count];
		gridCellLayout.ClientRectangle = OnLayout(rowIndex, colIndex, style, gridCellLayout.InnerRectangle, array);
		for (int i = 0; i < count; i++)
		{
			GetButton(i).Bounds = array[i];
		}
		gridCellLayout.Buttons = array;
		gridCellLayout.TextRectangle = RemoveMargins(gridCellLayout.ClientRectangle, style);
		return gridCellLayout;
	}

	protected virtual Rectangle RemoveMargins(Rectangle clientRectangle, GridStyleInfo style)
	{
		GridMargins gridMargins = style.ReadOnlyTextMargins.ToMargins();
		if (Grid.IsRightToLeft())
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		return GridMargins.RemoveMargins(clientRectangle, gridMargins);
	}

	protected virtual Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		Rectangle result = innerBounds;
		int count = Buttons.Count;
		if (!Grid.IsPrinting() && count > 0 && OnQueryShowButtons(rowIndex, colIndex, style))
		{
			innerBounds.Inflate(-1, -1);
			int width = Model.ButtonBarSize.Width;
			int num = width / count;
			result.Width -= width;
			int num2 = Math.Min(Model.ButtonBarSize.Height, innerBounds.Height);
			if (num2 == 0)
			{
				num2 = innerBounds.Height;
			}
			_ = style.TextAlign;
			GridVerticalAlignment verticalAlignment = style.VerticalAlignment;
			int num3 = innerBounds.Top;
			switch (verticalAlignment)
			{
			case GridVerticalAlignment.Middle:
				num3 += (innerBounds.Height - num2) / 2;
				break;
			case GridVerticalAlignment.Bottom:
				num3 += innerBounds.Height - num2;
				break;
			}
			int num4 = innerBounds.Left;
			if (style.TextAlign == GridTextAlign.Right != Grid.IsRightToLeft())
			{
				result.Offset(width, 0);
			}
			else
			{
				num4 += innerBounds.Width - width;
			}
			for (int i = 0; i < count; i++)
			{
				Rectangle rectangle = new Rectangle(num4, num3, num, num2);
				buttonsBounds[i] = rectangle;
				num4 += num;
			}
		}
		return result;
	}

	public void DrawSingleCell(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style, bool includeBorders)
	{
		bool bForceDrawBackground = grid.m_bForceDrawBackground;
		grid.m_bForceDrawBackground = true;
		shouldDrawBorders = includeBorders;
		Draw(g, cellRectangle, rowIndex, colIndex, style);
		shouldDrawBorders = true;
		grid.m_bForceDrawBackground = bForceDrawBackground;
		if (includeBorders)
		{
			if (!style.Borders.Top.IsEmpty)
			{
				GridBorderPaint.DrawRectangle(g, style.Borders.Top, cellRectangle, style.BackColor, GridBorderSide.Top, Grid.PrintingMode);
			}
			if (!style.Borders.Left.IsEmpty)
			{
				GridBorderPaint.DrawRectangle(g, style.Borders.Left, cellRectangle, style.BackColor, GridBorderSide.Left, Grid.PrintingMode);
			}
			if (style.Borders.Bottom.Style == GridBorderStyle.Standard)
			{
				GridBorder gridLineBorder = grid.Model.GetGridLineBorder();
				GridBorderPaint.DrawRectangle(g, gridLineBorder, cellRectangle, style.BackColor, GridBorderSide.Bottom, Grid.PrintingMode);
			}
			else if (!style.Borders.Bottom.IsEmpty)
			{
				GridBorderPaint.DrawRectangle(g, style.Borders.Bottom, cellRectangle, style.BackColor, GridBorderSide.Bottom, Grid.PrintingMode);
			}
			if (style.Borders.Right.Style == GridBorderStyle.Standard)
			{
				GridBorder gridLineBorder2 = grid.Model.GetGridLineBorder();
				GridBorderPaint.DrawRectangle(g, gridLineBorder2, cellRectangle, style.BackColor, GridBorderSide.Right, Grid.PrintingMode);
			}
			else if (!style.Borders.Right.IsEmpty)
			{
				GridBorderPaint.DrawRectangle(g, style.Borders.Right, cellRectangle, style.BackColor, GridBorderSide.Right, Grid.PrintingMode);
			}
		}
	}

	public virtual void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridCellLayout gridCellLayout = PerformLayout(rowIndex, colIndex, style, cellRectangle);
		Rectangle rect = cellRectangle;
		if (!shouldDrawBorders)
		{
			rect = gridCellLayout.InnerRectangle;
		}
		DrawBackground(g, rect, style, style.BackgroundImage != null && !Grid.m_bDrawBannerCell);
		OnDraw(g, gridCellLayout.ClientRectangle, rowIndex, colIndex, style);
		if (!OnQueryShowButtons(rowIndex, colIndex, style))
		{
			return;
		}
		for (int i = 0; i < Buttons.Count; i++)
		{
			GridCellButton button;
			if ((button = GetButton(i)) != null && !gridCellLayout.Buttons[i].IsEmpty)
			{
				button.Bounds = gridCellLayout.Buttons[i];
				if (cellRectangle.Contains(button.Bounds))
				{
					OnDrawCellButton(button, g, rowIndex, colIndex, Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && !Grid.IsPrinting() && Grid.HasControlFocus, style);
				}
			}
		}
	}

	protected virtual void OnDrawCellButton(GridCellButton button, Graphics g, int rowIndex, int colIndex, bool bActive, GridStyleInfo style)
	{
		GridDrawCellButtonEventArgs e = new GridDrawCellButtonEventArgs(button, g, rowIndex, colIndex, bActive, style);
		grid.RaiseDrawCellButton(e);
		if (!e.Cancel)
		{
			button.Draw(g, rowIndex, colIndex, Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && !Grid.IsPrinting() && Grid.HasControlFocus, style);
		}
	}

	protected virtual void OnDrawCellButtonBackground(GridCellButton button, Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		GridDrawCellButtonBackgroundEventArgs e = new GridDrawCellButtonBackgroundEventArgs(button, g, rect, buttonState, style);
		grid.RaiseDrawCellButtonBackground(e);
		if (!e.Cancel)
		{
			button.DrawButton(g, rect, buttonState, style);
		}
	}

	internal void RaiseDrawCellButtonBackground(GridCellButton button, Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		OnDrawCellButtonBackground(button, g, rect, buttonState, style);
	}

	protected virtual bool OnQueryShowButtons(int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (!Grid.IsPrinting())
		{
			if (style.ShowButtons != GridShowButtons.Show && (style.ShowButtons != GridShowButtons.ShowCurrentRow || !Grid.IsShowCurrentRow(rowIndex)) && (style.ShowButtons != GridShowButtons.ShowCurrentCell || !Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex)))
			{
				if (style.ShowButtons == GridShowButtons.ShowCurrentCellEditing && Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
				{
					return Grid.CurrentCell.IsEditing;
				}
				return false;
			}
			return true;
		}
		return false;
	}

	protected virtual void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
	}

	protected void AddButton(GridCellButton button)
	{
		if (buttons == null)
		{
			buttons = new ArrayList();
		}
		buttons.Add(button);
		button.Clicked += ButtonClicked;
	}

	internal void IntAddButton(GridCellButton button)
	{
		AddButton(button);
	}

	protected void RemoveButton(GridCellButton button)
	{
		if (buttons != null)
		{
			if (buttons.Contains(button))
			{
				buttons.Remove(button);
			}
			button.Clicked -= ButtonClicked;
		}
	}

	internal void IntRemoveButton(GridCellButton button)
	{
		RemoveButton(button);
	}

	protected GridCellButton GetButton(int index)
	{
		if (buttons == null || index >= buttons.Count)
		{
			return null;
		}
		return (GridCellButton)buttons[index];
	}

	protected virtual void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		if (rect.Height == 0 || rect.Width == 0)
		{
			return;
		}
		bool isColored = !Grid.PrintingMode || !Grid.Model.Properties.BlackWhite;
		GridRangeInfo range = GridRangeInfo.Cell(style.CellIdentity.RowIndex, style.CellIdentity.ColIndex);
		GridDrawCellBackgroundEventArgs e = new GridDrawCellBackgroundEventArgs(g, range, isBannered: false, isColored, style, rect, rect, isClipped: false);
		if (fillBackground || (!Grid.Model.Options.TransparentBackground && (Grid.m_bDrawCoveredCell || Grid.m_bForceDrawBackground)))
		{
			grid.RaiseDrawCellBackground(e);
			if (!e.Cancel)
			{
				OnDrawCellBackground(e);
			}
		}
		e.Cancel = false;
		grid.RaiseDrawCellFrameAppearance(e);
		if (!e.Cancel)
		{
			DrawCellAppearance(g, rect, style);
		}
	}

	protected virtual void OnDrawCellBackground(GridDrawCellBackgroundEventArgs e)
	{
		bool isColored = e.IsColored;
		Graphics graphics = e.Graphics;
		Rectangle targetBounds = e.TargetBounds;
		GridStyleInfo style = e.Style;
		if (isColored)
		{
			BrushPaint.FillRectangle(graphics, targetBounds, grid.GetInterior(style.Interior));
		}
		else
		{
			BrushPaint.FillRectangle(graphics, targetBounds, style.Interior.MakeBlackAndWhite());
		}
		Image backgroundImage = style.BackgroundImage;
		if (backgroundImage == null)
		{
			return;
		}
		if (style.BackgroundImageMode == GridBackgroundImageMode.TileImage)
		{
			using (TextureBrush textureBrush = new TextureBrush(backgroundImage, WrapMode.Tile))
			{
				if (targetBounds.Location != Point.Empty)
				{
					Matrix transform = textureBrush.Transform;
					transform.Translate(targetBounds.X, targetBounds.Y);
					textureBrush.Transform = transform;
				}
				graphics.FillRectangle(textureBrush, targetBounds);
				return;
			}
		}
		PictureBoxSizeMode sizeMode = GridUtil.ConvertToPictureBoxSizeMode(style.BackgroundImageMode);
		Rectangle imageRectangle = GridUtil.GetImageRectangle(backgroundImage, targetBounds.Size, sizeMode);
		imageRectangle.Offset(targetBounds.Location);
		if (!e.IsClipped && (imageRectangle.Width > targetBounds.Width || imageRectangle.Height > targetBounds.Height))
		{
			Region clip = graphics.Clip;
			graphics.IntersectClip(targetBounds);
			graphics.DrawImage(backgroundImage, imageRectangle);
			graphics.Clip = clip;
		}
		else
		{
			graphics.DrawImage(backgroundImage, imageRectangle);
		}
	}

	internal void RaiseDrawCellBackground(GridDrawCellBackgroundEventArgs e)
	{
		OnDrawCellBackground(e);
	}

	protected virtual void DrawCellAppearance(Graphics g, Rectangle rect, GridStyleInfo style)
	{
		if (!Grid.PrintingMode || !Grid.Model.Properties.BlackWhite)
		{
			Rectangle rectangle = Model.SubtractBorders(rect, style, isRightToLeft: false);
			GridCellAppearance cellAppearance = style.CellAppearance;
			Color color = Color.Empty;
			Color color2 = Color.Empty;
			if (Grid.Model.Options.GridVisualStyles == GridVisualStyles.SystemTheme)
			{
				color = SystemColors.ControlDarkDark;
				color2 = SystemColors.ControlLightLight;
			}
			switch (cellAppearance)
			{
			case GridCellAppearance.Raised:
				GridPaint.Draw3dFrame(g, rectangle.Left - 1, rectangle.Top - 1, rectangle.Right, rectangle.Bottom, 1, color2, color);
				break;
			case GridCellAppearance.Sunken:
				GridPaint.Draw3dFrame(g, rectangle.Left - 1, rectangle.Top - 1, rectangle.Right, rectangle.Bottom, 1, color, color2);
				break;
			}
		}
	}

	protected virtual bool GetMarkHeaderState(int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (!(style.BackColor == SystemColors.Highlight))
		{
			if (Grid.OutlineCurrentCellHeaderManager == null)
			{
				return false;
			}
			return Grid.OutlineCurrentCellHeaderManager.GetMarkHeaderState(this, rowIndex, colIndex, style);
		}
		return true;
	}

	protected internal void SetControl(Control control)
	{
		if (this.control != control)
		{
			if (this.control != null)
			{
				UnwireControl();
			}
			this.control = control;
			if (this.control != null)
			{
				WireControl();
			}
		}
	}

	private void WireControl()
	{
		control.LostFocus += ControlLostFocus;
		control.GotFocus += ControlGotFocus;
		control.MouseDown += ControlMouseDown;
	}

	private void UnwireControl()
	{
		control.LostFocus -= ControlLostFocus;
		control.GotFocus -= ControlGotFocus;
		control.MouseDown -= ControlMouseDown;
	}

	protected virtual void ControlLostFocus(object sender, EventArgs e)
	{
		NotifyCurrentCellControlLostFocus(Control);
	}

	protected virtual void ControlGotFocus(object sender, EventArgs e)
	{
		NotifyCurrentCellControlGotFocus(Control);
	}

	protected virtual void OnSetControlText(string text)
	{
	}

	public void ResetControlText()
	{
		hasControlText = false;
		controlText = string.Empty;
	}

	public virtual void UpdateControlValue()
	{
		try
		{
			GridStyleInfo styleInfo = StyleInfo;
			styleInfo.Text = ControlText;
			SetControlValue(styleInfo.CellValue, initControlText: false);
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

	protected void SetControlValue(object value, bool initControlText)
	{
		inSetSetControlValue = true;
		try
		{
			if (!(currentStyle.CellValueType == null) && value != null && !(value is DBNull) && value.GetType() != currentStyle.CellValueType)
			{
				value = (string.IsNullOrEmpty(currentStyle.Format) ? ValueConvert.ChangeType(value, currentStyle.CellValueType, currentStyle.GetCulture(useCurrentCultureIfNull: true), returnDbNUllIfNotValid: true) : ValueConvert.ChangeType(value, currentStyle.CellValueType, currentStyle.GetCulture(useCurrentCultureIfNull: true), currentStyle.Format, returnDbNUllIfNotValid: true));
				if (value is DBNull)
				{
					hasControlValue = false;
					controlValue = null;
					if (initControlText && !InSetControlText)
					{
						InitializeControlText(value);
					}
					return;
				}
			}
			hasControlValue = true;
			controlValue = value;
			currentStyle.CellValue = value;
			if (initControlText && !InSetControlText)
			{
				InitializeControlText(value);
			}
		}
		finally
		{
			inSetSetControlValue = false;
		}
	}

	protected virtual void InitializeControlText(object controlValue)
	{
		string formattedText = StyleInfo.GetFormattedText(controlValue, 3);
		GridCurrentCellInitializeControlTextEventArgs e = new GridCurrentCellInitializeControlTextEventArgs(RowIndex, ColIndex, StyleInfo, controlValue, formattedText);
		if (Grid.RaiseCurrentCellInitializeControlText(e))
		{
			ControlText = e.ControlText;
		}
	}

	public void ResetControlValue()
	{
		hasControlValue = false;
		controlValue = null;
	}

	public virtual string GetDisplayText()
	{
		return ControlText;
	}

	public virtual object GetCellValue()
	{
		return ControlValue;
	}

	public void Initialize(int rowIndex, int colIndex)
	{
		lastValidateTime = int.MinValue;
		lastValidateString = null;
		currentRowIndex = rowIndex;
		currentColIndex = colIndex;
		inInitialize = true;
		initalizeCalled = true;
		PerformLayout(rowIndex, colIndex);
		hasControlText = false;
		hasControlValue = false;
		currentStyle = StyleInfo;
		Model.activeTextValue.ResetValue();
		OnInitialize(rowIndex, colIndex);
		if (dropDownImp != null)
		{
			dropDownImp.OnInitialize(rowIndex, colIndex);
		}
		inInitialize = false;
	}

	protected virtual void OnInitialize(int rowIndex, int colIndex)
	{
		if (!HasControlText && !HasControlValue)
		{
			GridStyleInfo gridStyleInfo = Grid.Model[rowIndex, colIndex];
			ControlValue = gridStyleInfo.CellValue;
		}
	}

	public bool InitalizedAt(int rowIndex, int colIndex)
	{
		if (initalizeCalled && currentRowIndex == rowIndex)
		{
			return currentColIndex == colIndex;
		}
		return false;
	}

	public virtual void Hide()
	{
		Control control = Control;
		if (control != null && control.Bounds.IntersectsWith(grid.GridBounds))
		{
			grid.SuspendLayout();
			control.Location = new Point(10000, 10000);
			grid.ResumeLayout(performLayout: false);
		}
	}

	public virtual bool IsControlVisible()
	{
		return Control?.Bounds.IntersectsWith(grid.GridBounds) ?? false;
	}

	public bool RaiseProcessKeyEventArgs(ref Message m)
	{
		return ProcessKeyEventArgs(ref m);
	}

	protected virtual bool ProcessKeyEventArgs(ref Message m)
	{
		KeyEventArgs e = null;
		KeyPressEventArgs e2 = null;
		if (m.Msg == 258 || m.Msg == 262)
		{
			if (charsToIgnore > 0)
			{
				charsToIgnore--;
				return false;
			}
			e2 = new KeyPressEventArgs((char)(int)m.WParam);
			if (CurrentCell.IsEditing && !Grid.IsVisibleCell(RowIndex, ColIndex))
			{
				CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
			}
			Grid.OnCurrentCellKeyPress(e2);
			if (!e2.Handled)
			{
				OnKeyPress(e2);
			}
		}
		else if (m.Msg == 646)
		{
			charsToIgnore += (byte)(3 - Marshal.SystemDefaultCharSize);
			if (Marshal.SystemDefaultCharSize == 1)
			{
				byte[] bytes = new byte[2]
				{
					(byte)((int)m.WParam >> 8),
					(byte)(int)m.WParam
				};
				string text = Encoding.Default.GetString(bytes);
				e2 = new KeyPressEventArgs(text[0]);
			}
			else
			{
				e2 = new KeyPressEventArgs((char)(int)m.WParam);
			}
			Grid.OnCurrentCellKeyPress(e2);
			if (!e2.Handled)
			{
				OnKeyPress(e2);
			}
		}
		else
		{
			e = new KeyEventArgs((Keys)((int)m.WParam | (int)Control.ModifierKeys));
			if (m.Msg == 256 || m.Msg == 260)
			{
				Grid.OnCurrentCellKeyDown(e);
				if (!e.Handled)
				{
					OnKeyDown(e);
				}
			}
			else
			{
				Grid.OnCurrentCellKeyUp(e);
				if (!e.Handled)
				{
					OnKeyUp(e);
				}
			}
		}
		return e2?.Handled ?? e.Handled;
	}

	internal void RaiseKeyDown(KeyEventArgs e)
	{
		OnKeyDown(e);
	}

	internal void RaiseKeyPress(KeyPressEventArgs e)
	{
		OnKeyPress(e);
	}

	protected virtual void OnKeyDown(KeyEventArgs e)
	{
		if (dropDownImp != null)
		{
			dropDownImp.OnKeyDown(e);
		}
	}

	protected virtual void OnKeyUp(KeyEventArgs e)
	{
	}

	protected virtual void OnKeyPress(KeyPressEventArgs e)
	{
	}

	public virtual bool Copy()
	{
		return false;
	}

	public virtual bool Paste()
	{
		return false;
	}

	public virtual bool Cut()
	{
		return false;
	}

	public virtual bool CanCopy()
	{
		return false;
	}

	public virtual bool CanCut()
	{
		return false;
	}

	public virtual bool CanPaste()
	{
		return false;
	}

	public virtual bool FindText(string find, int rowIndex, int colIndex, GridFindTextOptions options, bool bSetCell)
	{
		bool flag = (options & GridFindTextOptions.MatchWholeCell) != 0;
		bool flag2 = (options & GridFindTextOptions.MatchCase) != 0;
		GridStyleInfo gridStyleInfo = Grid.Model[rowIndex, colIndex];
		string text = gridStyleInfo.FormattedText;
		CultureInfo culture = gridStyleInfo.GetCulture(useCurrentCultureIfNull: true);
		bool flag3 = false;
		if (flag)
		{
			flag3 = string.Compare(find, text, !flag2, culture) == 0;
		}
		else
		{
			if (!flag2)
			{
				find = find.ToLower(culture);
				text = text.ToLower(culture);
			}
			flag3 = text.IndexOf(find.ToString()) != -1;
		}
		if (flag3 && bSetCell)
		{
			CurrentCell.MoveTo(rowIndex, colIndex);
		}
		return flag3;
	}

	public virtual bool ReplaceText(string find, string replace, int rowIndex, int colIndex, GridFindTextOptions options, bool bSetCell)
	{
		bool flag = (options & GridFindTextOptions.MatchWholeCell) != 0;
		bool flag2 = (options & GridFindTextOptions.MatchCase) != 0;
		GridStyleInfo gridStyleInfo = Grid.Model[rowIndex, colIndex];
		string formattedText = gridStyleInfo.FormattedText;
		CultureInfo culture = gridStyleInfo.GetCulture(useCurrentCultureIfNull: true);
		string text = formattedText;
		if (!flag2)
		{
			find = find.ToLower(culture);
			text = formattedText.ToLower(culture);
		}
		bool flag3 = false;
		if (flag)
		{
			flag3 = find.Equals(text);
			if (flag3)
			{
				if (bSetCell)
				{
					CurrentCell.MoveTo(rowIndex, colIndex);
					CurrentCell.BeginEdit();
					CurrentCell.Renderer.ControlText = replace;
				}
				else
				{
					Grid.Model[rowIndex, colIndex].FormattedText = replace;
				}
			}
		}
		else
		{
			int num = text.IndexOf(find.ToString());
			if (num != -1)
			{
				flag3 = true;
				StringBuilder stringBuilder = new StringBuilder();
				if (num > 0)
				{
					stringBuilder.Append(formattedText.Substring(0, num));
				}
				stringBuilder.Append(replace);
				num += find.Length;
				int num2 = -1;
				do
				{
					text = formattedText.Substring(num);
					if (!flag2)
					{
						text = text.ToLower(culture);
					}
					num2 = text.IndexOf(find.ToString());
					if (num2 != -1)
					{
						if (num2 > 0)
						{
							stringBuilder.Append(formattedText.Substring(num, num2));
						}
						stringBuilder.Append(replace);
						num += num2 + find.Length;
					}
				}
				while (num2 != -1);
				if (num < formattedText.Length)
				{
					stringBuilder.Append(formattedText.Substring(num));
				}
				if (bSetCell)
				{
					CurrentCell.MoveTo(rowIndex, colIndex);
					CurrentCell.BeginEdit();
					CurrentCell.Renderer.ControlText = stringBuilder.ToString();
				}
				else
				{
					Grid.Model[rowIndex, colIndex].FormattedText = stringBuilder.ToString();
				}
			}
		}
		return flag3;
	}

	public virtual void ReplaceSel(string replacement)
	{
		if (Initalized && Grid.CurrentCell.HasCurrentCellAt(currentRowIndex, currentColIndex))
		{
			Grid.Model[currentRowIndex, currentColIndex].ApplyFormattedText(replacement, 4);
		}
	}

	public virtual bool GetSelectedText(out string strResult)
	{
		if (Initalized)
		{
			strResult = ControlText;
			return true;
		}
		strResult = string.Empty;
		return false;
	}

	public virtual void OnNotifyMsg(ref Message pMsg)
	{
	}

	public virtual bool IsReadOnly()
	{
		if (!Grid.Model.IgnoreReadOnly)
		{
			if (!Grid.Model.IsReadOnly)
			{
				return Grid.Model[currentRowIndex, currentColIndex].ReadOnly;
			}
			return true;
		}
		return false;
	}

	public virtual bool ValidateString(string text)
	{
		if (lastValidateString != null && text == lastValidateString && Environment.TickCount - lastValidateTime < 100)
		{
			return lastValidateResult;
		}
		GridCurrentCellValidateStringEventArgs e = new GridCurrentCellValidateStringEventArgs(text);
		Grid.OnCurrentCellValidateString(e);
		lastValidateString = text;
		lastValidateResult = !e.Cancel;
		lastValidateTime = Environment.TickCount;
		return lastValidateResult;
	}

	public int RaiseHitTest(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, IMouseController controller)
	{
		int result = HitTestCellButton(rowIndex, colIndex, mouseEventArgs, controller);
		GridCellHitTestEventArgs e = new GridCellHitTestEventArgs(rowIndex, colIndex, mouseEventArgs, controller, ht.CellButtonElement, result);
		grid.RaiseCellHitTest(e);
		if (e.Cancel)
		{
			return e.Result;
		}
		result = e.Result;
		if (result != 0)
		{
			if (result != 7)
			{
				ht.CellButtonElement = null;
				ht.CellButtonIndex = -1;
			}
			return result;
		}
		return OnHitTest(rowIndex, colIndex, mouseEventArgs, controller);
	}

	private int HitTestCellButton(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, IMouseController controller)
	{
		ht.CellButtonElement = null;
		ht.CellButtonIndex = -1;
		if (Grid.Model[rowIndex, colIndex].Clickable)
		{
			PerformLayout(rowIndex, colIndex);
			for (int i = 0; i < Buttons.Count; i++)
			{
				GridCellButton button = GetButton(i);
				if (button.HitTest(rowIndex, colIndex, mouseEventArgs, controller) != 0)
				{
					ht.Point = new Point(mouseEventArgs.X, mouseEventArgs.Y);
					ht.RowIndex = rowIndex;
					ht.ColIndex = colIndex;
					ht.CellButtonElement = button;
					ht.CellRenderer = this;
					ht.CellButtonIndex = i;
					ht.CellButtonBounds = button.Bounds;
					return 7;
				}
			}
		}
		return 0;
	}

	protected virtual int OnHitTest(int rowIndex, int colIndex, MouseEventArgs e, IMouseController controller)
	{
		return 0;
	}

	public Cursor RaiseGetCursor(int rowIndex, int colIndex)
	{
		if (ht.CellButtonElement != null)
		{
			return ht.CellButtonElement.GetCursor(ht);
		}
		GridCellCursorEventArgs e = new GridCellCursorEventArgs(rowIndex, colIndex, ht.CellButtonElement, null);
		grid.RaiseCellCursor(e);
		if (e.Cancel)
		{
			return e.Cursor;
		}
		return OnGetCursor(rowIndex, colIndex);
	}

	protected virtual Cursor OnGetCursor(int rowIndex, int colIndex)
	{
		return Cursors.Default;
	}

	public void RaiseMouseHoverEnter(int rowIndex, int colIndex)
	{
		ht.CellButtonElement = null;
		ht.CellButtonIndex = -1;
		savedHt.CellButtonElement = null;
		savedHt.CellButtonIndex = -1;
		GridCellMouseEventArgs e = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, null);
		grid.RaiseCellMouseHoverEnter(e);
		if (!e.Cancel)
		{
			OnMouseHoverEnter(rowIndex, colIndex);
		}
	}

	protected virtual void OnMouseHoverEnter(int rowIndex, int colIndex)
	{
	}

	public void RaiseMouseHover(int rowIndex, int colIndex, MouseEventArgs e)
	{
		HitTestCellButton(rowIndex, colIndex, e, null);
		if (savedHt.RowIndex != ht.RowIndex || savedHt.ColIndex != ht.ColIndex || savedHt.CellButtonIndex != ht.CellButtonIndex)
		{
			if (savedHt.CellButtonElement != null)
			{
				savedHt.CellButtonElement.MouseHoverLeave(e, savedHt);
			}
			if (ht.CellButtonElement != null)
			{
				ht.CellButtonElement.MouseHoverEnter(ht);
			}
		}
		savedHt = (GridCellHitTestInfo)ht.Clone();
		if (ht.CellButtonElement != null)
		{
			ht.CellButtonElement.MouseHover(e, ht);
			return;
		}
		GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, e);
		grid.RaiseCellMouseHover(e2);
		if (!e2.Cancel)
		{
			OnMouseHover(rowIndex, colIndex, e);
		}
	}

	protected virtual void OnMouseHover(int rowIndex, int colIndex, MouseEventArgs e)
	{
	}

	public void RaiseMouseHoverLeave(int rowIndex, int colIndex, EventArgs e)
	{
		if (savedHt.CellButtonElement != null)
		{
			savedHt.CellButtonElement.Bounds = savedHt.CellButtonBounds;
			savedHt.CellButtonElement.MouseHoverLeave(e, savedHt);
		}
		ht.CellButtonElement = null;
		savedHt.CellButtonElement = null;
		GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, null);
		grid.RaiseCellMouseHoverLeave(e2);
		if (!e2.Cancel)
		{
			OnMouseHoverLeave(rowIndex, colIndex, e);
		}
	}

	protected virtual void OnMouseHoverLeave(int rowIndex, int colIndex, EventArgs e)
	{
	}

	public void RaiseMouseDown(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (ht.CellButtonElement != null)
		{
			ht.CellButtonElement.MouseDown(e, ht);
			return;
		}
		MouseEventArgs mouseEventArgs = new MouseEventArgs(e.Button, e.Clicks, e.X + scrolledInfo.X, e.Y + scrolledInfo.Y, e.Delta);
		GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, mouseEventArgs);
		grid.RaiseCellMouseDown(e2);
		if (!e2.Cancel)
		{
			OnMouseDown(rowIndex, colIndex, e);
		}
	}

	protected virtual void OnMouseDown(int rowIndex, int colIndex, MouseEventArgs e)
	{
		grid.CurrentCell.MoveTo(rowIndex, colIndex);
		if (e.Clicks == 2)
		{
			RaiseDoubleClick(rowIndex, colIndex, e);
		}
	}

	protected void ControlMouseDown(object sender, MouseEventArgs e)
	{
		if (!HasFocusControl)
		{
			return;
		}
		int tickCount = Environment.TickCount;
		int num = e.Clicks;
		if (num < 2 && num > 0)
		{
			if (mouseDownPoint.IsEmpty || tickCount - mouseDownTick > SystemInformation.DoubleClickTime)
			{
				mouseDownTick = Environment.TickCount;
				mouseDownPoint = new Point(e.X, e.Y);
				if (isGridClick)
				{
					Grid.MouseDown += ControlMouseDown;
					Timer timer = new Timer();
					timer.Interval = SystemInformation.DoubleClickTime + 1;
					timer.Tick += RemoveMouseDownTick;
					timer.Start();
					isGridClick = false;
				}
			}
			else
			{
				if (Math.Abs(mouseDownPoint.X - e.X) < SystemInformation.DoubleClickSize.Width && Math.Abs(mouseDownPoint.Y - e.Y) < SystemInformation.DoubleClickSize.Height)
				{
					num = 2;
				}
				mouseDownPoint = Point.Empty;
				mouseDownTick = 0;
			}
		}
		if (num == 2)
		{
			NotifyCurrentCellControlDoubleClick(Control);
		}
	}

	private void RemoveMouseDownTick(object sender, EventArgs e)
	{
		if (sender is Timer timer)
		{
			timer.Dispose();
		}
		Grid.MouseDown -= ControlMouseDown;
		isGridClick = false;
	}

	public void RaiseMouseMove(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (ht.CellButtonElement != null)
		{
			ht.CellButtonElement.MouseMove(e, ht);
			return;
		}
		GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, e);
		grid.RaiseCellMouseMove(e2);
		if (!e2.Cancel)
		{
			OnMouseMove(rowIndex, colIndex, e);
		}
	}

	protected virtual void OnMouseMove(int rowIndex, int colIndex, MouseEventArgs e)
	{
	}

	public void RaiseMouseUp(int rowIndex, int colIndex, MouseEventArgs e)
	{
		mouseUpCellButtonHitTest = 0;
		if (ht.CellButtonElement != null)
		{
			GridCellButton cellButtonElement = ht.CellButtonElement;
			mouseUpCellButtonHitTest = RaiseHitTest(rowIndex, colIndex, e, null);
			cellButtonElement.MouseUp(e, ht);
		}
		if (grid != null && !grid.IsDisposed)
		{
			GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, e);
			grid.RaiseCellMouseUp(e2);
			if (!e2.Cancel)
			{
				OnMouseUp(rowIndex, colIndex, e);
			}
		}
	}

	protected virtual bool IsPointOverImage(int rowIndex, int colIndex, Point pt)
	{
		return false;
	}

	protected virtual void OnMouseUp(int rowIndex, int colIndex, MouseEventArgs e)
	{
		clickOverImage = IsPointOverImage(rowIndex, colIndex, new Point(e.X, e.Y));
		if (e.Clicks < 2 && mouseUpCellButtonHitTest == 0)
		{
			RaiseClick(rowIndex, colIndex, e);
		}
	}

	public void RaiseCancelMode(int rowIndex, int colIndex)
	{
		if (ht.CellButtonElement != null)
		{
			ht.CellButtonElement.CancelMode(ht);
			return;
		}
		GridCellMouseEventArgs e = new GridCellMouseEventArgs(rowIndex, colIndex, ht.CellButtonElement, null);
		grid.RaiseCellCancelMode(e);
		OnCancelMode(rowIndex, colIndex);
	}

	protected virtual void OnCancelMode(int rowIndex, int colIndex)
	{
	}

	private void GridWindowScrolled(object sender, ScrollWindowEventArgs e)
	{
		scrolledInfo.X = e.XAmount;
		scrolledInfo.Y = e.YAmount;
	}

	public void RaiseClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (alwaysRaiseCellClick || grid.Model[rowIndex, colIndex].Clickable)
		{
			MouseEventArgs e2 = new MouseEventArgs(e.Button, e.Clicks, e.X + scrolledInfo.X, e.Y + scrolledInfo.Y, e.Delta);
			clickOverImage = IsPointOverImage(rowIndex, colIndex, new Point(e.X, e.Y));
			if (Grid.RaiseCellClick(rowIndex, colIndex, e2, clickOverImage))
			{
				OnClick(rowIndex, colIndex, e2);
			}
			isGridClick = true;
		}
	}

	protected virtual void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		scrolledInfo = Point.Empty;
		Grid.WindowScrolled += GridWindowScrolled;
		if (Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.Click);
		}
		else
		{
			Grid.CurrentCell.MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.ScrollInView);
		}
		Grid.WindowScrolled -= GridWindowScrolled;
	}

	public void RaiseDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (Grid.RaiseCellDoubleClick(rowIndex, colIndex, e, clickOverImage))
		{
			OnDoubleClick(rowIndex, colIndex, e);
		}
	}

	protected virtual void OnDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
	}

	private void ButtonClicked(object sender, GridCellEventArgs e)
	{
		if (grid.RaiseCellButtonClicked(e.RowIndex, e.ColIndex, Buttons.IndexOf(sender), (GridCellButton)sender))
		{
			OnButtonClicked(e.RowIndex, e.ColIndex, Buttons.IndexOf(sender));
		}
	}

	protected virtual void OnButtonClicked(int rowIndex, int colIndex, int button)
	{
		if (dropDownImp != null)
		{
			dropDownImp.OnButtonClicked(rowIndex, colIndex, button);
		}
	}

	protected virtual IGridDropDownContainer CreateDropDownContainer()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.CreateDropDownContainer();
	}

	internal IGridDropDownContainer IntCreateDropDownContainer()
	{
		return CreateDropDownContainer();
	}

	public void EnsureDropDownContainer()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.EnsureDropDownContainer();
	}

	protected virtual void InitializeDropDownContainer()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.InitializeDropDownContainer();
	}

	internal void IntInitializeDropDownContainer()
	{
		InitializeDropDownContainer();
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.ChildClosing(childUI, popupCloseType);
	}

	public virtual void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.DropDownContainerCloseDropDown(sender, e);
	}

	Point IPopupParent.GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.GetLocationForPopupAlignment(prevAlign, out newAlign);
	}

	Point[] IPopupParent.GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.GetBorderOverlapCue(relativeAlignment);
	}

	public virtual void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.DropDownContainerShowedDropDown(sender, e);
	}

	public virtual void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.DropDownContainerShowingDropDown(sender, e);
	}

	protected bool NotifyShowingDropDown(ref Size size)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.NotifyShowingDropDown(ref size);
	}

	protected void NotifyShowedDropDown()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		dropDownImp.NotifyShowedDropDown();
	}

	Control IPopupItem.GetPopupParentControl()
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.GetPopupParentControl();
	}

	public virtual bool IsRelatedControl(Control control, bool askPopupParent)
	{
		if (dropDownImp == null)
		{
			throw new InvalidOperationException("dropDownImp is null");
		}
		return dropDownImp.IsRelatedControl(control, askPopupParent);
	}

	public virtual bool OnScrollInView(GridScrollCurrentCellReason reason)
	{
		return true;
	}

	public virtual GridCurrentCell GetNestedCurrentCell()
	{
		return CurrentCell;
	}

	public virtual bool ShouldRefreshCurrentCell()
	{
		return true;
	}
}
