using System;
using System.ComponentModel;
using System.Reflection;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridStyleInfoCustomPropertiesConverter))]
public class GridStyleInfoCustomProperties
{
	protected internal GridStyleInfo style;

	public GridStyleInfo StyleInfo
	{
		get
		{
			return style;
		}
		set
		{
			if (value != style && style != null)
			{
				value.ModifyStyle(style, StyleModifyType.Override);
			}
			style = value;
		}
	}

	protected GridStyleInfoCustomProperties(GridStyleInfo style)
	{
		this.style = style;
	}

	protected GridStyleInfoCustomProperties()
	{
		style = new GridStyleInfo();
	}

	private static StyleInfoProperty _CreateStyleInfoProperty(Type componentType, StaticData sd, Type type, string propertyName, StyleInfoPropertyOptions propertyOptions)
	{
		return sd.CreateStyleInfoProperty(type, propertyName, 0, makeBitValue: false, componentType, propertyOptions);
	}

	protected static StyleInfoProperty CreateStyleInfoProperty(Type componentType, Type type, string propertyName)
	{
		return _CreateStyleInfoProperty(componentType, GridStyleInfoStore.StaticData, type, propertyName, StyleInfoPropertyOptions.All);
	}

	protected static StyleInfoProperty CreateStyleInfoProperty(Type componentType, string propertyName)
	{
		PropertyInfo property = componentType.GetProperty(propertyName);
		Type propertyType = property.PropertyType;
		return _CreateStyleInfoProperty(componentType, GridStyleInfoStore.StaticData, propertyType, propertyName, StyleInfoPropertyOptions.All);
	}

	protected static StyleInfoProperty CreateStyleInfoProperty(Type componentType, string propertyName, StyleInfoPropertyOptions propertyOptions)
	{
		PropertyInfo property = componentType.GetProperty(propertyName);
		Type propertyType = property.PropertyType;
		return _CreateStyleInfoProperty(componentType, GridStyleInfoStore.StaticData, propertyType, propertyName, propertyOptions);
	}

	protected static StyleInfoProperty CreateStyleInfoProperty(Type componentType, Type type, string propertyName, StyleInfoPropertyOptions propertyOptions)
	{
		return _CreateStyleInfoProperty(componentType, GridStyleInfoStore.StaticData, type, propertyName, propertyOptions);
	}
}
