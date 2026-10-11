using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownCellImp : IGridDropDownCellImp, IDisposable, IQueryFocusInside, IPopupParent, IPopupItem
{
	private GridControlBase grid;

	private GridCellRendererBase renderer;

	private GridCellButton dropdownButton;

	internal GridDropDownContainer dropdownContainer;

	private IPopupParent popupParent;

	private bool initFocusEditPart;

	private int ignoreDoubleClickTicks = int.MinValue;

	private bool ignoreFocus;

	public bool InitFocusEditPart
	{
		get
		{
			return initFocusEditPart;
		}
		set
		{
			initFocusEditPart = value;
		}
	}

	public int IgnoreDoubleClickTicks
	{
		get
		{
			return ignoreDoubleClickTicks;
		}
		set
		{
			ignoreDoubleClickTicks = value;
		}
	}

	public bool IgnoreFocus
	{
		get
		{
			return ignoreFocus;
		}
		set
		{
			ignoreFocus = value;
		}
	}

	public GridControlBase Grid => grid;

	public GridCurrentCell CurrentCell => grid.CurrentCell;

	public GridCellButton DropDownButton
	{
		get
		{
			return dropdownButton;
		}
		set
		{
			if (value != dropdownButton)
			{
				if (dropdownButton != null)
				{
					renderer.IntRemoveButton(dropdownButton);
				}
				dropdownButton = value;
				if (dropdownButton != null)
				{
					renderer.IntAddButton(dropdownButton);
				}
			}
		}
	}

	bool IPopupParent.IsRightToLeft => grid.IsRightToLeft();

	public bool IsDroppedDown
	{
		get
		{
			if (dropdownContainer != null)
			{
				return dropdownContainer.IsShowing();
			}
			return false;
		}
	}

	public Control EditPart => renderer.Control;

	public IGridDropDownContainer PopupControlContainer
	{
		get
		{
			EnsureDropDownContainer();
			return dropdownContainer;
		}
	}

	public IGridDropDownContainer DropDownContainer
	{
		get
		{
			EnsureDropDownContainer();
			return dropdownContainer;
		}
	}

	public GridDropDownCellImp(GridCellRendererBase renderer)
	{
		this.renderer = renderer;
		grid = renderer.Grid;
		popupParent = renderer;
	}

	public bool QueryFocusInside()
	{
		if (EditPart != null && EditPart.Focused)
		{
			return true;
		}
		if (CurrentCell.IsDroppedDown)
		{
			IQueryFocusInside queryFocusInside = dropdownContainer;
			if (queryFocusInside != null)
			{
				return queryFocusInside.QueryFocusInside();
			}
		}
		return false;
	}

	public void Dispose()
	{
		if (dropdownContainer != null)
		{
			dropdownContainer.BeforePopup -= _DropDownContainerShowingDropDown;
			dropdownContainer.Popup -= _DropDownContainerShowedDropDown;
			dropdownContainer.Dispose();
			dropdownContainer = null;
			grid = null;
			renderer = null;
			dropdownButton = null;
			dropdownContainer = null;
			popupParent = null;
		}
		GC.SuppressFinalize(this);
	}

	public virtual IGridDropDownContainer CreateDropDownContainer()
	{
		GridDropDownContainer gridDropDownContainer = InternalCreateDropDownContainer();
		gridDropDownContainer.Location = new Point(10000, 10000);
		gridDropDownContainer.PopupParent = popupParent;
		gridDropDownContainer.FakeFocus = false;
		gridDropDownContainer.grid = grid;
		return gridDropDownContainer;
	}

	protected virtual GridDropDownContainer InternalCreateDropDownContainer()
	{
		return new GridDropDownContainer();
	}

	public void EnsureDropDownContainer()
	{
		if (dropdownContainer == null)
		{
			bool flag = !ignoreFocus && Grid.Focused;
			dropdownContainer = (GridDropDownContainer)renderer.IntCreateDropDownContainer();
			if (EditPart is ISupportsPopupControlContainer supportsPopupControlContainer)
			{
				supportsPopupControlContainer.PopupControlContainer = dropdownContainer;
			}
			dropdownContainer.BeforePopup += _DropDownContainerShowingDropDown;
			dropdownContainer.Popup += _DropDownContainerShowedDropDown;
			renderer.IntInitializeDropDownContainer();
			if (flag)
			{
				Grid.Focus();
			}
		}
	}

	public virtual void InitializeDropDownContainer()
	{
	}

	public virtual void OnInitialize(int rowIndex, int colIndex)
	{
		if (dropdownButton != null)
		{
			Grid.InternalInvalidate(dropdownButton.Bounds);
		}
	}

	public virtual void OnHasFocusControlChanged()
	{
		if (renderer.HasFocusControl)
		{
			EnsureDropDownContainer();
		}
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (popupCloseType == PopupCloseType.Deactivated)
		{
			GridDropDownContainer gridDropDownContainer = (GridDropDownContainer)grid.DropDownContainerParent;
			if (gridDropDownContainer != null && gridDropDownContainer.grid != null)
			{
				gridDropDownContainer.grid.CurrentCell.CloseDropDown(popupCloseType);
			}
		}
		renderer.DropDownContainerCloseDropDown(childUI, new PopupClosedEventArgs(popupCloseType));
	}

	public virtual void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		Grid.RaiseCurrentCellCloseDropDown(e);
	}

	Point IPopupParent.GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		int colIndex = renderer.ColIndex;
		int rowIndex = renderer.RowIndex;
		GridCellLayout cellLayout = renderer.GetCellLayout(rowIndex, colIndex, Grid.Model[rowIndex, colIndex]);
		Rectangle parentBounds = Grid.RectangleToScreen(cellLayout.InnerRectangle);
		return PopupUtils.ComputeDefaultTopBottomAlignment(prevAlign, out newAlign, parentBounds, Grid.IsRightToLeft());
	}

	Point[] IPopupParent.GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		return null;
	}

	public virtual void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		if (initFocusEditPart || dropdownContainer.Controls.Count == 0)
		{
			dropdownContainer.FocusParent();
		}
		else
		{
			dropdownContainer.Focus();
		}
		NotifyShowedDropDown();
	}

	private void _DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		renderer.DropDownContainerShowedDropDown(sender, e);
	}

	private void _DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		renderer.DropDownContainerShowingDropDown(sender, e);
	}

	public virtual void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		Size size = dropdownContainer.Size;
		e.Cancel = !NotifyShowingDropDown(ref size);
		dropdownContainer.Size = size;
	}

	public bool NotifyShowingDropDown(ref Size size)
	{
		GridCurrentCellShowingDropDownEventArgs e = new GridCurrentCellShowingDropDownEventArgs(size);
		Grid.RaiseCurrentCellShowingDropDown(e);
		size = e.Size;
		return !e.Cancel;
	}

	public void NotifyShowedDropDown()
	{
		Grid.RaiseCurrentCellShowedDropDown(EventArgs.Empty);
	}

	Control IPopupItem.GetPopupParentControl()
	{
		return Grid;
	}

	public virtual bool IsRelatedControl(Control control, bool askPopupParent)
	{
		if (control == Grid || control == EditPart)
		{
			return true;
		}
		if (control is GridControlBase && ((GridControlBase)control).GetWindow() == Grid.GetWindow())
		{
			return true;
		}
		return false;
	}

	public virtual void OnShowDropDown()
	{
		if (IsDroppedDown)
		{
			return;
		}
		ignoreFocus = true;
		Grid.CurrentCell.BeginEdit();
		Grid.Update();
		if (DropDownContainer != null)
		{
			if (Grid.popupParent != null)
			{
				((GridDropDownContainer)Grid.popupParent).inner = popupParent;
				DropDownContainer.PopupParent = Grid.popupParent;
			}
			else
			{
				DropDownContainer.PopupParent = popupParent;
			}
			DropDownContainer.ShowPopup(Point.Empty);
		}
		ignoreFocus = false;
	}

	public virtual void OnCloseDropDown(PopupCloseType reason)
	{
		if (IsDroppedDown)
		{
			ignoreFocus = true;
			DropDownContainer.HidePopup(reason);
			ignoreFocus = false;
		}
	}

	public virtual void OnButtonClicked(int rowIndex, int colIndex, int button)
	{
		if (!CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			CurrentCell.MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.None);
		}
		if (!CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			return;
		}
		ignoreFocus = true;
		CurrentCell.ToggleDropDown();
		if (grid != null)
		{
			ignoreFocus = false;
			if (!CurrentCell.IsDroppedDown)
			{
				ignoreFocus = false;
			}
			ignoreDoubleClickTicks = Environment.TickCount + 120;
		}
	}

	public virtual void OnKeyDown(KeyEventArgs e)
	{
		bool flag = (Control.ModifierKeys & Keys.Alt) != 0;
		if (e.Handled)
		{
			return;
		}
		switch (e.KeyCode)
		{
		case Keys.Down:
			if (flag)
			{
				e.Handled = true;
				if (CurrentCell.Renderer.StyleInfo.Clickable)
				{
					CurrentCell.ToggleDropDown();
				}
			}
			break;
		case Keys.F4:
			if (Control.ModifierKeys == Keys.None)
			{
				e.Handled = true;
				if (CurrentCell.Renderer.StyleInfo.Clickable)
				{
					CurrentCell.ToggleDropDown();
				}
			}
			break;
		}
	}

	public void FixTopMostWindow()
	{
		if (IsDroppedDown)
		{
			dropdownContainer.PopupHost.ShowWindowTopMost();
		}
	}
}
