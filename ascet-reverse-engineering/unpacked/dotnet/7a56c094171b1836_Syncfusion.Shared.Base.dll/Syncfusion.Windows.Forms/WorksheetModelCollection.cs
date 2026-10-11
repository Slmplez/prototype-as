using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

[Serializable]
public class WorksheetModelCollection : CollectionBase, IDisposable, ISerializable
{
	private int counter;

	private int updateCount;

	public WorksheetModel this[int index]
	{
		get
		{
			return (WorksheetModel)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual bool Updating => updateCount > 0;

	public event SheetMovedEventHandler SheetMoved;

	public WorksheetModelCollection()
	{
	}

	protected WorksheetModelCollection(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			Add(enumerator.Value as WorksheetModel);
		}
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		for (int i = 0; i < base.Count; i++)
		{
			info.AddValue(i.ToString(), this[i]);
		}
	}

	public void Dispose()
	{
	}

	public WorksheetModelCollection(WorksheetModelCollection value)
	{
		AddRange(value);
	}

	public WorksheetModelCollection(WorksheetModel[] value)
	{
		AddRange(value);
	}

	public int IndexOf(string name)
	{
		for (int i = 0; i < base.Count; i++)
		{
			if (this[i].Name == name)
			{
				return i;
			}
		}
		return -1;
	}

	public int Add(WorksheetModel value)
	{
		return base.List.Add(value);
	}

	public void AddRange(WorksheetModel[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		for (int i = 0; i < value.Length; i++)
		{
			Add(value[i]);
		}
	}

	public void AddRange(WorksheetModelCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		for (int i = 0; i < value.Count; i++)
		{
			Add(value[i]);
		}
	}

	public bool Contains(WorksheetModel value)
	{
		return base.List.Contains(value);
	}

	public void CopyTo(WorksheetModel[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public int IndexOf(WorksheetModel value)
	{
		return base.List.IndexOf(value);
	}

	public void Insert(int index, WorksheetModel value)
	{
		base.List.Insert(index, value);
	}

	public void Remove(WorksheetModel value)
	{
		base.List.Remove(value);
	}

	public void Move(int index, int destination)
	{
		try
		{
			BeginUpdate();
			WorksheetModel value = this[index];
			if (destination == -1)
			{
				RemoveAt(index);
				Add(value);
				destination = base.Count - 1;
			}
			else if (destination < index)
			{
				RemoveAt(index);
				Insert(destination, value);
			}
			else if (destination > index + 1)
			{
				Insert(destination, value);
				RemoveAt(index);
			}
			EndUpdate();
			OnSheetMoved(index, destination, SheetMovedReason.MoveSheet);
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

	protected virtual void OnSheetMoved(int index, int destination, SheetMovedReason reason)
	{
		if (!Updating && this.SheetMoved != null)
		{
			SheetMovedEventArgs e = new SheetMovedEventArgs(index, destination, reason);
			this.SheetMoved(this, e);
		}
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		OnSheetMoved(index, -1, SheetMovedReason.RemoveSheet);
	}

	protected override void OnClearComplete()
	{
		OnSheetMoved(-1, -1, SheetMovedReason.ClearAll);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		OnSheetMoved(-1, index, SheetMovedReason.InsertSheet);
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
	}

	protected override void OnValidate(object value)
	{
		if (value == null || !(value is WorksheetModel))
		{
			throw new ArgumentException();
		}
	}

	public virtual void BeginUpdate()
	{
		updateCount++;
	}

	public virtual void EndUpdate()
	{
		updateCount--;
	}

	public WorksheetModel CreateEmptyWorksheet(WorkbookModel workbook)
	{
		string name;
		do
		{
			counter++;
			name = "Sheet " + counter;
		}
		while (IndexOf(name) != -1);
		WorksheetModel worksheetModel = new WorksheetModel(workbook, name);
		Add(worksheetModel);
		return worksheetModel;
	}
}
