using System;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelCutPaste : GridModelBound
{
	[NonSerialized]
	private DataObject m_dataObject;

	internal int m_nClipboardFlags = 56;

	[NonSerialized]
	internal GridRangeInfoList m_CopyRangeList;

	[NonSerialized]
	internal bool m_bCut;

	[NonSerialized]
	internal bool m_bDirectCopyPaste;

	[NonSerialized]
	internal bool m_bDirectCutPaste;

	public int ClipboardFlags
	{
		get
		{
			return m_nClipboardFlags;
		}
		set
		{
			m_nClipboardFlags = value;
		}
	}

	public GridModelCutPaste(GridModel model)
		: base(model)
	{
	}

	public bool CanCopy()
	{
		GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, base.Model.SelectedRanges);
		base.Model.RaiseClipboardCanCopy(e);
		m_nClipboardFlags = e.ClipboardFlags;
		if (e.Handled)
		{
			return e.Result;
		}
		if (base.Model.SelectedRanges.Count > 0)
		{
			return true;
		}
		if (!e.IgnoreCurrentCell)
		{
			GridCurrentCellInfo currentCellInfo = base.Model.CurrentCellInfo;
			if (currentCellInfo != null)
			{
				return currentCellInfo.CellView.CanCopy();
			}
		}
		return false;
	}

	public bool Copy()
	{
		bool selectedRanges = base.Model.Selections.GetSelectedRanges(out m_CopyRangeList, considerCurrentCell: false);
		GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, m_CopyRangeList);
		base.Model.RaiseClipboardCopy(e);
		m_CopyRangeList = e.RangeList;
		m_dataObject = e.DataObject;
		m_nClipboardFlags = e.ClipboardFlags;
		if (e.Handled)
		{
			return e.Result;
		}
		GridCellRendererBase gridCellRendererBase = null;
		if (!e.IgnoreCurrentCell)
		{
			gridCellRendererBase = base.Model.CurrentCellRenderer;
		}
		bool flag = gridCellRendererBase?.HasFocusControl ?? false;
		bool result = false;
		if ((!selectedRanges || flag) && gridCellRendererBase != null && gridCellRendererBase.Copy())
		{
			result = true;
		}
		else if (selectedRanges || (!e.IgnoreCurrentCell && base.Model.Selections.GetSelectedRanges(out m_CopyRangeList, considerCurrentCell: true)))
		{
			using (new OperationFeedback(base.Model))
			{
				int nFirstRow = 0;
				int nFirstCol = 0;
				int rowCount = base.Model.RowCount;
				int colCount = base.Model.ColCount;
				if (GridUtil.IsNotSet(m_nClipboardFlags, 2))
				{
					nFirstCol = base.Model.Cols.HeaderCount + 1;
				}
				if (GridUtil.IsNotSet(m_nClipboardFlags, 1))
				{
					nFirstRow = base.Model.Rows.HeaderCount + 1;
				}
				m_CopyRangeList = m_CopyRangeList.ExpandRanges(nFirstRow, nFirstCol, rowCount, colCount);
				result = CopyRange(m_CopyRangeList);
			}
		}
		if (m_bCut)
		{
			m_bCut = false;
			base.Model.Refresh();
		}
		return result;
	}

	public bool CopyRange(GridRangeInfo range)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		return CopyRange(gridRangeInfoList);
	}

	public bool CopyRange(GridRangeInfoList rangeList)
	{
		using OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		bool flag = false;
		if (GridUtil.IsSet(m_nClipboardFlags, 8))
		{
			operationFeedback.SeriesCount = 2;
		}
		if (GridUtil.IsSet(m_nClipboardFlags, 8))
		{
			flag |= CopyTextToClipboard(rangeList);
		}
		if (operationFeedback.ShouldCancel)
		{
			return false;
		}
		if (GridUtil.IsSet(m_nClipboardFlags, 16))
		{
			flag |= CopyCellsToClipboard(rangeList, bLoadBaseStyles: false);
		}
		if (m_bDirectCopyPaste || m_bDirectCutPaste)
		{
			try
			{
				if (m_dataObject == null)
				{
					m_dataObject = new DataObject();
				}
				m_dataObject.SetData(rangeList.Clone());
				Clipboard.SetDataObject(m_dataObject);
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
		m_dataObject = null;
		return flag;
	}

	public bool CopyTextToClipboard(GridRangeInfoList rangeList)
	{
		try
		{
			if (base.Model.TextDataExchange.CopyTextToBuffer(out var buffer, rangeList, out var _, out var _))
			{
				if (m_dataObject == null)
				{
					m_dataObject = new DataObject();
				}
				m_dataObject.SetData(DataFormats.UnicodeText, buffer);
				Clipboard.SetDataObject(m_dataObject);
				return true;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return false;
		}
		return false;
	}

	public bool CopyCellsToClipboard(GridRangeInfoList rangeList, bool bLoadBaseStyles)
	{
		try
		{
			if (base.Model.DataExchange.CopyCellsToDataObject(out var data, rangeList, bLoadBaseStyles, m_nClipboardFlags, out var _, out var _))
			{
				if (m_dataObject == null)
				{
					m_dataObject = new DataObject();
				}
				m_dataObject.SetData(data);
				Clipboard.SetDataObject(m_dataObject);
				return true;
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
		return false;
	}

	public bool CanCut()
	{
		GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, base.Model.SelectedRanges);
		base.Model.RaiseClipboardCanCut(e);
		m_nClipboardFlags = e.ClipboardFlags;
		if (e.Handled)
		{
			return e.Result;
		}
		if (base.Model.SelectedRanges.Count > 0)
		{
			return true;
		}
		if (e.IgnoreCurrentCell)
		{
			return false;
		}
		return base.Model.CurrentCellRenderer?.CanCut() ?? false;
	}

	public bool Cut()
	{
		OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		try
		{
			bool selectedRanges = base.Model.Selections.GetSelectedRanges(out m_CopyRangeList, considerCurrentCell: false);
			GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, m_CopyRangeList);
			base.Model.RaiseClipboardCut(e);
			m_CopyRangeList = e.RangeList;
			m_dataObject = e.DataObject;
			m_nClipboardFlags = e.ClipboardFlags;
			if (e.Handled)
			{
				return e.Result;
			}
			GridCellRendererBase gridCellRendererBase = null;
			if (!e.IgnoreCurrentCell)
			{
				gridCellRendererBase = base.Model.CurrentCellRenderer;
			}
			bool flag = gridCellRendererBase?.HasFocusControl ?? false;
			bool result = false;
			if ((!selectedRanges || flag) && gridCellRendererBase != null && gridCellRendererBase.Cut())
			{
				result = true;
			}
			else if (m_bDirectCutPaste)
			{
				Copy();
				m_bCut = true;
				base.Model.Refresh();
				result = true;
			}
			else if (selectedRanges || (!e.IgnoreCurrentCell && base.Model.Selections.GetSelectedRanges(out m_CopyRangeList, considerCurrentCell: true)))
			{
				base.Model.Selections.GetSelectedRanges(out m_CopyRangeList, considerCurrentCell: true);
				result = CutRange(m_CopyRangeList, GridUtil.IsSet(m_nClipboardFlags, 16));
			}
			return result;
		}
		finally
		{
			operationFeedback.Close();
		}
	}

	public bool CutRange(GridRangeInfo range, bool clearStyle)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		return CutRange(gridRangeInfoList, clearStyle);
	}

	public bool CutRange(GridRangeInfoList rangeList, bool clearStyle)
	{
		base.Model.CommandStack.BeginTrans(SR.GetString("GRID_IDM_CUTDATA"));
		if (Copy() && base.Model.ClearCells(rangeList, clearStyle))
		{
			base.Model.CommandStack.CommitTrans();
			return true;
		}
		base.Model.CommandStack.Rollback();
		return false;
	}

	public bool CanPaste()
	{
		GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, base.Model.SelectedRanges);
		base.Model.RaiseClipboardCanPaste(e);
		m_nClipboardFlags = e.ClipboardFlags;
		if (e.Handled)
		{
			return e.Result;
		}
		if (base.Model.IsReadOnly && !base.Model.IgnoreReadOnly)
		{
			return false;
		}
		return true;
	}

	private string GetClipboardText()
	{
		string result = null;
		IDataObject dataObject = null;
		if (GridUtil.IsSet(m_nClipboardFlags, 24))
		{
			dataObject = Clipboard.GetDataObject();
		}
		if (GridUtil.IsSet(m_nClipboardFlags, 8) && dataObject != null)
		{
			if (dataObject.GetDataPresent(DataFormats.UnicodeText))
			{
				result = dataObject.GetData(DataFormats.UnicodeText) as string;
			}
			else if (dataObject.GetDataPresent(DataFormats.Text))
			{
				result = dataObject.GetData(DataFormats.Text) as string;
			}
		}
		return result;
	}

	public bool Paste()
	{
		if (!CanPaste())
		{
			return false;
		}
		GridCutPasteEventArgs e = new GridCutPasteEventArgs(ignoreCurrentCell: false, result: true, m_nClipboardFlags, m_CopyRangeList);
		base.Model.RaiseClipboardPaste(e);
		m_CopyRangeList = e.RangeList;
		m_dataObject = e.DataObject;
		m_nClipboardFlags = e.ClipboardFlags;
		if (e.Handled)
		{
			if (e.Result)
			{
				base.Model.RaiseClipboardPasted(e);
			}
			return e.Result;
		}
		if (!base.Model.Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true))
		{
			return false;
		}
		if (!e.IgnoreCurrentCell)
		{
			GridCellRendererBase currentCellRenderer = base.Model.CurrentCellRenderer;
			if (currentCellRenderer != null && currentCellRenderer.CanPaste())
			{
				bool flag = true;
				bool flag2 = false;
				string clipboardText = GetClipboardText();
				if (clipboardText != null)
				{
					GridPasteCellTextEventArgs e2 = new GridPasteCellTextEventArgs(model.currentRow, model.currentCol, currentCellRenderer.StyleInfo, clipboardText, abort: false);
					base.Model.RaisePasteCellText(e2);
					if (e2.Abort || e2.Cancel)
					{
						flag = false;
					}
				}
				if (!flag)
				{
					return false;
				}
				if (currentCellRenderer.Paste())
				{
					base.Model.RaiseClipboardPasted(e);
					return true;
				}
			}
		}
		GridRangeInfo outerRange = ranges.GetOuterRange(ranges.ActiveRange);
		int nFirstRow = 0;
		int nFirstCol = 0;
		int rowCount = base.Model.RowCount;
		int colCount = base.Model.ColCount;
		if (GridUtil.IsNotSet(m_nClipboardFlags, 2))
		{
			nFirstRow = base.Model.Rows.HeaderCount + 1;
		}
		if (GridUtil.IsNotSet(m_nClipboardFlags, 1))
		{
			nFirstCol = base.Model.Cols.HeaderCount + 1;
		}
		GridRangeInfo rg = outerRange.ExpandRange(nFirstRow, nFirstCol, rowCount, colCount);
		bool flag3 = false;
		flag3 = OnPasteFromClipboard(rg);
		if (flag3)
		{
			base.Model.RaiseClipboardPasted(e);
		}
		return flag3;
	}

	internal bool OnPasteDirect(GridRangeInfo range)
	{
		return true;
	}

	internal bool OnPasteFromClipboard(GridRangeInfo rg)
	{
		int val = 0;
		int val2 = 0;
		if (GridUtil.IsNotSet(m_nClipboardFlags, 2))
		{
			val = base.Model.Rows.HeaderCount + 1;
		}
		if (GridUtil.IsNotSet(m_nClipboardFlags, 1))
		{
			val2 = base.Model.Cols.HeaderCount + 1;
		}
		GridRangeInfo range = GridRangeInfo.Cells(Math.Max(val, rg.Top), Math.Max(val2, rg.Left), rg.Bottom, rg.Right);
		IDataObject dataObject = null;
		if (GridUtil.IsSet(m_nClipboardFlags, 24))
		{
			dataObject = Clipboard.GetDataObject();
		}
		if (GridUtil.IsSet(m_nClipboardFlags, 16) && dataObject.GetDataPresent(typeof(GridData)) && dataObject.GetData(typeof(GridData)) is GridData data)
		{
			return base.Model.DataExchange.PasteCellsFromDataObject(data, range, GridUtil.IsNotSet(m_nClipboardFlags, 256), m_nClipboardFlags);
		}
		string clipboardText = GetClipboardText();
		if (clipboardText != null)
		{
			return base.Model.TextDataExchange.PasteTextFromBuffer(clipboardText, range, m_nClipboardFlags);
		}
		return false;
	}

	internal bool OnPasteDiffRange()
	{
		if (model.ActiveGridView != null)
		{
			return MessageBox.Show(FindFormHelper.FindForm(model.ActiveGridView), SR.GetString("GRID_IDM_PASTEDIFFRANGE"), "Paste Cells", MessageBoxButtons.OKCancel) == DialogResult.OK;
		}
		return true;
	}
}
