using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridControlBaseEventsTarget : IDisposable
{
	void OnCellButtonClicked(GridCellButtonClickedEventArgs e);

	void OnCellCancelMode(GridCellMouseEventArgs e);

	void OnCellClick(GridCellClickEventArgs e);

	void OnCellCursor(GridCellCursorEventArgs e);

	void OnQueryScrollCellInView(GridQueryScrollCellInViewEventArgs e);

	void OnCellDoubleClick(GridCellClickEventArgs e);

	void OnCellDrawn(GridDrawCellEventArgs e);

	void OnCellHitTest(GridCellHitTestEventArgs e);

	void OnCellMouseDown(GridCellMouseEventArgs e);

	void OnCellMouseHover(GridCellMouseEventArgs e);

	void OnCellMouseHoverEnter(GridCellMouseEventArgs e);

	void OnCellMouseHoverLeave(GridCellMouseEventArgs e);

	void OnCellMouseMove(GridCellMouseEventArgs e);

	void OnCellMouseUp(GridCellMouseEventArgs e);

	void OnCheckBoxClick(GridCellClickEventArgs e);

	void OnCurrentCellAcceptedChanges(CancelEventArgs e);

	void OnCurrentCellActivated(EventArgs e);

	void OnCurrentCellActivateFailed(GridCurrentCellActivateFailedEventArgs e);

	void OnCurrentCellActivating(GridCurrentCellActivatingEventArgs e);

	void OnCurrentCellChanged(EventArgs e);

	void OnCurrentCellChanging(CancelEventArgs e);

	void OnCurrentCellCloseDropDown(PopupClosedEventArgs e);

	void OnCurrentCellConfirmChangesFailed(EventArgs e);

	void OnCurrentCellControlDoubleClick(ControlEventArgs e);

	void OnCurrentCellControlGotFocus(ControlEventArgs e);

	void OnCurrentCellControlKeyMessage(GridCurrentCellControlKeyMessageEventArgs e);

	void OnCurrentCellControlLostFocus(ControlEventArgs e);

	void OnCurrentCellDeactivated(GridCurrentCellDeactivatedEventArgs e);

	void OnCurrentCellDeactivateFailed(EventArgs e);

	void OnCurrentCellDeactivating(CancelEventArgs e);

	void OnCurrentCellDeleting(CancelEventArgs e);

	void OnCurrentCellEditingComplete(EventArgs e);

	void OnCurrentCellInitializeControlText(GridCurrentCellInitializeControlTextEventArgs e);

	void OnCurrentCellErrorMessage(GridCurrentCellErrorMessageEventArgs e);

	void OnCurrentCellKeyDown(KeyEventArgs e);

	void OnCurrentCellKeyPress(KeyPressEventArgs e);

	void OnCurrentCellKeyUp(KeyEventArgs e);

	void OnCurrentCellMoved(GridCurrentCellMovedEventArgs e);

	void OnCurrentCellMoveFailed(GridCurrentCellMoveFailedEventArgs e);

	void OnCurrentCellMoving(GridCurrentCellMovingEventArgs e);

	void OnCurrentCellRejectedChanges(EventArgs e);

	void OnCurrentCellShowedDropDown(EventArgs e);

	void OnCurrentCellShowingDropDown(GridCurrentCellShowingDropDownEventArgs e);

	void OnCurrentCellStartEditing(CancelEventArgs e);

	void OnCurrentCellValidated(EventArgs e);

	void OnCurrentCellValidateString(GridCurrentCellValidateStringEventArgs e);

	void OnCurrentCellValidating(CancelEventArgs e);

	void OnPushButtonClick(GridCellPushButtonClickEventArgs e);

	void OnDrawCell(GridDrawCellEventArgs e);

	void OnDrawCellDisplayText(GridDrawCellDisplayTextEventArgs e);

	void OnDrawCellBackground(GridDrawCellBackgroundEventArgs e);

	void OnDrawCellButton(GridDrawCellButtonEventArgs e);

	void OnDrawCellButtonBackground(GridDrawCellButtonBackgroundEventArgs e);

	void OnDrawCellFrameAppearance(GridDrawCellBackgroundEventArgs e);

	void OnDrawCurrentCellBorder(GridDrawCurrentCellBorderEventArgs e);

	void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e);

	void OnQueryNextCurrentCellPosition(GridQueryNextCurrentCellPositionEventArgs e);

	void OnMoveCurrentCellDirection(GridMoveCurrentCellDirectionEventArgs e);

	void OnResizingColumns(GridResizingColumnsEventArgs e);

	void OnResizingRows(GridResizingRowsEventArgs e);

	void OnWrapCellNextControlInForm(GridWrapCellNextControlInFormEventArgs e);

	void OnHScrollPixelPosChanged(GridScrollPositionChangedEventArgs e);

	void OnHScrollPixelPosChanging(GridScrollPositionChangingEventArgs e);

	void OnLeftColChanged(GridRowColIndexChangedEventArgs e);

	void OnLeftColChanging(GridRowColIndexChangingEventArgs e);

	void OnMouseActivating(CancelEventArgs e);

	void OnQueryCanOleDragRange(GridQueryCanOleDragRangeEventArgs e);

	void OnScrollInfoChanged(EventArgs e);

	void OnSelectionDragged(GridSelectionDragEventArgs e);

	void OnSelectionDragging(GridSelectionDragEventArgs e);

	void OnSelectionFrameChanged(GraphicsEventArgs e);

	void OnSelectionFrameChanging(GraphicsEventArgs e);

	void OnTopRowChanged(GridRowColIndexChangedEventArgs e);

	void OnTopRowChanging(GridRowColIndexChangingEventArgs e);

	void OnVScrollPixelPosChanged(GridScrollPositionChangedEventArgs e);

	void OnVScrollPixelPosChanging(GridScrollPositionChangingEventArgs e);

	void OnDeactivated(EventArgs e);

	void OnEnter(EventArgs e);

	void OnInvalidated(InvalidateEventArgs e);

	void OnKeyDown(KeyEventArgs e);

	void OnKeyPress(KeyPressEventArgs e);

	void OnKeyUp(KeyEventArgs e);

	void OnLayout(LayoutEventArgs le);

	void OnMouseDown(MouseEventArgs e);

	void OnMouseMove(MouseEventArgs e);

	void OnMouseUp(MouseEventArgs e);

	void OnMouseWheel(MouseEventArgs e);

	void OnPaint(PaintEventArgs pe);

	void OnScrollControlMouseDown(CancelMouseEventArgs e);

	void OnScrollTipFeedback(ScrollTipFeedbackEventArgs e);

	void OnSizeChanged(EventArgs e);

	void OnSplitterPaneClosing(EventArgs e);

	void OnValidating(CancelEventArgs e);

	void OnVisibleChanged(EventArgs e);

	void OnWindowScrolled(ScrollWindowEventArgs e);

	void OnSupportsTransparentBackColorChanged(EventArgs e);

	void OnPrintingModeChanged(EventArgs e);

	void OnModelChanged(EventArgs e);

	void OnGridControlMouseDown(CancelMouseEventArgs e);

	void OnGridControlMouseMove(CancelMouseEventArgs e);

	void OnGridControlMouseUp(CancelMouseEventArgs e);

	void OnGridValidating(CancelEventArgs e);

	void OnGridBoundsChanged(EventArgs e);

	void OnThemeChanged(EventArgs e);
}
