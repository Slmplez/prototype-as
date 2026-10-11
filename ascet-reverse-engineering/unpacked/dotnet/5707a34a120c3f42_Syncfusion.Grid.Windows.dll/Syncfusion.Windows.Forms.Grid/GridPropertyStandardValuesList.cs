using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridPropertyStandardValuesList : ArrayList, ITypedList
{
	private string name;

	private Type elementType;

	private PropertyDescriptorCollection pdc;

	private int maxLength = -1;

	internal string format = string.Empty;

	internal CultureInfo ci;

	public override object this[int index]
	{
		get
		{
			return base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public GridPropertyStandardValuesList(string name, Type elementType)
	{
		this.name = name;
		this.elementType = elementType;
	}

	public PropertyDescriptorCollection GetItemProperties(PropertyDescriptor[] listAccessors)
	{
		if (pdc == null)
		{
			PropertyDescriptor propertyDescriptor = new GridPropertyStandardValuesSelfPropertyDescriptor(this, name, elementType);
			pdc = new PropertyDescriptorCollection(new PropertyDescriptor[1] { propertyDescriptor });
		}
		return pdc;
	}

	public string GetListName(PropertyDescriptor[] listAccessors)
	{
		return name;
	}

	public int GetMaxLength(string format, CultureInfo ci)
	{
		if (maxLength == -1 || format != this.format || ci != this.ci)
		{
			maxLength = -1;
			this.format = format;
			this.ci = ci;
			for (int i = 0; i < Count; i++)
			{
				maxLength = Math.Max(ValueConvert.FormatValue(this[i], elementType, format, ci, null).Length, maxLength);
			}
		}
		return maxLength;
	}

	public override int Add(object value)
	{
		return base.Add(value);
	}

	public override void AddRange(ICollection c)
	{
		base.AddRange(c);
	}

	public override void Clear()
	{
		base.Clear();
	}

	public override void Insert(int index, object value)
	{
		base.Insert(index, value);
	}

	public override void InsertRange(int index, ICollection c)
	{
		base.InsertRange(index, c);
	}

	public override void Remove(object obj)
	{
		base.Remove(obj);
	}

	public override void RemoveAt(int index)
	{
		base.RemoveAt(index);
	}

	public override void RemoveRange(int index, int count)
	{
		base.RemoveRange(index, count);
	}
}
