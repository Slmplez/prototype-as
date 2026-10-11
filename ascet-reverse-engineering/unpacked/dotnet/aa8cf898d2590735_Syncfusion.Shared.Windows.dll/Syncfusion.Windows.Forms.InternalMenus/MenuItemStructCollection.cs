using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
public class MenuItemStructCollection : CollectionBase
{
	public class MenuItemStructEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public MenuItemStruct Current => (MenuItemStruct)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public MenuItemStructEnumerator(MenuItemStructCollection menMappings)
		{
			iEnLocal = menMappings;
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

	private string menuName = "";

	public string MenuName
	{
		get
		{
			if (menuName == "")
			{
				menuName = "Default Menu";
			}
			return menuName;
		}
		set
		{
			menuName = value;
		}
	}

	public MenuItemStruct this[int intIndex]
	{
		get
		{
			return (MenuItemStruct)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public MenuItemStructCollection()
	{
	}

	public MenuItemStructCollection(MenuItemStructCollection menValue)
	{
		AddRange(menValue);
	}

	public MenuItemStructCollection(MenuItemStruct[] menValue)
	{
		AddRange(menValue);
	}

	public int Add(MenuItemStruct menValue)
	{
		return base.List.Add(menValue);
	}

	public void AddRange(MenuItemStruct[] menValue)
	{
		for (int i = 0; i < menValue.Length; i++)
		{
			Add(menValue[i]);
		}
	}

	public void AddRange(MenuItemStructCollection menValue)
	{
		for (int i = 0; i < menValue.Count; i++)
		{
			Add(menValue[i]);
		}
	}

	public bool Contains(MenuItemStruct menValue)
	{
		return base.List.Contains(menValue);
	}

	public void CopyTo(MenuItemStruct[] menArray, int intIndex)
	{
		base.List.CopyTo(menArray, intIndex);
	}

	public int IndexOf(MenuItemStruct menValue)
	{
		return base.List.IndexOf(menValue);
	}

	public void Insert(int intIndex, MenuItemStruct menValue)
	{
		base.List.Insert(intIndex, menValue);
	}

	public new MenuItemStructEnumerator GetEnumerator()
	{
		return new MenuItemStructEnumerator(this);
	}

	public void Remove(MenuItemStruct menValue)
	{
		base.List.Remove(menValue);
	}
}
