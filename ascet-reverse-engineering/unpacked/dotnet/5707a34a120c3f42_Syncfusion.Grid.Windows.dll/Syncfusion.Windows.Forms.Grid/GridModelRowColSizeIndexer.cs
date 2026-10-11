using System;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public abstract class GridModelRowColSizeIndexer : GridModelBound, ISerializable
{
	private IGridRowColSizeDictionary dictionary;

	public abstract string RowColName { get; }

	public abstract GridModelRowColOperations RowColObject { get; }

	public GridModelHideRowColsIndexer IsHidden => RowColObject.Hidden;

	public IGridRowColSizeDictionary Dictionary
	{
		get
		{
			if (dictionary == null)
			{
				dictionary = new GridRowColSizeDictionary();
			}
			return dictionary;
		}
		set
		{
			dictionary = value;
		}
	}

	public int this[int index]
	{
		get
		{
			if (IsHidden[index])
			{
				return 0;
			}
			int size = GetSize(index);
			if (size >= 0)
			{
				return size;
			}
			return RowColObject.DefaultSize;
		}
		set
		{
			SetRange(index, index, value);
		}
	}

	public bool Modified => Dictionary.Modified;

	public abstract int this[string name] { get; set; }

	[DocumentationExclude]
	public abstract void OnChanged(GridRowColSizeChangedEventArgs e);

	[DocumentationExclude]
	public abstract bool OnChanging(GridRowColSizeChangingEventArgs e);

	[DocumentationExclude]
	protected abstract void OnSaveSize(GridRowColSizeEventArgs e);

	[DocumentationExclude]
	protected abstract void OnQuerySize(GridRowColSizeEventArgs e);

	[DocumentationExclude]
	protected abstract void OnQuerySizeTotal(GridRowColSizeTotalEventArgs e);

	protected GridModelRowColSizeIndexer(SerializationInfo info, StreamingContext context)
	{
		dictionary = (IGridRowColSizeDictionary)info.GetValue("SizeDictionary", typeof(IGridRowColSizeDictionary));
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("SizeDictionary", dictionary);
	}

	protected GridModelRowColSizeIndexer(GridModel model)
		: base(model)
	{
	}

	public void ResetModified()
	{
		Dictionary.ResetModified();
	}

	public int[] GetRange(int from, int last)
	{
		int num = last - from + 1;
		int[] array = new int[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = GetSize(from + i);
		}
		return array;
	}

	public int[] EvalRange(int startAt, int[] values)
	{
		return EvalRange(startAt, values, RowColObject.Hidden.GetRange(startAt, startAt + values.Length - 1), RowColObject.DefaultSize);
	}

	public int[] EvalRange(int startAt, int[] values, bool[] hidden, int defaultSize)
	{
		if (values == null)
		{
			throw new ArgumentNullException("values");
		}
		int num = values.Length;
		for (int i = 0; i < num; i++)
		{
			if (hidden != null && hidden[i])
			{
				values[i] = 0;
			}
			else if (values[i] < 0)
			{
				values[i] = defaultSize;
			}
		}
		return values;
	}

	public int GetTotal(int from, int last)
	{
		return GetTotal(from, last, int.MaxValue);
	}

	public int GetTotal(int from, int last, int maximum)
	{
		GridRowColSizeTotalEventArgs e = new GridRowColSizeTotalEventArgs(from, last, maximum, 0);
		OnQuerySizeTotal(e);
		if (e.Handled)
		{
			return e.Size;
		}
		int defaultSize = RowColObject.DefaultSize;
		GridModelHideRowColsIndexer hidden = RowColObject.Hidden;
		int num = 0;
		for (int i = from; i <= last; i++)
		{
			if (num > maximum)
			{
				break;
			}
			if (!hidden[i])
			{
				int size = GetSize(i);
				num += ((size < 0) ? defaultSize : size);
			}
		}
		return num;
	}

	public bool IsDefault(int index)
	{
		int size = GetSize(index);
		return size < 0;
	}

	public void ResetSize(int index)
	{
		SetSize(index, -1);
	}

	public void ResetRange(int from, int last)
	{
		SetRange(from, last, -1);
	}

	public void SetRange(int from, int last, int value)
	{
		SetRange(from, last, new int[1] { value });
	}

	public void SetRange(int from, int last, int[] values)
	{
		SetRange(from, last, values, discardUndo: false);
	}

	public void SetRange(int from, int last, int[] values, bool discardUndo)
	{
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".SetRange");
		try
		{
			if (!OnChanging(new GridRowColSizeChangingEventArgs(from, last, values)))
			{
				return;
			}
			bool success = false;
			int[] array = null;
			try
			{
				array = GetRange(from, last);
				int num = array.Length;
				for (int i = 0; i < num; i++)
				{
					SetSize(from + i, values[(values.Length > 1) ? i : 0]);
				}
				RowColObject.DelayFloatingCells(from, last);
				success = true;
				if (!discardUndo && model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelSetRowColSizeCommand(this, from, last, array));
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
			finally
			{
				OnChanged(new GridRowColSizeChangedEventArgs(from, last, array, success));
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public void SetSize(int index, int value)
	{
		GridRowColSizeEventArgs e = new GridRowColSizeEventArgs(index, value);
		OnSaveSize(e);
		if (!e.Handled)
		{
			Dictionary[index] = value;
		}
	}

	public int GetSize(int index)
	{
		GridRowColSizeEventArgs e = new GridRowColSizeEventArgs(index, 0);
		OnQuerySize(e);
		if (e.Handled)
		{
			return e.Size;
		}
		return Dictionary[index];
	}

	public bool ResizeToFit(GridRangeInfo range)
	{
		return ResizeToFit(range, GridResizeToFitOptions.None);
	}

	public abstract bool ResizeToFit(GridRangeInfo range, GridResizeToFitOptions options);

	[Obsolete("Use GridResizeToFitOptions instead")]
	public bool ResizeToFit(GridRangeInfo range, bool resizeCovered, bool noShrink)
	{
		GridResizeToFitOptions gridResizeToFitOptions = GridResizeToFitOptions.None;
		if (resizeCovered)
		{
			gridResizeToFitOptions |= GridResizeToFitOptions.ResizeCoveredCells;
		}
		if (noShrink)
		{
			gridResizeToFitOptions |= GridResizeToFitOptions.NoShrinkSize;
		}
		return ResizeToFit(range, gridResizeToFitOptions);
	}
}
