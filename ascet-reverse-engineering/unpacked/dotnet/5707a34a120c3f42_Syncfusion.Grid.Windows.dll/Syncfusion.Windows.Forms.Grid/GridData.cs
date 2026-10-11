using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Xml.Serialization;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridDataTypeConverter))]
public class GridData : ICloneable, ISerializable, IDeserializationCallback
{
	private const int delta = 1;

	internal GridRowCollection sfTable;

	private object extendedInfo;

	internal bool modified;

	private SFTable table_old;

	[NonSerialized]
	private GridDataColStylesIndexer colStyles;

	[NonSerialized]
	private GridDataRowStylesIndexer rowStyles;

	public bool Modified => modified;

	public virtual int RowCount
	{
		get
		{
			return Math.Max(0, sfTable.RowCount - 1 - 1);
		}
		set
		{
			sfTable.RowCount = value + 1 + 1;
		}
	}

	public virtual int ColCount
	{
		get
		{
			return Math.Max(0, sfTable.ColCount - 1 - 1);
		}
		set
		{
			sfTable.ColCount = value + 1 + 1;
		}
	}

	public object ExtendedInfo
	{
		get
		{
			return extendedInfo;
		}
		set
		{
			extendedInfo = value;
		}
	}

	public GridStyleInfoStore this[int rowIndex, int colIndex]
	{
		get
		{
			return sfTable[rowIndex + 1, colIndex + 1];
		}
		set
		{
			sfTable[rowIndex + 1, colIndex + 1] = value;
			modified = true;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[XmlIgnore]
	public GridStyleInfoStore TableStyle
	{
		get
		{
			return this[-1, -1];
		}
		set
		{
			this[-1, -1] = value;
			modified = true;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public GridDataColStylesIndexer ColStyles
	{
		get
		{
			if (colStyles == null)
			{
				colStyles = new GridDataColStylesIndexer(this);
			}
			return colStyles;
		}
	}

	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridDataRowStylesIndexer RowStyles
	{
		get
		{
			if (rowStyles == null)
			{
				rowStyles = new GridDataRowStylesIndexer(this);
			}
			return rowStyles;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridRowCollection Rows => sfTable;

	public GridData(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			if (current.Name == "Rows" && current.Value is GridRowCollection)
			{
				sfTable = (GridRowCollection)current.Value;
				break;
			}
		}
		if (sfTable == null)
		{
			table_old = (SFTable)info.GetValue("SFTable", typeof(SFTable));
		}
		extendedInfo = info.GetValue("Tag", typeof(object));
		bool flag = true;
		SerializationInfoEnumerator enumerator2 = info.GetEnumerator();
		while (enumerator2.MoveNext())
		{
			if (enumerator2.Name == "Modified")
			{
				flag = Convert.ToBoolean(enumerator2.Value);
			}
		}
		modified = flag;
	}

	void IDeserializationCallback.OnDeserialization(object sender)
	{
		if (sfTable == null && table_old != null)
		{
			sfTable = new GridRowCollection(table_old);
			table_old = null;
		}
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Rows", sfTable);
		info.AddValue("Tag", extendedInfo);
		info.AddValue("Modified", modified);
	}

	public GridData()
	{
		sfTable = new GridRowCollection();
		sfTable.RowCount = 2;
		sfTable.ColCount = 2;
	}

	private GridData(GridData data)
	{
		sfTable = (GridRowCollection)data.sfTable.Clone();
	}

	object ICloneable.Clone()
	{
		return new GridData(this);
	}

	public void ResetModified()
	{
		modified = false;
	}

	public virtual void Clear()
	{
		sfTable.Clear();
		sfTable.RowCount = 2;
		sfTable.ColCount = 2;
		modified = false;
	}

	public virtual bool InsertRows(int rowIndex, int count)
	{
		sfTable.InsertRows(rowIndex + 1, count);
		return true;
	}

	public virtual bool InsertCols(int colIndex, int count)
	{
		sfTable.InsertCols(colIndex + 1, count);
		return true;
	}

	public virtual bool RemoveRows(int rowIndex, int count)
	{
		sfTable.RemoveRows(rowIndex + 1, count);
		return true;
	}

	public virtual bool RemoveCols(int colIndex, int count)
	{
		sfTable.RemoveCols(colIndex + 1, count);
		return true;
	}

	public virtual bool MoveRows(int rowIndex, int count, int target)
	{
		sfTable.MoveRows(rowIndex + 1, count, target + 1);
		return true;
	}

	public virtual bool MoveCols(int colIndex, int count, int target)
	{
		sfTable.MoveCols(colIndex + 1, count, target + 1);
		return true;
	}

	public virtual bool CopyCells(GridRangeInfo sourceRange, GridRangeInfo destRange)
	{
		int height = sourceRange.Height;
		int width = sourceRange.Width;
		GridRowCollection gridRowCollection = new GridRowCollection();
		gridRowCollection.RowCount = height;
		gridRowCollection.ColCount = width;
		for (int i = 0; i < height; i++)
		{
			for (int j = 0; j < width; j++)
			{
				GridStyleInfoStore gridStyleInfoStore = sfTable[i + sourceRange.Top, j + sourceRange.Left];
				gridRowCollection[i, j] = (GridStyleInfoStore)gridStyleInfoStore.Clone();
			}
		}
		for (int k = 0; k < height; k++)
		{
			for (int l = 0; l < width; l++)
			{
				sfTable[k + destRange.Top, l + destRange.Left] = gridRowCollection[k, l];
			}
		}
		return true;
	}

	public virtual bool MoveCells(GridRangeInfo sourceRange, GridRangeInfo destRange)
	{
		int height = sourceRange.Height;
		int width = sourceRange.Width;
		GridRowCollection gridRowCollection = new GridRowCollection();
		gridRowCollection.RowCount = height;
		gridRowCollection.ColCount = width;
		for (int i = 0; i < height; i++)
		{
			for (int j = 0; j < width; j++)
			{
				gridRowCollection[i, j] = sfTable[i + sourceRange.Top, j + sourceRange.Left];
				sfTable[i + sourceRange.Top, j + sourceRange.Left] = null;
			}
		}
		for (int k = 0; k < height; k++)
		{
			for (int l = 0; l < width; l++)
			{
				sfTable[k + destRange.Top, l + destRange.Left] = gridRowCollection[k, l];
			}
		}
		return true;
	}

	public bool Contains(int rowIndex, int colIndex)
	{
		return sfTable.Contains(rowIndex + 1, colIndex + 1);
	}

	public void SortByColumn(int colIndex)
	{
		SortByColumn(colIndex, ListSortDirection.Ascending);
	}

	public void SortByColumn(int colIndex, ListSortDirection direction)
	{
		SortByColumn(colIndex, direction, 0, null);
	}

	public void SortByColumn(int colIndex, ListSortDirection direction, int extraHeaderCount)
	{
		SortByColumn(colIndex, direction, extraHeaderCount, null);
	}

	public void SortByColumn(int colIndex, ListSortDirection direction, IComparer comparer)
	{
		SortByColumn(colIndex, direction, 0, comparer);
	}

	public void SortByColumn(int colIndex, ListSortDirection direction, int extraHeaderCount, IComparer comparer)
	{
		int num = extraHeaderCount + 2;
		ArrayList arrayList = new ArrayList();
		int num2 = RowCount - extraHeaderCount;
		for (int i = 0; i < num2; i++)
		{
			arrayList.Add(sfTable.Rows[i + num]);
		}
		GridColumnSorter comparer2 = new GridColumnSorter(colIndex + 1, direction, arrayList, comparer);
		arrayList.Sort(comparer2);
		for (int j = 0; j < arrayList.Count; j++)
		{
			sfTable.Rows[j + num] = arrayList[j];
		}
	}
}
