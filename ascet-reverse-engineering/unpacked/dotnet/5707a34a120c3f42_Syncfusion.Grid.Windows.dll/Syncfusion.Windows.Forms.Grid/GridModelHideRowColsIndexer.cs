using System;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public abstract class GridModelHideRowColsIndexer : GridModelBound, ISerializable
{
	private IGridRowColHideDictionary indexer;

	public abstract GridModelRowColOperations RowColObject { get; }

	public abstract string RowColName { get; }

	public IGridRowColHideDictionary Dictionary
	{
		get
		{
			if (indexer == null)
			{
				indexer = new GridRowColHideDictionary();
			}
			return indexer;
		}
	}

	public bool this[int index]
	{
		get
		{
			return GetHidden(index);
		}
		set
		{
			SetRange(index, index, value);
		}
	}

	public bool Modified => Dictionary.Modified;

	public abstract bool this[string name] { get; set; }

	[DocumentationExclude]
	public abstract void OnChanged(GridRowColHiddenEventArgs e);

	[DocumentationExclude]
	public abstract bool OnChanging(GridRowColHidingEventArgs e);

	[DocumentationExclude]
	protected abstract void OnSaveHide(GridRowColHideEventArgs e);

	[DocumentationExclude]
	protected abstract void OnQueryHide(GridRowColHideEventArgs e);

	protected GridModelHideRowColsIndexer(SerializationInfo info, StreamingContext context)
	{
		indexer = (IGridRowColHideDictionary)info.GetValue("HideDictionary", typeof(IGridRowColHideDictionary));
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("HideDictionary", indexer);
	}

	protected GridModelHideRowColsIndexer(GridModel model)
		: base(model)
	{
	}

	private void ResetModified()
	{
		Dictionary.ResetModified();
	}

	public bool[] GetRange(int from, int last)
	{
		int num = last - from + 1;
		bool[] array = new bool[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = GetHidden(from + i);
		}
		return array;
	}

	public void ResetRange(int from, int last)
	{
		SetRange(from, last, value: false);
	}

	public void SetRange(int from, int last, bool value)
	{
		SetRange(from, last, new bool[1] { value });
	}

	public void SetRange(int from, int last, bool[] values)
	{
		SetRange(from, last, values, discardUndo: false);
	}

	public void SetRange(int from, int last, bool[] values, bool discardUndo)
	{
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".SetRange");
		try
		{
			bool useOldHiddenScrollLogic = GridControlBase.UseOldHiddenScrollLogic;
			if (!useOldHiddenScrollLogic && !OnChanging(new GridRowColHidingEventArgs(from, last, values)))
			{
				return;
			}
			bool flag = false;
			bool[] array = null;
			try
			{
				array = GetRange(from, last);
				int num = array.Length;
				for (int i = 0; i < num; i++)
				{
					bool flag2 = values[(values.Length > 1) ? i : 0];
					if (GetHidden(from + i) != flag2)
					{
						int num2 = from + i;
						if (useOldHiddenScrollLogic && OnChanging(new GridRowColHidingEventArgs(num2, num2, new bool[1] { flag2 })))
						{
							SetHidden(num2, flag2);
							flag = true;
							OnChanged(new GridRowColHiddenEventArgs(num2, num2, new bool[1] { !flag2 }, flag));
						}
						else
						{
							SetHidden(num2, flag2);
							flag = true;
						}
					}
				}
				if (flag && !discardUndo && model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelSetRowColHideCommand(this, from, last, array));
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
				if (!useOldHiddenScrollLogic)
				{
					OnChanged(new GridRowColHiddenEventArgs(from, last, array, flag));
				}
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	[DocumentationExclude]
	protected virtual void SetHidden(int index, bool value)
	{
		Dictionary[index] = value;
	}

	[DocumentationExclude]
	protected virtual bool GetHidden(int index)
	{
		return Dictionary[index];
	}
}
