using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
public class ActionInfoCollection : CollectionBase
{
	public class ActionInfoEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public ActionInfo Current => (ActionInfo)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public ActionInfoEnumerator(ActionInfoCollection actMappings)
		{
			iEnLocal = actMappings;
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

	public ActionInfo this[int intIndex]
	{
		get
		{
			return (ActionInfo)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public ActionInfoCollection()
	{
	}

	public ActionInfoCollection(ActionInfoCollection actValue)
	{
		AddRange(actValue);
	}

	public ActionInfoCollection(ActionInfo[] actValue)
	{
		AddRange(actValue);
	}

	public int Add(ActionInfo actValue)
	{
		return base.List.Add(actValue);
	}

	public void AddRange(ActionInfo[] actValue)
	{
		for (int i = 0; i < actValue.Length; i++)
		{
			Add(actValue[i]);
		}
	}

	public void AddRange(ActionInfoCollection actValue)
	{
		for (int i = 0; i < actValue.Count; i++)
		{
			Add(actValue[i]);
		}
	}

	public bool Contains(ActionInfo actValue)
	{
		return base.List.Contains(actValue);
	}

	public void CopyTo(ActionInfo[] actArray, int intIndex)
	{
		base.List.CopyTo(actArray, intIndex);
	}

	public int IndexOf(ActionInfo actValue)
	{
		return base.List.IndexOf(actValue);
	}

	public void Insert(int intIndex, ActionInfo actValue)
	{
		base.List.Insert(intIndex, actValue);
	}

	public new ActionInfoEnumerator GetEnumerator()
	{
		return new ActionInfoEnumerator(this);
	}

	public void Remove(ActionInfo actValue)
	{
		base.List.Remove(actValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}
}
