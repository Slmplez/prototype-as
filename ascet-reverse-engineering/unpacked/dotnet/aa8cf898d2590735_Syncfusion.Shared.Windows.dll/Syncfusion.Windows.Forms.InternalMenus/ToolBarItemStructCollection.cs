using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
public class ToolBarItemStructCollection : CollectionBase
{
	public class ToolBarItemStructEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public ToolBarItemStruct Current => (ToolBarItemStruct)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public ToolBarItemStructEnumerator(ToolBarItemStructCollection tooMappings)
		{
			iEnLocal = tooMappings;
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

	private string toolBarName = "";

	public string ToolBarName
	{
		get
		{
			if (toolBarName == "")
			{
				toolBarName = "Default ToolBar";
			}
			return toolBarName;
		}
		set
		{
			toolBarName = value;
		}
	}

	public ToolBarItemStruct this[int intIndex]
	{
		get
		{
			return (ToolBarItemStruct)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public ToolBarItemStructCollection()
	{
	}

	public ToolBarItemStructCollection(ToolBarItemStructCollection tooValue)
	{
		AddRange(tooValue);
	}

	public ToolBarItemStructCollection(ToolBarItemStruct[] tooValue)
	{
		AddRange(tooValue);
	}

	public int Add(ToolBarItemStruct tooValue)
	{
		return base.List.Add(tooValue);
	}

	public void AddRange(ToolBarItemStruct[] tooValue)
	{
		for (int i = 0; i < tooValue.Length; i++)
		{
			Add(tooValue[i]);
		}
	}

	public void AddRange(ToolBarItemStructCollection tooValue)
	{
		for (int i = 0; i < tooValue.Count; i++)
		{
			Add(tooValue[i]);
		}
	}

	public bool Contains(ToolBarItemStruct tooValue)
	{
		return base.List.Contains(tooValue);
	}

	public void CopyTo(ToolBarItemStruct[] tooArray, int intIndex)
	{
		base.List.CopyTo(tooArray, intIndex);
	}

	public int IndexOf(ToolBarItemStruct tooValue)
	{
		return base.List.IndexOf(tooValue);
	}

	public void Insert(int intIndex, ToolBarItemStruct tooValue)
	{
		base.List.Insert(intIndex, tooValue);
	}

	public new ToolBarItemStructEnumerator GetEnumerator()
	{
		return new ToolBarItemStructEnumerator(this);
	}

	public void Remove(ToolBarItemStruct tooValue)
	{
		base.List.Remove(tooValue);
	}
}
