using System;
using System.Collections;
using System.Text;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelTextDataExchange : GridModelBound
{
	private string m_sImportTabDelim;

	private string m_sExportTabDelim;

	public string ImportTabDelim
	{
		get
		{
			return m_sImportTabDelim;
		}
		set
		{
			m_sImportTabDelim = value;
		}
	}

	public string ExportTabDelim
	{
		get
		{
			return m_sExportTabDelim;
		}
		set
		{
			m_sExportTabDelim = value;
		}
	}

	public GridModelTextDataExchange(GridModel model)
		: base(model)
	{
	}

	public bool CopyTextToBuffer(out string buffer, GridRangeInfoList rangeList, out int nRowsDone, out int nColsDone)
	{
		GridRangeInfoList rowRanges = rangeList.GetRowRanges(GridRangeInfoType.Cells | GridRangeInfoType.Rows);
		GridRangeInfoList colRanges = rangeList.GetColRanges(GridRangeInfoType.Cells | GridRangeInfoType.Cols);
		int num = 0;
		foreach (GridRangeInfo item in rowRanges)
		{
			num += item.Height;
		}
		int num2 = 0;
		foreach (GridRangeInfo item2 in colRanges)
		{
			num2 += item2.Width;
		}
		int num3 = num * num2;
		nRowsDone = 0;
		nColsDone = 0;
		using OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		operationFeedback.Description = SR.GetString("GRID_IDM_COPYTEXT");
		operationFeedback.AllowCancel = true;
		bool flag = false;
		bool flag2 = false;
		string value = "\t";
		if (m_sExportTabDelim != null && m_sExportTabDelim.Length > 0)
		{
			value = m_sExportTabDelim;
		}
		StringBuilder stringBuilder = new StringBuilder();
		try
		{
			int num4 = 0;
			while (!flag && num4 < rowRanges.Count)
			{
				for (int i = rowRanges[num4].Top; i <= rowRanges[num4].Bottom; i++)
				{
					if (nRowsDone > 0)
					{
						stringBuilder.Append(Environment.NewLine);
					}
					bool flag3 = true;
					nColsDone = 0;
					int num5 = 0;
					while (!flag && num5 < colRanges.Count)
					{
						for (int j = colRanges[num5].Left; j <= colRanges[num5].Right; j++)
						{
							int num6 = nRowsDone * num2 + nColsDone;
							if (!flag3)
							{
								stringBuilder.Append(value);
							}
							string copyTextRowCol = GetCopyTextRowCol(i, j);
							copyTextRowCol = new StringBuilder(copyTextRowCol).Replace(Environment.NewLine, " ").Replace("\r", " ").Replace("\n", " ")
								.ToString()
								.Trim();
							stringBuilder.Append(copyTextRowCol);
							flag2 |= copyTextRowCol.Length > 0;
							flag3 = false;
							if (num3 > 0)
							{
								operationFeedback.PercentComplete = num6 * 100 / num3;
							}
							if (operationFeedback.ShouldCancel)
							{
								throw new GridUserCanceledException();
							}
							nColsDone++;
						}
						num5++;
					}
					nRowsDone++;
				}
				num4++;
			}
		}
		catch (GridUserCanceledException ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			flag = true;
		}
		if (nRowsDone > 1 || nColsDone > 1)
		{
			stringBuilder.Append(Environment.NewLine);
		}
		buffer = stringBuilder.ToString();
		return !flag && flag2;
	}

	internal string GetCopyTextRowCol(int rowIndex, int colIndex)
	{
		GridStyleInfo gridStyleInfo = base.Model[rowIndex, colIndex];
		return gridStyleInfo.GetFormattedText(gridStyleInfo.CellValue, 1);
	}

	public bool PasteTextFromBuffer(string psz, GridRangeInfo range, int dragDropFlags)
	{
		bool flag = false;
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "PasteTextFromBuffer");
		OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		try
		{
			operationFeedback.AllowRollback = true;
			operationFeedback.Description = SR.GetString("GRID_IDM_PASTINGDATA");
			operationFeedback.AllowNestedProgress = false;
			string text = "\t";
			if (m_sImportTabDelim != null && m_sImportTabDelim.Length > 0)
			{
				text = m_sImportTabDelim;
			}
			base.Model.ConfirmChanges();
			base.Model.CommandStack.BeginTrans(SR.GetString("GRID_IDM_PASTEDATA"));
			int num = range.Top;
			int num2 = range.Left;
			int val = num2;
			int length = psz.Length;
			try
			{
				int i = 0;
				int num3 = 0;
				for (; !flag && i < length; i++)
				{
					bool flag2 = "\r\n".IndexOf(psz[i]) != -1 || text[0] == psz[i];
					if (i != length - 1 && !flag2)
					{
						continue;
					}
					if (num > base.Model.RowCount)
					{
						if (!GridUtil.IsNotSet(dragDropFlags, 512))
						{
							break;
						}
						base.Model.RowCount = num;
					}
					if (num2 > base.Model.ColCount)
					{
						if (GridUtil.IsNotSet(dragDropFlags, 1024))
						{
							base.Model.ColCount = num2;
						}
						else
						{
							if ("\r\n".IndexOf(psz[i]) == -1)
							{
								continue;
							}
							if (psz[i] == '\r' && psz[i + 1] == '\n')
							{
								i++;
								num2 = range.Left;
								num3 = i + 1;
								num++;
								continue;
							}
						}
					}
					if (num <= base.Model.RowCount && num2 <= base.Model.ColCount)
					{
						string text2 = ((!flag2) ? psz.Substring(num3) : ((i == num3) ? string.Empty : psz.Substring(num3, i - num3)));
						flag = !PasteTextRowCol(num, num2, text2);
					}
					if (flag || i == length - 1)
					{
						break;
					}
					if ("\r\n".IndexOf(psz[i]) != -1)
					{
						num++;
						num2 = range.Left;
						if (psz[i] == '\r' && psz[i + 1] == '\n')
						{
							i++;
						}
						if (i == length - 1)
						{
							break;
						}
					}
					else
					{
						num2++;
					}
					num3 = i + 1;
					val = Math.Max(num2, val);
					if (length > 0)
					{
						operationFeedback.PercentComplete = i * 100 / length;
					}
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
			catch (GridUserCanceledException ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				flag = true;
			}
			if (flag && operationFeedback.RollbackConfirmed)
			{
				base.Model.CommandStack.Rollback();
			}
			else
			{
				base.Model.CommandStack.CommitTrans();
			}
			base.Model.Refresh();
			return !flag;
		}
		finally
		{
			operationFeedback.Close();
			base.Model.EndUpdate();
		}
	}

	public bool PasteTextRowCol(int rowIndex, int colIndex, string text)
	{
		GridStyleInfo gridStyleInfo = base.Model[rowIndex, colIndex];
		GridPasteCellTextEventArgs e = new GridPasteCellTextEventArgs(rowIndex, colIndex, gridStyleInfo, text, abort: false);
		base.Model.RaisePasteCellText(e);
		if (e.Abort)
		{
			return false;
		}
		if (e.Cancel)
		{
			return true;
		}
		if (!base.Model.IgnoreReadOnly && (base.Model.ReadOnly || gridStyleInfo.ReadOnly))
		{
			return false;
		}
		return gridStyleInfo.ApplyFormattedText(e.Text, 1);
	}

	public ArrayList CreateTableFromCVSBuffer(string psz, out int nRows, out int nCols, OperationFeedback op)
	{
		bool flag = false;
		ArrayList arrayList = new ArrayList();
		string text = "\t";
		if (m_sImportTabDelim != null && m_sImportTabDelim.Length > 0)
		{
			text = m_sImportTabDelim;
		}
		int num = 0;
		int num2 = 0;
		int num3 = num2;
		int length = psz.Length;
		ArrayList arrayList2 = new ArrayList();
		int num4 = 0;
		int num5 = 0;
		while (!flag && num4 < length)
		{
			bool flag2 = "\r\n".IndexOf(psz[num4]) != -1 || text[0] == psz[num4];
			if (num4 == length - 1 || flag2)
			{
				string value = ((!flag2) ? psz.Substring(num5) : ((num4 == num5) ? string.Empty : psz.Substring(num5, num4 - num5)));
				arrayList2.Add(value);
				if (flag || num4 == length - 1)
				{
					break;
				}
				if ("\r\n".IndexOf(psz[num4]) != -1)
				{
					arrayList.Add(arrayList2);
					arrayList2 = new ArrayList(num3);
					num++;
					num2 = 0;
					if (psz[num4] == '\r' && psz[num4 + 1] == '\n')
					{
						num4++;
					}
					if (num4 == length - 1)
					{
						break;
					}
				}
				else
				{
					num2++;
				}
				num5 = num4 + 1;
				num3 = Math.Max(num2, num3);
				if (op != null)
				{
					if (length > 0)
					{
						op.PercentComplete = num4 * 100 / length;
					}
					if (op.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
			num4++;
		}
		if (num2 > 0 || arrayList2.Count > 0)
		{
			arrayList.Add(arrayList2);
		}
		nRows = arrayList.Count;
		nCols = ((nRows > 0) ? (num3 + 1) : 0);
		return arrayList;
	}

	public bool CalcBufferDimension(string psz, out int nRows, out int nCols)
	{
		int num = 0;
		int val = 0;
		int num2 = 0;
		bool flag = false;
		string text = "\t";
		if (m_sImportTabDelim != null && m_sImportTabDelim.Length > 0)
		{
			text = m_sImportTabDelim;
		}
		int length = psz.Length;
		int num3 = 0;
		int num4 = 0;
		while (!flag && num3 < length)
		{
			if (num3 == length - 1 || "\r\n".IndexOf(psz[num3]) != -1 || text[0] == psz[num3])
			{
				if (num3 == length - 1)
				{
					if (num3 > num4)
					{
						num2++;
					}
					break;
				}
				if ("\r\n".IndexOf(psz[num3]) != -1)
				{
					num++;
					num2 = 0;
					if (psz[num3] == '\r' && psz[num3 + 1] == '\n')
					{
						num3++;
					}
					if (num3 == length - 1)
					{
						break;
					}
				}
				else
				{
					num2++;
				}
				num4 = num3 + 1;
				val = Math.Max(val, num2 + 1);
			}
			num3++;
		}
		if (num2 > 0)
		{
			num++;
		}
		nRows = num;
		nCols = Math.Max(val, 1);
		return true;
	}
}
