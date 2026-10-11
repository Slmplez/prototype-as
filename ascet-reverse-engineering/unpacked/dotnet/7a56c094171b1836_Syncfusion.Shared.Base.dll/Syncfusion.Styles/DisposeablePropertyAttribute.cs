using System;
using System.Reflection;

namespace Syncfusion.Styles;

[AttributeUsage(AttributeTargets.Property)]
public sealed class DisposeablePropertyAttribute : Attribute
{
	private bool disposeableProperty;

	public static readonly DisposeablePropertyAttribute Yes;

	public static readonly DisposeablePropertyAttribute No;

	public static readonly DisposeablePropertyAttribute Default;

	public bool DisposeableProperty => disposeableProperty;

	static DisposeablePropertyAttribute()
	{
		Yes = new DisposeablePropertyAttribute(disposeableProperty: true);
		No = new DisposeablePropertyAttribute(disposeableProperty: false);
		Default = Yes;
	}

	public DisposeablePropertyAttribute(bool disposeableProperty)
	{
		this.disposeableProperty = disposeableProperty;
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}

	public override int GetHashCode()
	{
		return disposeableProperty.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj is DisposeablePropertyAttribute disposeablePropertyAttribute)
		{
			return disposeablePropertyAttribute.DisposeableProperty == disposeableProperty;
		}
		return false;
	}

	public static bool IsDisposeableProperty(PropertyInfo info)
	{
		DisposeablePropertyAttribute disposeablePropertyAttribute = Default;
		if (info != null && info.IsDefined(typeof(DisposeablePropertyAttribute), inherit: true))
		{
			object[] customAttributes = info.GetCustomAttributes(typeof(DisposeablePropertyAttribute), inherit: true);
			disposeablePropertyAttribute = (DisposeablePropertyAttribute)customAttributes[0];
		}
		return disposeablePropertyAttribute.DisposeableProperty;
	}
}
