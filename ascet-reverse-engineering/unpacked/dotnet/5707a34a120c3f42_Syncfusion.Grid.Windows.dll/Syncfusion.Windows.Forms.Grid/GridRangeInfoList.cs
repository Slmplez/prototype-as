using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Text;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridRangeInfoListConverter))]
public class GridRangeInfoList : CollectionBase, ICloneable, IFormattable, ISerializable
{
	private const char separator = ';';

	private static readonly char[] separators = new char[1] { ';' };

	public static readonly GridRangeInfoList Empty = new GridRangeInfoList();

	public GridRangeInfo this[int index]
	{
		get
		{
			return (GridRangeInfo)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	public GridRangeInfo ActiveRange
	{
		get
		{
			if (base.Count > 0)
			{
				return this[base.Count - 1];
			}
			return GridRangeInfo.Empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string Info => ToString();

	public GridRangeInfoList()
	{
	}

	protected GridRangeInfoList(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			base.List.Add(enumerator.Value);
		}
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		for (int i = 0; i < base.Count; i++)
		{
			info.AddValue(i.ToString(), base.List[i], typeof(GridRangeInfo));
		}
	}

	public void AddRange(GridRangeInfo[] value)
	{
		foreach (object obj in value)
		{
			if (obj is GridRangeInfo)
			{
				Add((GridRangeInfo)obj);
			}
		}
	}

	public int Add(GridRangeInfo value)
	{
		return base.List.Add(value);
	}

	public void Insert(int index, GridRangeInfo value)
	{
		base.List.Insert(index, value);
	}

	public int IndexOf(GridRangeInfo value)
	{
		return base.List.IndexOf(value);
	}

	public bool Contains(GridRangeInfo value)
	{
		return base.List.Contains(value);
	}

	public void Remove(GridRangeInfo value)
	{
		base.List.Remove(value);
	}

	public void CopyTo(GridRangeInfo[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public void CopyTo(Array array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public void CopyTo(GridRangeInfoList rl, int index)
	{
		for (int i = index; i < base.Count; i++)
		{
			if (!this[i].IsEmpty)
			{
				rl.Add(this[i]);
			}
		}
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public GridRangeInfoList Clone()
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		CopyTo(gridRangeInfoList, 0);
		return gridRangeInfoList;
	}

	public void RemoveEmptyRanges()
	{
		for (int num = base.Count - 1; num >= 0; num--)
		{
			if (this[num].IsEmpty)
			{
				RemoveAt(num);
			}
		}
	}

	public GridRangeInfoList GetRangesContaining(GridRangeInfo range)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (gridRangeInfo.Contains(range))
				{
					gridRangeInfoList.Add(gridRangeInfo);
				}
			}
			return gridRangeInfoList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeInfoList GetRangesIntersecting(GridRangeInfo range)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (gridRangeInfo.IntersectsWith(range))
				{
					gridRangeInfoList.Add(gridRangeInfo);
				}
			}
			return gridRangeInfoList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeInfoList GetRangesContained(GridRangeInfo range)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (range.Contains(gridRangeInfo))
				{
					gridRangeInfoList.Add(gridRangeInfo);
				}
			}
			return gridRangeInfoList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeInfo GetOuterRange(GridRangeInfo range)
	{
		bool flag = true;
		while (flag)
		{
			flag = false;
			foreach (GridRangeInfo item in GetRangesIntersecting(range))
			{
				if (!range.Contains(item))
				{
					flag = true;
					range = range.UnionRange(item);
				}
			}
		}
		return range;
	}

	[Obsolete("Not sure if needed")]
	internal GridRangeInfo GetInnerRange(GridRangeInfo range)
	{
		foreach (GridRangeInfo item in GetRangesIntersecting(range))
		{
			range = range.IntersectRange(item);
		}
		return range;
	}

	public bool AnyRangeContains(GridRangeInfo range)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (gridRangeInfo.Contains(range))
				{
					return true;
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		return false;
	}

	public bool AnyRangeIntersects(GridRangeInfo range)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (gridRangeInfo.IntersectsWith(range))
				{
					return true;
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		return false;
	}

	public void InsertRows(int row, int count)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.InsertRows(row, count))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public void InsertCols(int col, int count)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.InsertCols(col, count))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public void RemoveRows(int from, int last, int maxrow)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.RemoveRows(from, last, maxrow))
			{
				this[i] = ((gridRangeInfo.Height > 1 || gridRangeInfo.Width > 1) ? gridRangeInfo : GridRangeInfo.Empty);
			}
		}
	}

	internal void EnsureRowLimits(int maxrow)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.EnsureRowLimits(maxrow))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public void RemoveCols(int from, int last, int maxcol)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.RemoveCols(from, last, maxcol))
			{
				this[i] = ((gridRangeInfo.Height > 1 || gridRangeInfo.Width > 1) ? gridRangeInfo : GridRangeInfo.Empty);
			}
		}
	}

	internal void EnsureColLimits(int maxcol)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.EnsureColLimits(maxcol))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public void MoveRows(int nFromRow, int nToRow, int nDestRow, int maxrow)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.MoveRows(nFromRow, nToRow, nDestRow, maxrow))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public void MoveCols(int nFromCol, int nToCol, int nDestCol, int maxcol)
	{
		for (int i = 0; i < base.Count; i++)
		{
			GridRangeInfo gridRangeInfo = this[i];
			if (gridRangeInfo.MoveCols(nFromCol, nToCol, nDestCol, maxcol))
			{
				this[i] = gridRangeInfo;
			}
		}
	}

	public GridRangeInfoList FilterRangeType(GridRangeInfoType filter)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				if (gridRangeInfo.RangeType == filter)
				{
					gridRangeInfoList.Add(gridRangeInfo);
				}
			}
			return gridRangeInfoList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeInfoList ExpandRanges(int nFirstRow, int nFirstCol, int nRowCount, int nColCount)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
				gridRangeInfoList.Add(gridRangeInfo.ExpandRange(nFirstRow, nFirstCol, nRowCount, nColCount));
			}
			return gridRangeInfoList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeInfoList GetColRanges(GridRangeInfoType filter)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		RemoveEmptyRanges();
		GridRangeInfo[] array = new GridRangeInfo[base.Count];
		CopyTo(array, 0);
		Array.Sort(array, new GridRangeInfo.ColComparer());
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		GridRangeInfo[] array2 = array;
		foreach (GridRangeInfo gridRangeInfo2 in array2)
		{
			if (!gridRangeInfo2.IsEmpty && (filter == GridRangeInfoType.Empty || (gridRangeInfo2.RangeType & filter) != GridRangeInfoType.Empty))
			{
				if ((gridRangeInfo2.RangeType & GridRangeInfoType.Rows) != GridRangeInfoType.Empty)
				{
					gridRangeInfoList.Add(GridRangeInfo.Table());
					return gridRangeInfoList;
				}
				if (gridRangeInfo.IsEmpty)
				{
					gridRangeInfo = GridRangeInfo.Cols(gridRangeInfo2.Left, gridRangeInfo2.Right);
					continue;
				}
				if (gridRangeInfo.IntersectsWith(GridRangeInfo.Cols(gridRangeInfo2.Left - 1, gridRangeInfo2.Right)))
				{
					gridRangeInfo = gridRangeInfo.UnionRange(gridRangeInfo2);
					continue;
				}
				gridRangeInfoList.Add(gridRangeInfo);
				gridRangeInfo = GridRangeInfo.Cols(gridRangeInfo2.Left, gridRangeInfo2.Right);
			}
		}
		if (!gridRangeInfo.IsEmpty)
		{
			gridRangeInfoList.Add(gridRangeInfo);
		}
		return gridRangeInfoList;
	}

	public GridRangeInfoList GetRowRanges(GridRangeInfoType filter)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		RemoveEmptyRanges();
		GridRangeInfo[] array = new GridRangeInfo[base.Count];
		CopyTo(array, 0);
		Array.Sort(array, new GridRangeInfo.RowComparer());
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		GridRangeInfo[] array2 = array;
		foreach (GridRangeInfo gridRangeInfo2 in array2)
		{
			if (!gridRangeInfo2.IsEmpty && (filter == GridRangeInfoType.Empty || (gridRangeInfo2.RangeType & filter) != GridRangeInfoType.Empty))
			{
				if ((gridRangeInfo2.RangeType & GridRangeInfoType.Cols) != GridRangeInfoType.Empty)
				{
					gridRangeInfoList.Add(GridRangeInfo.Table());
					return gridRangeInfoList;
				}
				if (gridRangeInfo.IsEmpty)
				{
					gridRangeInfo = GridRangeInfo.Rows(gridRangeInfo2.Top, gridRangeInfo2.Bottom);
					continue;
				}
				if (gridRangeInfo.IntersectsWith(GridRangeInfo.Rows(gridRangeInfo2.Top - 1, gridRangeInfo2.Bottom)))
				{
					gridRangeInfo = gridRangeInfo.UnionRange(gridRangeInfo2);
					continue;
				}
				gridRangeInfoList.Add(gridRangeInfo);
				gridRangeInfo = GridRangeInfo.Rows(gridRangeInfo2.Top, gridRangeInfo2.Bottom);
			}
		}
		if (!gridRangeInfo.IsEmpty)
		{
			gridRangeInfoList.Add(gridRangeInfo);
		}
		return gridRangeInfoList;
	}

	internal static GridRangeInfoList FromString(string parseText)
	{
		return Parse(parseText);
	}

	public static GridRangeInfoList Parse(string parseText)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		string[] array = parseText.Split(separators);
		string[] array2 = array;
		foreach (string text in array2)
		{
			GridRangeInfo gridRangeInfo = GridRangeInfo.Parse(text.Trim());
			if (!gridRangeInfo.IsEmpty)
			{
				gridRangeInfoList.Add(gridRangeInfo);
			}
		}
		return gridRangeInfoList;
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
		if (format == null || format.Length == 0 || format == "G")
		{
			StringBuilder stringBuilder = new StringBuilder();
			string value = ';' + " ";
			bool flag = true;
			{
				IEnumerator enumerator = GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						GridRangeInfo gridRangeInfo = (GridRangeInfo)enumerator.Current;
						if (!gridRangeInfo.IsEmpty)
						{
							if (!flag)
							{
								stringBuilder.Append(value);
							}
							else
							{
								flag = false;
							}
							stringBuilder.Append(gridRangeInfo.ToString(format, formatProvider));
						}
					}
				}
				finally
				{
					IDisposable disposable = enumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
			return stringBuilder.ToString();
		}
		return string.Empty;
	}
}
