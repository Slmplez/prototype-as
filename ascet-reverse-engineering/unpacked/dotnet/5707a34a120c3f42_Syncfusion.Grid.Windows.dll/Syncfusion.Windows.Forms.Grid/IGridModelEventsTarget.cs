using System;
using System.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridModelEventsTarget
{
	void OnBanneredRangesChanged(GridBanneredRangesChangedEventArgs e);

	void OnBanneredRangesChanging(GridBanneredRangesChangingEventArgs e);

	void OnBaseStylesMapChanged(EventArgs e);

	void OnBeginUpdateRequest(EventArgs e);

	void OnCellModelsChanged(CollectionChangeEventArgs e);

	void OnCellsChanged(GridCellsChangedEventArgs e);

	void OnCellsChanging(GridCellsChangingEventArgs e);

	void OnClearingCells(GridClearingCellsEventArgs e);

	void OnClipboardCanCopy(GridCutPasteEventArgs e);

	void OnClipboardCanCut(GridCutPasteEventArgs e);

	void OnClipboardCanPaste(GridCutPasteEventArgs e);

	void OnClipboardCopy(GridCutPasteEventArgs e);

	void OnClipboardCut(GridCutPasteEventArgs e);

	void OnClipboardPaste(GridCutPasteEventArgs e);

	void OnClipboardPasted(GridCutPasteEventArgs e);

	void OnColsHidden(GridRowColHiddenEventArgs e);

	void OnColsHiding(GridRowColHidingEventArgs e);

	void OnColsInserted(GridRangeInsertedEventArgs e);

	void OnColsInserting(GridRangeInsertingEventArgs e);

	void OnColsMoved(GridRangeMovedEventArgs e);

	void OnColsMoving(GridRangeMovingEventArgs e);

	void OnColsRemoved(GridRangeRemovedEventArgs e);

	void OnColsRemoving(GridRangeRemovingEventArgs e);

	void OnColWidthsChanged(GridRowColSizeChangedEventArgs e);

	void OnColWidthsChanging(GridRowColSizeChangingEventArgs e);

	void OnConfirmingPendingChanges(CancelEventArgs e);

	void OnCoveredRangesChanged(GridCoveredRangesChangedEventArgs e);

	void OnCoveredRangesChanging(GridCoveredRangesChangingEventArgs e);

	void OnDataChanged(EventArgs e);

	void OnDataProviderChanged(EventArgs e);

	void OnDataProviderQueryCellInfo(GridQueryCellInfoEventArgs e);

	void OnDataProviderSaveCellInfo(GridSaveCellInfoEventArgs e);

	void OnDefaultColWidthChanged(GridDefaultSizeChangedEventArgs e);

	void OnDefaultColWidthChanging(GridDefaultSizeChangingEventArgs e);

	void OnDefaultRowHeightChanged(GridDefaultSizeChangedEventArgs e);

	void OnDefaultRowHeightChanging(GridDefaultSizeChangingEventArgs e);

	void OnEndUpdateRequest(GridEndUpdateRequestEventArgs e);

	void OnFloatingCellsChanged(GridFloatingCellsChangedEventArgs e);

	void OnFrozenColCountChanged(GridCountChangedEventArgs e);

	void OnFrozenColCountChanging(GridCountChangingEventArgs e);

	void OnFrozenRowCountChanged(GridCountChangedEventArgs e);

	void OnFrozenRowCountChanging(GridCountChangingEventArgs e);

	void OnHeaderColCountChanged(GridCountChangedEventArgs e);

	void OnHeaderColCountChanging(GridCountChangingEventArgs e);

	void OnHeaderRowCountChanged(GridCountChangedEventArgs e);

	void OnHeaderRowCountChanging(GridCountChangingEventArgs e);

	void OnInvalidateRangeRequest(GridInvalidateRangeRequestEventArgs e);

	void OnMergeCellsChanged(GridMergeCellsChangedEventArgs e);

	void OnPasteCellText(GridPasteCellTextEventArgs e);

	void OnPrepareChangeSelection(GridPrepareChangeSelectionEventArgs e);

	void OnPrepareClearSelection(EventArgs e);

	void OnPrepareGraphics(GraphicsEventArgs e);

	void OnQueryBanneredRange(GridQueryBanneredRangeEventArgs e);

	void OnQueryCanMergeCells(GridQueryCanMergeCellsEventArgs e);

	void OnQueryCellFormattedText(GridCellTextEventArgs e);

	void OnQueryCellInfo(GridQueryCellInfoEventArgs e);

	void OnQueryCellModel(GridQueryCellModelEventArgs e);

	void OnQueryCellText(GridCellTextEventArgs e);

	void OnQueryColCount(GridRowColCountEventArgs e);

	void OnQueryColWidth(GridRowColSizeEventArgs e);

	void OnQueryCoveredRange(GridQueryCoveredRangeEventArgs e);

	void OnQueryDragDropMoveClearCells(CancelEventArgs e);

	void OnQueryHideCol(GridRowColHideEventArgs e);

	void OnQueryHideRow(GridRowColHideEventArgs e);

	void OnQueryOleDataSourceData(GridQueryOleDataSourceDataEventArgs e);

	void OnQueryRowCount(GridRowColCountEventArgs e);

	void OnQueryRowHeight(GridRowColSizeEventArgs e);

	void OnQueryRowHeightTotal(GridRowColSizeTotalEventArgs e);

	void OnRowHeightsChanged(GridRowColSizeChangedEventArgs e);

	void OnRowHeightsChanging(GridRowColSizeChangingEventArgs e);

	void OnRowsHidden(GridRowColHiddenEventArgs e);

	void OnRowsHiding(GridRowColHidingEventArgs e);

	void OnRowsInserted(GridRangeInsertedEventArgs e);

	void OnRowsInserting(GridRangeInsertingEventArgs e);

	void OnRowsMoved(GridRangeMovedEventArgs e);

	void OnRowsMoving(GridRangeMovingEventArgs e);

	void OnRowsRemoved(GridRangeRemovedEventArgs e);

	void OnRowsRemoving(GridRangeRemovingEventArgs e);

	void OnSaveCellFormattedText(GridCellTextEventArgs e);

	void OnSaveCellInfo(GridSaveCellInfoEventArgs e);

	void OnSaveCellText(GridCellTextEventArgs e);

	void OnParseCommonFormats(GridCellTextEventArgs e);

	void OnSaveColCount(GridRowColCountEventArgs e);

	void OnSaveColWidth(GridRowColSizeEventArgs e);

	void OnSaveHideCol(GridRowColHideEventArgs e);

	void OnSaveHideRow(GridRowColHideEventArgs e);

	void OnSaveRowCount(GridRowColCountEventArgs e);

	void OnSaveRowHeight(GridRowColSizeEventArgs e);

	void OnSelectionChanged(GridSelectionChangedEventArgs e);

	void OnSelectionChanging(GridSelectionChangingEventArgs e);

	void OnSaveCellFormattedText(GridOleDropAtRowColEventArgs e);

	void OnOleDroppedData(EventArgs e);

	void OnCommandStackChanged(EventArgs e);
}
