using System;
using System.Reflection;

namespace Syncfusion.ComponentModel;

public sealed class AmbientHelper
{
	public static bool GetAmbientValue(object instance, string nameOfProperty, Type retType, out object retValue)
	{
		retValue = null;
		if (instance != null && nameOfProperty != null && nameOfProperty.Length != 0)
		{
			Type type = instance.GetType();
			PropertyInfo property = type.GetProperty(nameOfProperty);
			if (property != null)
			{
				object value;
				try
				{
					value = property.GetValue(instance, new object[0]);
				}
				catch (TargetException)
				{
					return false;
				}
				catch (TargetParameterCountException)
				{
					return false;
				}
				if (value.GetType() == retType)
				{
					retValue = value;
					return true;
				}
			}
		}
		return false;
	}
}
