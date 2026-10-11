using System;
using System.Collections;
using System.Runtime.InteropServices;

namespace de.etas.types;

[Serializable]
[ComVisible(false)]
public class Set : ArrayList
{
	public Set()
	{
	}

	public Set(object[] obj)
		: this(obj.Length)
	{
		for (int i = 0; i < obj.Length; i++)
		{
			Add(obj[i]);
		}
	}

	public Set(int cap)
		: base(cap)
	{
	}

	public virtual void add(Set s)
	{
		if (s == null)
		{
			return;
		}
		int count = s.Count;
		for (int i = 0; i < count; i++)
		{
			object obj = s[i];
			if (!Contains(obj))
			{
				Add(obj);
			}
		}
	}

	public virtual bool add(object x)
	{
		if (x == null)
		{
			return false;
		}
		if (Contains(x))
		{
			return false;
		}
		Add(x);
		return true;
	}

	public bool contains(ArrayList v)
	{
		if (v == null)
		{
			return true;
		}
		int count = v.Count;
		int num = 0;
		bool flag;
		for (flag = true; flag && num < count; flag = Contains(v[num++]))
		{
		}
		return flag;
	}

	public virtual bool containsOneElement(ArrayList v)
	{
		if (v == null)
		{
			return true;
		}
		int count = v.Count;
		int num = 0;
		bool flag = v.Count == 0;
		while (!flag && num < count)
		{
			flag = Contains(v[num++]);
		}
		return flag;
	}

	public virtual Set minus(Set s)
	{
		if (s == null)
		{
			return this;
		}
		Set set = (Set)Clone();
		int count = s.Count;
		for (int i = 0; i < count; i++)
		{
			object obj = s[i];
			set.Remove(obj);
		}
		return set;
	}
}
