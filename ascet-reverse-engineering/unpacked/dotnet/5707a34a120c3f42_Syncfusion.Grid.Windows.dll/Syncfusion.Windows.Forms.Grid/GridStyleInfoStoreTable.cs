using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridStyleInfoStoreTable : ISerializable
{
	private const int delta = 1;

	private GridStyleInfoStore[,] sfTable;

	private object tag;

	public virtual int RowCount => sfTable.GetLength(0) - 1;

	public virtual int ColCount => sfTable.GetLength(1) - 1;

	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
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
		}
	}

	protected GridStyleInfoStoreTable(SerializationInfo info, StreamingContext context)
	{
		sfTable = (GridStyleInfoStore[,])info.GetValue("Table", typeof(GridStyleInfoStore[,]));
		tag = info.GetValue("Tag", typeof(object));
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Table", sfTable);
		info.AddValue("Tag", tag);
	}

	public GridStyleInfoStoreTable(int rowCount, int colCount)
	{
		sfTable = new GridStyleInfoStore[rowCount + 1, colCount + 1];
	}
}
