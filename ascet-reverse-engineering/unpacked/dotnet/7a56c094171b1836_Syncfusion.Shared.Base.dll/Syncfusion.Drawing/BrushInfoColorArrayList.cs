using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using Syncfusion.Collections;

namespace Syncfusion.Drawing;

[Serializable]
[TypeConverter(typeof(ColorListConverter))]
[Editor(typeof(BrushInfoColorsCollectionEditor), typeof(UITypeEditor))]
public class BrushInfoColorArrayList : ArrayListExt, ISerializable
{
	public new Color this[int index]
	{
		get
		{
			return (Color)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	internal bool Freeze
	{
		get
		{
			return base.ForceFixedSize = true;
		}
		set
		{
			base.ForceFixedSize = value;
			base.ForceReadOnly = value;
		}
	}

	public BrushInfoColorArrayList()
	{
	}

	public BrushInfoColorArrayList(Color[] colors)
	{
		AddRange(colors);
	}

	protected BrushInfoColorArrayList(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			Add((Color)enumerator.Value);
		}
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		for (int i = 0; i < Count; i++)
		{
			info.AddValue(i.ToString(), this[i]);
		}
	}

	internal void Add(Color color)
	{
		Add((object)color);
	}

	internal void AddRange(Color[] colors)
	{
		base.AddRange(colors);
	}
}
