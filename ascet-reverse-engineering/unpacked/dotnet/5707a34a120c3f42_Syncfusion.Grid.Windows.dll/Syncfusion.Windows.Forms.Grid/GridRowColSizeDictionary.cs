using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridRowColSizeDictionaryTypeConverter))]
public class GridRowColSizeDictionary : IGridRowColSizeDictionary, ISerializable
{
	internal GridIndexDictionary innerDict = new GridIndexDictionary(typeof(int));

	internal bool isModified;

	public bool Modified
	{
		get
		{
			return isModified;
		}
		set
		{
			isModified = value;
		}
	}

	[DocumentationExclude]
	public GridIndexDictionary InnerDict => innerDict;

	public int this[int index]
	{
		get
		{
			if (!innerDict.Lookup(index, out int result))
			{
				return -1;
			}
			return result;
		}
		set
		{
			if (value >= 0)
			{
				innerDict[index] = value;
			}
			else
			{
				innerDict.Remove(index);
			}
			isModified = true;
		}
	}

	public GridRowColSizeDictionary()
	{
	}

	public void ResetModified()
	{
		isModified = false;
	}

	protected GridRowColSizeDictionary(SerializationInfo info, StreamingContext context)
	{
		innerDict = (GridIndexDictionary)info.GetValue("Dictionary", typeof(GridIndexDictionary));
		bool flag = true;
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Name == "Modified")
			{
				flag = Convert.ToBoolean(enumerator.Value);
			}
		}
		isModified = flag;
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Dictionary", innerDict);
		info.AddValue("Modified", isModified);
	}

	public void MoveItems(int from, int count, int dest)
	{
		innerDict.MoveIndex(from, count, dest);
	}

	public void RemoveItems(int from, int count)
	{
		innerDict.RemoveIndex(from, count);
	}

	public void InsertItems(int index, int count)
	{
		innerDict.InsertIndex(index, count);
	}
}
