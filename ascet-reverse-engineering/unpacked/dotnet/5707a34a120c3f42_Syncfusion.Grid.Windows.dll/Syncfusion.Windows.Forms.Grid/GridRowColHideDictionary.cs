using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridRowColHideDictionaryTypeConverter))]
public class GridRowColHideDictionary : IGridRowColHideDictionary, ISerializable
{
	internal GridIndexDictionary innerDict = new GridIndexDictionary(typeof(bool));

	[DocumentationExclude]
	public GridIndexDictionary InnerDict => innerDict;

	public bool Modified => innerDict.Count > 0;

	public bool this[int index]
	{
		get
		{
			object obj;
			return innerDict.Lookup(index, out obj);
		}
		set
		{
			if (value)
			{
				innerDict[index] = value;
			}
			else
			{
				innerDict.Remove(index);
			}
		}
	}

	public GridRowColHideDictionary()
	{
	}

	void IGridRowColHideDictionary.ResetModified()
	{
	}

	protected GridRowColHideDictionary(SerializationInfo info, StreamingContext context)
	{
		innerDict = (GridIndexDictionary)info.GetValue("Dictionary", typeof(GridIndexDictionary));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Dictionary", innerDict);
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
