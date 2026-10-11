using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Diagnostics;
using System.Globalization;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Text;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridRangeInfoConverter))]
[ImmutableObject(true)]
[DesignerSerializer(typeof(GridRangeInfoCodeDomSerializer), typeof(CodeDomSerializer))]
public class GridRangeInfo : IFormattable, ICloneable, ISerializable
{
	[DocumentationExclude]
	internal class RowComparer : IComparer
	{
		public int Compare(object a, object b)
		{
			if (a == null || b == null)
			{
				return Comparer.Default.Compare(a, b);
			}
			GridRangeInfo gridRangeInfo = (GridRangeInfo)a;
			GridRangeInfo gridRangeInfo2 = (GridRangeInfo)b;
			if (gridRangeInfo == gridRangeInfo2)
			{
				return 0;
			}
			if (gridRangeInfo.RangeType == GridRangeInfoType.Table)
			{
				return -1;
			}
			if (gridRangeInfo2.RangeType == GridRangeInfoType.Table)
			{
				return 1;
			}
			if (gridRangeInfo.RangeType == GridRangeInfoType.Cols)
			{
				return -1;
			}
			if (gridRangeInfo2.RangeType == GridRangeInfoType.Cols)
			{
				return 1;
			}
			if (gridRangeInfo.Top != gridRangeInfo2.Top)
			{
				return gridRangeInfo.Top - gridRangeInfo2.Top;
			}
			if (gridRangeInfo.Bottom != gridRangeInfo2.Bottom)
			{
				return gridRangeInfo.Bottom - gridRangeInfo2.Bottom;
			}
			if (gridRangeInfo.Left != gridRangeInfo2.Left)
			{
				return gridRangeInfo.Left - gridRangeInfo2.Left;
			}
			return gridRangeInfo.Right - gridRangeInfo2.Right;
		}
	}

	[DocumentationExclude]
	internal class ColComparer : IComparer
	{
		public int Compare(object a, object b)
		{
			if (a == null || b == null)
			{
				return Comparer.Default.Compare(a, b);
			}
			GridRangeInfo gridRangeInfo = (GridRangeInfo)a;
			GridRangeInfo gridRangeInfo2 = (GridRangeInfo)b;
			if (gridRangeInfo == gridRangeInfo2)
			{
				return 0;
			}
			if (gridRangeInfo.RangeType == GridRangeInfoType.Table)
			{
				return -1;
			}
			if (gridRangeInfo2.RangeType == GridRangeInfoType.Table)
			{
				return 1;
			}
			if (gridRangeInfo.RangeType == GridRangeInfoType.Rows)
			{
				return -1;
			}
			if (gridRangeInfo2.RangeType == GridRangeInfoType.Rows)
			{
				return 1;
			}
			if (gridRangeInfo.Left != gridRangeInfo2.Left)
			{
				return gridRangeInfo.Left - gridRangeInfo2.Left;
			}
			if (gridRangeInfo.Right != gridRangeInfo2.Right)
			{
				return gridRangeInfo.Right - gridRangeInfo2.Right;
			}
			if (gridRangeInfo.Top != gridRangeInfo2.Top)
			{
				return gridRangeInfo.Top - gridRangeInfo2.Top;
			}
			return gridRangeInfo.Bottom - gridRangeInfo2.Bottom;
		}
	}

	internal int _top;

	internal int _left;

	internal int _bottom;

	internal int _right;

	internal GridRangeInfoType _rangeType;

	public static readonly GridRangeInfo Empty = new GridRangeInfo();

