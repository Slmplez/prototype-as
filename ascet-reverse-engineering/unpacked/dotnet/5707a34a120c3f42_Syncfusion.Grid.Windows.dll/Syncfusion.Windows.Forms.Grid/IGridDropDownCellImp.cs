using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridDropDownCellImp : IDisposable, IQueryFocusInside, IPopupParent, IPopupItem
{
	bool InitFocusEditPart { get; set; }

	int IgnoreDoubleClickTicks { get; set; }

	bool IgnoreFocus { get; set; }

	GridControlBase Grid { get; }

	GridCurrentCell CurrentCell { get; }

	GridCellButton DropDownButton { get; set; }

	bool IsDroppedDown { get; }

	Control EditPart { get; }

	IGridDropDownContainer PopupControlContainer { get; }

	IGridDropDownContainer DropDownContainer { get; }

	IGridDropDownContainer CreateDropDownContainer();

	void EnsureDropDownContainer();

	void InitializeDropDownContainer();

	void OnInitialize(int rowIndex, int colIndex);

	void OnHasFocusControlChanged();

	void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e);

	void DropDownContainerShowedDropDown(object sender, EventArgs e);

	void DropDownContainerShowingDropDown(object sender, CancelEventArgs e);

	bool NotifyShowingDropDown(ref Size size);

	void NotifyShowedDropDown();

	void OnShowDropDown();

	void OnCloseDropDown(PopupCloseType reason);

	void OnButtonClicked(int rowIndex, int colIndex, int button);

	void OnKeyDown(KeyEventArgs e);

	void FixTopMostWindow();
}
