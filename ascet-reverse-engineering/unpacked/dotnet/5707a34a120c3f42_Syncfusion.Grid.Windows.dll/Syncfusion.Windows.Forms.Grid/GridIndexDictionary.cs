using System;
using System.Collections;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Collections;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridIndexDictionary : TypedDictionaryBase, ICloneable, ISerializable
{
	private int smallestKey = -1;

	private int largestKey = -1;

	internal Type memberType;

	[DocumentationExclude]
	public Type MemberType => memberType;

	public object this[int key]
	{
		get
		{
			if (base.Dictionary.Contains(key))
			{
				return base.Dictionary[key];
			}
			return null;
		}
		set
		{
			base.Dictionary[key] = value;
		}
	}

	public int SmallestKey => smallestKey;

	public int LargestKey => largestKey;

	[DocumentationExclude]
	public Hashtable GetHashTable()
	{
		return InnerHashtable;
	}

	public GridIndexDictionary(Type memberType)
	{
		this.memberType = memberType;
	}

	protected GridIndexDictionary(Hashtable hashtable, Type memberType)
	{
		InnerHashtable = hashtable;
		this.memberType = memberType;
	}

	protected GridIndexDictionary(SerializationInfo info, StreamingContext context)
	{
		smallestKey = info.GetInt32("SmallestKey");
		largestKey = info.GetInt32("LargestKey");
		object value = info.GetValue("MemberType", typeof(object));
		if (value is string)
		{
			memberType = ValueConvert.GetType((string)value);
		}
		else
		{
			memberType = (Type)value;
		}
		int @int = info.GetInt32("Count");
		Hashtable hashtable = new Hashtable(@int);
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (char.IsDigit(enumerator.Name[0]))
			{
				hashtable[Convert.ToInt32(enumerator.Name)] = Convert.ChangeType(enumerator.Value, memberType);
			}
		}
		InnerHashtable = hashtable;
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		Hashtable innerHashtable = InnerHashtable;
		info.AddValue("SmallestKey", smallestKey);
		info.AddValue("LargestKey", largestKey);
		info.AddValue("Count", innerHashtable.Count);
		info.AddValue("MemberType", ValueConvert.GetTypeName(memberType));
		foreach (object key in innerHashtable.Keys)
		{
			info.AddValue(key.ToString(), innerHashtable[key]);
		}
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public GridIndexDictionary Clone()
	{
		return new GridIndexDictionary((Hashtable)InnerHashtable.Clone(), memberType);
	}

	public void Add(int key, object value)
	{
		base.Dictionary.Add(key, value);
	}

	public bool Contains(int key)
	{
		return base.Dictionary.Contains(key);
	}

	public void CopyTo(object[] array, int index)
	{
		CopyTo((Array)array, index);
	}

	public void Remove(int key)
	{
		base.Dictionary.Remove(key);
	}

	public void InsertIndex(int index, int count)
	{
		Hashtable hashtable = new Hashtable(base.Count);
		smallestKey = (largestKey = -1);
		foreach (DictionaryEntry item in base.Dictionary)
		{
			int num = (int)item.Key;
			if (num < index)
			{
				hashtable[num] = item.Value;
				CheckMinMax(num);
			}
			else
			{
				hashtable[num + count] = item.Value;
				CheckMinMax(num + count);
			}
		}
		InnerHashtable = hashtable;
	}

	public void RemoveIndex(int from, int count)
	{
		int num = from + count - 1;
		smallestKey = (largestKey = -1);
		Hashtable hashtable = new Hashtable(base.Count);
		foreach (DictionaryEntry item in base.Dictionary)
		{
			int num2 = (int)item.Key;
			if (num2 < from)
			{
				hashtable[num2] = item.Value;
				CheckMinMax(num2);
			}
			else if (num2 > num)
			{
				hashtable[num2 - count] = item.Value;
				CheckMinMax(num2 - count);
			}
		}
		InnerHashtable = hashtable;
	}

	public void MoveIndex(int from, int count, int dest)
	{
		int num = from + count - 1;
		smallestKey = (largestKey = -1);
		Hashtable hashtable = new Hashtable(base.Count);
		foreach (DictionaryEntry item in base.Dictionary)
		{
			int num2 = (int)item.Key;
			int num3 = -1;
			if ((num2 < dest && num2 < from) || (num2 >= dest + count && num2 > num))
			{
				num3 = num2;
			}
			else if (num2 >= from && num2 <= num)
			{
				num3 = num2 - from + dest;
			}
			else if (num2 >= dest && num2 < from)
			{
				num3 = num2 + count;
			}
			else
			{
				if (num2 >= dest + count || num2 <= num)
				{
					throw new ArgumentOutOfRangeException();
				}
				num3 = num2 - count;
			}
			hashtable[num3] = item.Value;
			CheckMinMax(num3);
		}
		InnerHashtable = hashtable;
	}

	private void CheckMinMax()
	{
		smallestKey = (largestKey = -1);
		foreach (DictionaryEntry item in base.Dictionary)
		{
			CheckMinMax((int)item.Key);
		}
	}

	private void CheckMinMax(int key)
	{
		if (key > largestKey)
		{
			largestKey = key;
		}
		if (key < smallestKey || smallestKey == -1)
		{
			smallestKey = key;
		}
	}

	protected override void OnInsert(object key, object value)
	{
		CheckMinMax((int)key);
	}

	protected override void OnRemove(object key, object value)
	{
		int num = (int)key;
		if (num == largestKey || num == smallestKey)
		{
			CheckMinMax();
		}
	}

	protected override void OnSet(object key, object oldValue, object newValue)
	{
	}

	protected override void OnValidate(object key, object value)
	{
		if ((int)key < 0)
		{
			throw new ArgumentException("negative key");
		}
	}

	public bool Lookup(int key, out int result)
	{
		if (Contains(key))
		{
			object obj = this[key];
			if (obj is int)
			{
				result = (int)obj;
				return true;
			}
		}
		result = 0;
		return false;
	}

	public bool Lookup(int key, out float result)
	{
		if (Contains(key))
		{
			object obj = this[key];
			if (obj is float)
			{
				result = (float)obj;
				return true;
			}
		}
		result = 0f;
		return false;
	}

	public bool Lookup(int key, out object obj)
	{
		if (Contains(key))
		{
			obj = this[key];
			return true;
		}
		obj = null;
		return false;
	}
}
