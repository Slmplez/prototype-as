using System;
using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridPropertyStandardValuesSelfPropertyDescriptor : PropertyDescriptor
{
	private Type type;

	private GridPropertyStandardValuesList parent;

	public override Type PropertyType => type;

	public override bool IsReadOnly => true;

	public override Type ComponentType => type;

	public override bool IsBrowsable => true;

	public GridPropertyStandardValuesSelfPropertyDescriptor(GridPropertyStandardValuesList parent, string name, Type type)
		: base(name, null)
	{
		this.parent = parent;
		this.type = type;
	}

	public override bool ShouldSerializeValue(object component)
	{
		return false;
	}

	public override void SetValue(object component, object value)
	{
	}

	public override void ResetValue(object component)
	{
	}

	public override object GetValue(object component)
	{
		return ValueConvert.FormatValue(component, type, parent.format, parent.ci, null);
	}

	public override bool CanResetValue(object component)
	{
		return false;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool Equals(object other)
	{
		return object.ReferenceEquals(this, other);
	}
}
