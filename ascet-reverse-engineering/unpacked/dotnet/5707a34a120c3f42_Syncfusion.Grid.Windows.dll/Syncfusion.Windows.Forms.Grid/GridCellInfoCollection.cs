using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[Editor(typeof(GridCellInfoCollectionEditor), typeof(UITypeEditor))]
public class GridCellInfoCollection : CollectionBase, ISerializable
{
	public class GridCellInfoEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public GridCellInfo Current => (GridCellInfo)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public GridCellInfoEnumerator(GridCellInfoCollection griMappings)
		{
			iEnLocal = griMappings;
			iEnBase = iEnLocal.GetEnumerator();
		}

		public bool MoveNext()
		{
			return iEnBase.MoveNext();
		}

		bool IEnumerator.MoveNext()
		{
			return iEnBase.MoveNext();
		}

		public void Reset()
		{
			iEnBase.Reset();
		}

		void IEnumerator.Reset()
		{
			iEnBase.Reset();
		}
	}

	internal SFTable data;

	internal GridControlBase control;

	private bool createdFromTemplate;

	internal SFTable InternalData => data;

	public GridCellInfo this[int intIndex]
	{
		get
		{
			return (GridCellInfo)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public GridCellInfoCollection()
	{
	}

	public GridCellInfoCollection(GridCellInfoCollection griValue)
	{
		AddRange(griValue);
	}

	public GridCellInfoCollection(GridData gdata)
		: this(gdata.sfTable)
	{
	}

	public GridCellInfoCollection(SFTable newdata)
		: this(newdata, fromTemplate: false)
	{
	}

	internal GridCellInfoCollection(SFTable newdata, bool fromTemplate)
	{
		if (newdata == null)
		{
			return;
		}
		createdFromTemplate = fromTemplate;
		data = newdata;
		int count = newdata.Rows.Count;
		for (int i = 0; i < count; i++)
		{
			ArrayList arrayList = (ArrayList)newdata.Rows[i];
			if (arrayList == null)
			{
				continue;
			}
			int count2 = arrayList.Count;
			for (int j = 0; j < count2; j++)
			{
				if (arrayList[j] != null && arrayList[j] is GridStyleInfoStore gridStyleInfoStore)
				{
					GridCellInfo value = new GridCellInfo(i - 1, j - 1, (GridStyleInfoStore)gridStyleInfoStore.Clone())
					{
						collection = this
					};
					base.InnerList.Add(value);
				}
			}
		}
	}

	public GridCellInfoCollection(GridCellInfo[] griValue)
	{
		AddRange(griValue);
	}

	protected GridCellInfoCollection(SerializationInfo info, StreamingContext context)
		: this((SFTable)info.GetValue("Data", typeof(SFTable)), fromTemplate: true)
	{
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		GetObjectData(info, context);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Data", data);
	}

	public int Add(GridCellInfo griValue)
	{
		int result = base.List.Add(griValue);
		WriteToData(griValue, invalidate: true);
		return result;
	}

	public void AddRange(GridCellInfo[] griValue)
	{
		for (int i = 0; i < griValue.Length; i++)
		{
			Add(griValue[i]);
		}
	}

	public void AddRange(GridCellInfoCollection griValue)
	{
		if (!griValue.createdFromTemplate)
		{
			for (int i = 0; i < griValue.Count; i++)
			{
				Add(griValue[i]);
			}
			return;
		}
		for (int j = 0; j <= griValue.data.RowCount; j++)
		{
			for (int k = 0; k <= griValue.data.ColCount; k++)
			{
				if (griValue.data[j, k] is GridStyleInfoStore gridStyleInfoStore)
				{
					GridCellInfo gridCellInfo = new GridCellInfo(j - 1, k - 1, (GridStyleInfoStore)gridStyleInfoStore.Clone());
					gridCellInfo.collection = this;
					base.InnerList.Add(gridCellInfo);
				}
			}
		}
	}

	public bool Contains(GridCellInfo griValue)
	{
		return base.List.Contains(griValue);
	}

	public void CopyTo(GridCellInfo[] griArray, int intIndex)
	{
		base.List.CopyTo(griArray, intIndex);
	}

	public int IndexOf(GridCellInfo griValue)
	{
		return base.List.IndexOf(griValue);
	}

	public void Insert(int intIndex, GridCellInfo griValue)
	{
		base.List.Insert(intIndex, griValue);
	}

	public new GridCellInfoEnumerator GetEnumerator()
	{
		return new GridCellInfoEnumerator(this);
	}

	public void Remove(GridCellInfo griValue)
	{
		base.List.Remove(griValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}

	internal void WriteToData(GridCellInfoCollection infoCollection)
	{
		if (infoCollection == null)
		{
			return;
		}
		foreach (GridCellInfo item in infoCollection)
		{
			WriteToData(item, invalidate: false);
		}
	}

	internal void WriteToData(GridCellInfo[] cellInfos, bool invalidate)
	{
		foreach (GridCellInfo cellInfo in cellInfos)
		{
			WriteToData(cellInfo, invalidate: false);
		}
	}

	internal void WriteToData(GridCellInfo cellInfo, bool invalidate)
	{
		if (data != null)
		{
			data.RowCount = Math.Max(cellInfo.Row + 2, data.RowCount);
			data.ColCount = Math.Max(cellInfo.Col + 2, data.ColCount);
			data[cellInfo.Row + 1, cellInfo.Col + 1] = cellInfo.StyleInfo.Store;
			if (control != null)
			{
				control.Model.ResetVolatileData();
				control.Invalidate();
			}
		}
	}
}