	public GridRangeInfoType RangeType
	{
		[DebuggerStepThrough]
		get
		{
			return _rangeType;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsTable
	{
		[DebuggerStepThrough]
		get
		{
			return _rangeType == GridRangeInfoType.Table;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsRows
	{
		[DebuggerStepThrough]
		get
		{
			return _rangeType == GridRangeInfoType.Rows;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsCols
	{
		[DebuggerStepThrough]
		get
		{
			return _rangeType == GridRangeInfoType.Cols;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsCells
	{
		[DebuggerStepThrough]
		get
		{
			return _rangeType == GridRangeInfoType.Cells;
		}
	}

	public int Top
	{
		[DebuggerStepThrough]
		get
		{
			if ((_rangeType & GridRangeInfoType.Cols) != GridRangeInfoType.Empty || _rangeType == GridRangeInfoType.Empty)
			{
				return 0;
			}
			return _top;
		}
	}

	public int Left
	{
		[DebuggerStepThrough]
		get
		{
			if ((_rangeType & GridRangeInfoType.Rows) != GridRangeInfoType.Empty || _rangeType == GridRangeInfoType.Empty)
			{
				return 0;
			}
			return _left;
		}
	}

	public int Bottom
	{
		[DebuggerStepThrough]
		get
		{
			if ((_rangeType & GridRangeInfoType.Cols) != GridRangeInfoType.Empty || _rangeType == GridRangeInfoType.Empty)
			{
				return 0;
			}
			return _bottom;
		}
	}

	public int Right
	{
		[DebuggerStepThrough]
		get
		{
			if ((_rangeType & GridRangeInfoType.Rows) != GridRangeInfoType.Empty || _rangeType == GridRangeInfoType.Empty)
			{
				return 0;
			}
			return _right;
		}
	}

	private bool Valid => _rangeType != GridRangeInfoType.Empty;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsEmpty
	{
		[DebuggerStepThrough]
		get
		{
			if ((object)this != null)
			{
				return _rangeType == GridRangeInfoType.Empty;
			}
			return true;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Width
	{
		[DebuggerStepThrough]
		get
		{
			return _right - _left + 1;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int Height
	{
		[DebuggerStepThrough]
		get
		{
			return _bottom - _top + 1;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Info => ToString();

	[DebuggerStepThrough]
	public GridRangeInfo()
	{
		_top = (_left = (_bottom = (_right = 0)));
		_rangeType = GridRangeInfoType.Empty;
	}

	protected GridRangeInfo(SerializationInfo info, StreamingContext context)
	{
		_top = info.GetInt32("Top");
		_left = info.GetInt32("Left");
		_bottom = info.GetInt32("Bottom");
		_right = info.GetInt32("Right");
		_rangeType = (GridRangeInfoType)info.GetValue("RangeType", typeof(GridRangeInfoType));
	}

	[DebuggerStepThrough]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Top", _top);
		info.AddValue("Left", _left);
		info.AddValue("Bottom", _bottom);
		info.AddValue("Right", _right);
		info.AddValue("RangeType", _rangeType);
	}

	[DebuggerStepThrough]
	public virtual object Clone()
	{
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		CopyAllMembers(gridRangeInfo);
		return gridRangeInfo;
	}

	[DocumentationExclude]
	protected void CopyAllMembers(GridRangeInfo rg)
	{
		rg._bottom = _bottom;
		rg._left = _left;
		rg._rangeType = _rangeType;
		rg._right = _right;
		rg._top = _top;
	}

	internal GridRangeInfo(int row, int col)
		: this(row, col, row, col)
	{
	}

	internal GridRangeInfo(int top, int left, int bottom, int right)
	{
		_top = Math.Min(top, bottom);
		_left = Math.Min(left, right);
		_bottom = Math.Max(top, bottom);
		_right = Math.Max(left, right);
		_rangeType = GridRangeInfoType.Cells;
		if (_bottom == int.MaxValue || _right == int.MaxValue || _left < 0 || _top < 0)
		{
			throw new ArgumentException();
		}
	}

	internal GridRangeInfo(GridRangeInfoType rt, int from, int to)
	{
		switch (rt)
		{
		case GridRangeInfoType.Cols:
			_left = Math.Min(from, to);
			_right = Math.Max(from, to);
			_top = 0;
			_bottom = int.MaxValue;
			_rangeType = GridRangeInfoType.Cols;
			if (_right == int.MaxValue || _left < 0)
			{
				throw new ArgumentException();
			}
			break;
		case GridRangeInfoType.Rows:
			_top = Math.Min(from, to);
			_bottom = Math.Max(from, to);
			_left = 0;
			_right = int.MaxValue;
			_rangeType = GridRangeInfoType.Rows;
			if (_bottom == int.MaxValue || _top < 0)
			{
				throw new ArgumentException();
			}
			break;
		default:
			throw new ArgumentException("Invalid RangeType", "rt");
		}
	}

	internal GridRangeInfo(GridRangeInfoType rt, int rowOrCol)
		: this(rt, rowOrCol, rowOrCol)
	{
	}

	internal GridRangeInfo(GridRangeInfoType rt)
	{
		if (rt != GridRangeInfoType.Table)
		{
			throw new ArgumentException("Invalid RangeType", "rt");
		}
		_left = (_top = 0);
		_right = (_bottom = int.MaxValue);
		_rangeType = GridRangeInfoType.Table;
	}

	internal GridRangeInfo(GridRangeInfoType rangeType, int top, int left, int bottom, int right)
	{
		_rangeType = rangeType;
		_top = Math.Min(top, bottom);
		_left = Math.Min(left, right);
		_bottom = Math.Max(top, bottom);
		_right = Math.Max(left, right);
		if (_left < 0 || _top < 0)
		{
			throw new ArgumentException("Negative row or column numbers invalid", "rt");
		}
	}

	[DebuggerStepThrough]
	public static GridRangeInfo FromTlhw(int top, int left, int height, int width)
	{
		if (height <= 0 || width <= 0)
		{
			return Empty;
		}
		return new GridRangeInfo(top, left, top + height - 1, left + width - 1);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Cell(int row, int col)
	{
		if (row < 0 || col < 0)
		{
			return Empty;
		}
		return Cells(row, col, row, col);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Cells(int top, int left, int bottom, int right)
	{
		if (top < 0 || left < 0)
		{
			return Empty;
		}
		return new GridRangeInfo(top, left, bottom, right);
	}

	internal static GridRangeInfo InternalCells(int top, int left, int bottom, int right)
	{
		if (bottom < top || right < left || top < 0 || left < 0)
		{
			return Empty;
		}
		return new GridRangeInfo(top, left, bottom, right);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Row(int rowIndex)
	{
		return Rows(rowIndex, rowIndex);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Rows(int top, int bottom)
	{
		if (top < 0 || bottom < 0)
		{
			return Empty;
		}
		return new GridRangeInfo(GridRangeInfoType.Rows, top, bottom);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Col(int colIndex)
	{
		return Cols(colIndex, colIndex);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Cols(int left, int right)
	{
		if (right < 0 || left < 0)
		{
			return Empty;
		}
		return new GridRangeInfo(GridRangeInfoType.Cols, left, right);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo EmptyRange()
	{
		return Empty;
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Table()
	{
		return new GridRangeInfo(GridRangeInfoType.Table);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Auto(int rowIndex, int colIndex)
	{
		if (rowIndex > -1 && colIndex > -1)
		{
			return Cell(rowIndex, colIndex);
		}
		if (colIndex > -1)
		{
			return Col(colIndex);
		}
		if (rowIndex > -1)
		{
			return Row(rowIndex);
		}
		return Table();
	}

	[DebuggerStepThrough]
	public static GridRangeInfo Auto(int top, int left, int bottom, int right)
	{
		if (top > -1 && left > -1)
		{
			return Cells(top, left, bottom, right);
		}
		if (left > -1)
		{
			return Cols(left, right);
		}
		if (top > -1)
		{
			return Rows(top, bottom);
		}
		return Table();
	}

	[DebuggerStepThrough]
	public bool GetFirstCell(out int top, out int left)
	{
		top = _top;
		left = _left;
		return Valid;
	}

	[DebuggerStepThrough]
	public bool GetNextCell(ref int nRow, ref int nCol)
	{
		return GetNextCell(ref nRow, ref nCol, bSortByRow: true);
	}

	[DebuggerStepThrough]
	public bool GetNextCell(ref int nRow, ref int nCol, bool bSortByRow)
	{
		if (!Valid)
		{
			return false;
		}
		if (bSortByRow && ++nCol > _right)
		{
			if (++nRow > _bottom)
			{
				nRow = (nCol = 0);
			}
			else
			{
				nCol = _left;
			}
		}
		else if (!bSortByRow && ++nRow > _bottom)
		{
			if (++nCol > _right)
			{
				nRow = (nCol = 0);
			}
			else
			{
				nRow = _top;
			}
		}
		if (nRow <= 0)
		{
			return nCol > 0;
		}
		return true;
	}

	[DebuggerStepThrough]
	public GridRangeInfo ExpandRange(int nFirstRow, int nFirstCol, int nRowCount, int nColCount)
	{
		GridRangeInfo gridRangeInfo = (GridRangeInfo)Clone();
		switch (_rangeType)
		{
		case GridRangeInfoType.Cols:
			gridRangeInfo._top = nFirstRow;
			gridRangeInfo._bottom = nRowCount;
			break;
		case GridRangeInfoType.Rows:
			gridRangeInfo._left = nFirstCol;
			gridRangeInfo._right = nColCount;
			break;
		case GridRangeInfoType.Table:
			gridRangeInfo._top = nFirstRow;
			gridRangeInfo._bottom = nRowCount;
			gridRangeInfo._left = nFirstCol;
			gridRangeInfo._right = nColCount;
			break;
		}
		gridRangeInfo._rangeType = GridRangeInfoType.Cells;
		return gridRangeInfo;
	}

	[DebuggerStepThrough]
	public GridRangeInfo OffsetRange(int rowOffset, int colOffset)
	{
		GridRangeInfo gridRangeInfo = (GridRangeInfo)Clone();
		switch (_rangeType)
		{
		case GridRangeInfoType.Rows:
			gridRangeInfo._top += rowOffset;
			gridRangeInfo._bottom += rowOffset;
			break;
		case GridRangeInfoType.Cols:
			gridRangeInfo._left += colOffset;
			gridRangeInfo._right += colOffset;
			break;
		case GridRangeInfoType.Cells:
			gridRangeInfo._top += rowOffset;
			gridRangeInfo._bottom += rowOffset;
			gridRangeInfo._left += colOffset;
			gridRangeInfo._right += colOffset;
			break;
		}
		return gridRangeInfo;
	}

	internal GridRangeInfo InternalRange()
	{
		GridRangeInfo gridRangeInfo = (GridRangeInfo)Clone();
		switch (_rangeType)
		{
		case GridRangeInfoType.Cols:
			gridRangeInfo._top = -1;
			gridRangeInfo._bottom = -1;
			break;
		case GridRangeInfoType.Rows:
			gridRangeInfo._left = -1;
			gridRangeInfo._right = -1;
			break;
		case GridRangeInfoType.Table:
			gridRangeInfo._top = -1;
			gridRangeInfo._bottom = -1;
			gridRangeInfo._left = -1;
			gridRangeInfo._right = -1;
			break;
		}
		gridRangeInfo._rangeType = GridRangeInfoType.Cells;
		return gridRangeInfo;
	}

	[DebuggerStepThrough]
	public bool IntersectsWith(GridRangeInfo range)
	{
		return IntersectRange(range).Valid;
	}

	[DebuggerStepThrough]
	public bool Contains(GridRangeInfo range)
	{
		if (!IsEmpty)
		{
			return IntersectRange(range).Equals(range);
		}
		return false;
	}

	[DebuggerStepThrough]
	public GridRangeInfo IntersectRange(GridRangeInfo range)
	{
		return IntersectRange(this, range);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo IntersectRange(GridRangeInfo r1, GridRangeInfo r2)
	{
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		gridRangeInfo._left = Math.Max(r1._left, r2._left);
		gridRangeInfo._right = Math.Min(r1._right, r2._right);
		gridRangeInfo._top = Math.Max(r1._top, r2._top);
		gridRangeInfo._bottom = Math.Min(r1._bottom, r2._bottom);
		if (gridRangeInfo._left <= gridRangeInfo._right && gridRangeInfo._top <= gridRangeInfo._bottom)
		{
			gridRangeInfo.EnsureRangeType();
		}
		else
		{
			gridRangeInfo = Empty;
		}
		return gridRangeInfo;
	}

	[DebuggerStepThrough]
	public GridRangeInfo UnionRange(GridRangeInfo range)
	{
		return UnionRange(this, range);
	}

	[DebuggerStepThrough]
	public static GridRangeInfo UnionRange(GridRangeInfo r1, GridRangeInfo r2)
	{
		if (r1.IsEmpty && r2.IsEmpty)
		{
			return Empty;
		}
		if (r1.IsEmpty)
		{
			return r2;
		}
		if (r2.IsEmpty)
		{
			return r1;
		}
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		gridRangeInfo._left = Math.Min(r1._left, r2._left);
		gridRangeInfo._right = Math.Max(r1._right, r2._right);
		gridRangeInfo._top = Math.Min(r1._top, r2._top);
		gridRangeInfo._bottom = Math.Max(r1._bottom, r2._bottom);
		if (gridRangeInfo._left <= gridRangeInfo._right && gridRangeInfo._top <= gridRangeInfo._bottom)
		{
			gridRangeInfo.EnsureRangeType();
		}
		else
		{
			gridRangeInfo = Empty;
		}
		return gridRangeInfo;
	}

	private void EnsureRangeType()
	{
		if (_left == 0 && _right == int.MaxValue)
		{
			if (_top == 0 && _bottom == int.MaxValue)
			{
				_rangeType = GridRangeInfoType.Table;
			}
			else
			{
				_rangeType = GridRangeInfoType.Rows;
			}
		}
		else if (_top == 0 && _bottom == int.MaxValue)
		{
			_rangeType = GridRangeInfoType.Cols;
		}
		else
		{
			_rangeType = GridRangeInfoType.Cells;
		}
	}

	internal bool InsertRows(int row, int count)
	{
		if (Valid && _bottom != int.MaxValue && _bottom >= row)
		{
			if (_top >= row)
			{
				_top += count;
			}
			_bottom += count;
			return true;
		}
		return false;
	}

	internal bool InsertCols(int col, int count)
	{
		if (Valid && _right != int.MaxValue && _right >= col)
		{
			if (_left >= col)
			{
				_left += count;
			}
			_right += count;
			return true;
		}
		return false;
	}

	internal bool RemoveRows(int from, int last, int maxrow)
	{
		bool result = false;
		if (Valid && _bottom != int.MaxValue)
		{
			int num = last - from + 1;
			if (_top >= from && _bottom <= last)
			{
				_rangeType = GridRangeInfoType.Empty;
				result = true;
			}
			else
			{
				if (_top >= from)
				{
					_top = Math.Max(from, Math.Max(last, _top) - num);
					result = true;
				}
				if (_bottom >= from)
				{
					_bottom = Math.Max(last, _bottom) - num;
					result = true;
				}
				if (_bottom < _top)
				{
					_rangeType = GridRangeInfoType.Empty;
				}
			}
			if (EnsureRowLimits(maxrow))
			{
				result = true;
			}
		}
		return result;
	}

	internal bool EnsureRowLimits(int maxrow)
	{
		if (!Valid)
		{
			return false;
		}
		if (_top > maxrow)
		{
			_rangeType = GridRangeInfoType.Empty;
			return true;
		}
		if (_bottom > maxrow && _bottom != int.MaxValue)
		{
			_bottom = maxrow;
			return true;
		}
		return false;
	}

	internal bool RemoveCols(int from, int last, int maxcol)
	{
		bool result = false;
		if (Valid && _right != int.MaxValue)
		{
			int num = last - from + 1;
			if (_left >= from && _right <= last)
			{
				_rangeType = GridRangeInfoType.Empty;
				result = true;
			}
			else
			{
				if (_left >= from)
				{
					_left = Math.Max(from, Math.Max(last, _left) - num);
					result = true;
				}
				if (_right >= from)
				{
					_right = Math.Max(last, _right) - num;
					result = true;
				}
				if (_right < _left)
				{
					_rangeType = GridRangeInfoType.Empty;
				}
			}
			if (EnsureColLimits(maxcol))
			{
				result = true;
			}
		}
		return result;
	}

	internal bool EnsureColLimits(int maxcol)
	{
		if (!Valid)
		{
			return false;
		}
		if (_left > maxcol)
		{
			_rangeType = GridRangeInfoType.Empty;
			return true;
		}
		if (_right > maxcol && _right != int.MaxValue)
		{
			_right = maxcol;
			return true;
		}
		return false;
	}

	internal bool MoveRows(int nFromRow, int nToRow, int nDestRow, int maxrow)
	{
		if (!Valid || _bottom == int.MaxValue)
		{
			return false;
		}
		bool result = false;
		int num = nToRow - nFromRow + 1;
		if (nDestRow > nFromRow)
		{
			nDestRow += num;
		}
		if (_top >= nFromRow && _top <= nToRow && nToRow < nDestRow)
		{
			_top = nDestRow - num + (_top - nFromRow);
			_bottom = nDestRow - num + (_bottom - nFromRow);
			result = true;
		}
		else if (_top >= nFromRow && _top <= nToRow && nDestRow < nFromRow)
		{
			_top = nDestRow + (_top - nFromRow);
			_bottom = nDestRow + (_bottom - nFromRow);
			result = true;
		}
		else if (_top > nToRow && _top < nDestRow)
		{
			_top -= num;
			_bottom -= num;
			result = true;
		}
		else if (_top >= nDestRow && _top < nFromRow)
		{
			_top += num;
			_bottom += num;
			result = true;
		}
		if (EnsureRowLimits(maxrow))
		{
			result = true;
		}
		return result;
	}

	internal bool MoveCols(int nFromCol, int nToCol, int nDestCol, int maxcol)
	{
		if (!Valid || _right == int.MaxValue)
		{
			return false;
		}
		bool result = false;
		int num = nToCol - nFromCol + 1;
		if (nDestCol > nFromCol)
		{
			nDestCol += num;
		}
		if (_left >= nFromCol && _left <= nToCol && nToCol < nDestCol)
		{
			_left = nDestCol - num + (_left - nFromCol);
			_right = nDestCol - num + (_right - nFromCol);
			result = true;
		}
		else if (_left >= nFromCol && _left <= nToCol && nDestCol < nFromCol)
		{
			_left = nDestCol + (_left - nFromCol);
			_right = nDestCol + (_right - nFromCol);
			result = true;
		}
		else if (_left > nToCol && _left < nDestCol)
		{
			_left -= num;
			_right -= num;
			result = true;
		}
		else if (_left >= nDestCol && _left < nFromCol)
		{
			_left += num;
			_right += num;
			result = true;
		}
		if (EnsureColLimits(maxcol))
		{
			result = true;
		}
		return result;
	}

	[DebuggerStepThrough]
	public override bool Equals(object obj)
	{
		if (obj == null || !(obj is GridRangeInfo))
		{
			return false;
		}
		GridRangeInfo gridRangeInfo = obj as GridRangeInfo;
		if (Valid || gridRangeInfo.Valid)
		{
			if (Valid && gridRangeInfo.Valid && _rangeType == gridRangeInfo._rangeType && _top == gridRangeInfo._top && _left == gridRangeInfo._left && _bottom == gridRangeInfo._bottom)
			{
				return _right == gridRangeInfo._right;
			}
			return false;
		}
		return true;
	}

	[DebuggerStepThrough]
	public override int GetHashCode()
	{
		return _left ^ ((_top << 13) | (_left >> 19)) ^ ((_right << 26) | (_right >> 6)) ^ ((_bottom << 7) | (_bottom >> 25));
	}

	[DebuggerStepThrough]
	public static bool operator ==(GridRangeInfo r1, GridRangeInfo r2)
	{
		if ((object)r1 != r2)
		{
			if ((object)r1 != null)
			{
				return r1.Equals(r2);
			}
			return false;
		}
		return true;
	}

	[DebuggerStepThrough]
	public static bool operator !=(GridRangeInfo r1, GridRangeInfo r2)
	{
		if ((object)r1 != r2)
		{
			if ((object)r1 != null)
			{
				return !r1.Equals(r2);
			}
			return true;
		}
		return false;
	}

	public static bool Compare(GridRangeInfo r1, GridRangeInfo r2)
	{
		if ((object)r1 != r2)
		{
			if ((object)r1 != null)
			{
				return r1.Equals(r2);
			}
			return false;
		}
		return true;
	}

	[DebuggerStepThrough]
	public static string GetAlphaLabel(int nCol)
	{
		char[] array = new char[10];
		int num = 0;
		while (nCol > 0 && num < 9)
		{
			nCol--;
			array[num] = (char)(nCol % 26 + 65);
			nCol /= 26;
			num++;
		}
		char[] array2 = new char[num];
		for (int i = 0; i < num; i++)
		{
			array2[num - i - 1] = array[i];
		}
		return new string(array2);
	}

	[DebuggerStepThrough]
	public static string GetNumericLabel(int nRow)
	{
		return nRow.ToString();
	}

	public override string ToString()
	{
		return ToString(null, null);
	}

	public string ToString(IFormatProvider provider)
	{
		return ToString(null, provider);
	}

	public string ToString(string format)
	{
		return ToString(format, null);
	}

	public string ToString(string format, IFormatProvider formatProvider)
	{
		if (IsEmpty)
		{
			return string.Empty;
		}
		string[] array = null;
		if (GridUtil.IsEmpty(format) || format == "G")
		{
			switch (RangeType)
			{
			case GridRangeInfoType.Table:
				array = new string[1] { "T" };
				break;
			case GridRangeInfoType.Cols:
				array = ((Width <= 1 && Height <= 1) ? new string[2]
				{
					"C",
					Left.ToString()
				} : new string[5]
				{
					"C",
					Left.ToString(),
					":",
					"C",
					Right.ToString()
				});
				break;
			case GridRangeInfoType.Rows:
				array = ((Width <= 1 && Height <= 1) ? new string[2]
				{
					"R",
					Top.ToString()
				} : new string[5]
				{
					"R",
					Top.ToString(),
					":",
					"R",
					Bottom.ToString()
				});
				break;
			case GridRangeInfoType.Cells:
				array = ((Width <= 1 && Height <= 1) ? new string[4]
				{
					"R",
					Top.ToString(),
					"C",
					Left.ToString()
				} : new string[9]
				{
					"R",
					Top.ToString(),
					"C",
					Left.ToString(),
					":",
					"R",
					Bottom.ToString(),
					"C",
					Right.ToString()
				});
				break;
			}
			return string.Concat(array);
		}
		throw new ArgumentException("format");
	}

	private static GridRangeInfo ParsePart(string parseText)
	{
		if (parseText == "T")
		{
			return Table();
		}
		if (parseText.StartsWith("R"))
		{
			int num = parseText.IndexOf("C");
			if (num == -1)
			{
				return Row(int.Parse(parseText.Substring(1)));
			}
			return Cell(int.Parse(parseText.Substring(1, num - 1)), int.Parse(parseText.Substring(num + 1)));
		}
		if (parseText.StartsWith("C"))
		{
			return Col(int.Parse(parseText.Substring(1)));
		}
		throw new FormatException("Invalid Range: " + parseText);
	}

	public static GridRangeInfo Parse(string parseText)
	{
		parseText = parseText.Trim();
		if (GridUtil.IsEmpty(parseText))
		{
			return Empty;
		}
		try
		{
			if (parseText.IndexOf("..") != -1)
			{
				parseText = new StringBuilder(parseText).Replace("..", ":").ToString();
			}
			parseText = parseText.ToUpper(CultureInfo.InvariantCulture);
			string[] array = parseText.Split(':');
			if (array.Length == 1)
			{
				return ParsePart(array[0]);
			}
			if (array.Length == 2)
			{
				GridRangeInfo gridRangeInfo = ParsePart(array[0]);
				GridRangeInfo gridRangeInfo2 = ParsePart(array[1]);
				if (gridRangeInfo.RangeType == gridRangeInfo2.RangeType)
				{
					return UnionRange(gridRangeInfo, gridRangeInfo2);
				}
			}
		}
		catch (FormatException e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		catch (ArgumentException e2)
		{
			TraceUtil.TraceExceptionCatched(e2);
		}
		throw new FormatException("Invalid Range: " + parseText);
	}
}
