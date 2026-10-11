using System;
using System.Collections;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

public class InternalTabCollection : CollectionBase
{
	private TabBar owner;

	public InternalTab this[int index]
	{
		get
		{
			return (InternalTab)base.List[index];
		}
		set
		{
			value.Owner = owner;
			base.List[index] = value;
			owner.PerformLayout();
		}
	}

	public InternalTabCollection(TabBar owner)
	{
		this.owner = owner;
	}

	public void AddRange(InternalTab[] value)
	{
		owner.SuspendLayout();
		Clear();
		for (int i = 0; i < value.Length; i++)
		{
			value[i].Owner = owner;
			base.List.Add(value[i]);
		}
		if (owner.SelectedIndex >= base.Count)
		{
			owner.SelectedIndex = Math.Max(0, base.Count - 1);
		}
		owner.ResumeLayout();
		owner.PerformLayout();
	}

	public int Add(InternalTab value)
	{
		value.Owner = owner;
		try
		{
			int result = base.List.Add(value);
			if (owner.IsHandleCreated)
			{
				owner.PerformLayout();
			}
			return result;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			return -1;
		}
	}

	public void Insert(int index, InternalTab value)
	{
		value.Owner = owner;
		base.List.Insert(index, value);
		if (owner.IsHandleCreated)
		{
			owner.PerformLayout();
		}
	}

	public int IndexOf(InternalTab value)
	{
		return base.List.IndexOf(value);
	}

	public bool Contains(InternalTab value)
	{
		return base.List.Contains(value);
	}

	public void Remove(InternalTab value)
	{
		base.List.Remove(value);
	}

	public void CopyTo(InternalTab[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public void CopyTo(Array array, int index)
	{
		base.List.CopyTo(array, index);
	}
}
