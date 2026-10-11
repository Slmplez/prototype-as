using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Reflection;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridListUtil
{
	private static MethodInfo mInfo;

	public static ListSortDirection GetSortDirection(IList list)
	{
		if (list is IBindingList && ((IBindingList)list).SupportsSorting)
		{
			return ((IBindingList)list).SortDirection;
		}
		return ListSortDirection.Ascending;
	}

	public static PropertyDescriptor GetSortProperty(IList list)
	{
		if (list is IBindingList && ((IBindingList)list).SupportsSorting)
		{
			return ((IBindingList)list).SortProperty;
		}
		return null;
	}

	public static void SetSort(IList list, PropertyDescriptor property, ListSortDirection sortDirection)
	{
		if (list is IBindingList && ((IBindingList)list).SupportsSorting)
		{
			((IBindingList)list).ApplySort(property, sortDirection);
		}
	}

	public static bool SupportsSort(IList list)
	{
		if (list is IBindingList)
		{
			return ((IBindingList)list).SupportsSorting;
		}
		return false;
	}

	public static bool GetAllowRemove(IList list)
	{
		if (list is IBindingList)
		{
			return ((IBindingList)list).AllowRemove;
		}
		if (list == null)
		{
			return false;
		}
		if (!list.IsReadOnly)
		{
			return !list.IsFixedSize;
		}
		return false;
	}

	public static bool PropertyDescriptorIsARelation(PropertyDescriptor prop)
	{
		if (typeof(IList).IsAssignableFrom(prop.PropertyType))
		{
			return !typeof(Array).IsAssignableFrom(prop.PropertyType);
		}
		return false;
	}

	public static DataRelation GetRelation(PropertyDescriptor pd)
	{
		if (pd.GetType().FullName == "System.Data.DataRelationPropertyDescriptor")
		{
			if (mInfo == null)
			{
				Type type = pd.GetType();
				PropertyInfo property = type.GetProperty("Relation", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.GetProperty | BindingFlags.IgnoreReturn);
				if (property != null)
				{
					mInfo = property.GetGetMethod(nonPublic: true);
				}
			}
			if (mInfo != null)
			{
				return mInfo.Invoke(pd, new object[0]) as DataRelation;
			}
		}
		return null;
	}

	internal static PropertyDescriptorCollection GetInstanceProperties(Type type, bool isCollection)
	{
		object obj = null;
		try
		{
			ConstructorInfo constructor = type.GetConstructor(new Type[0]);
			if (constructor != null)
			{
				obj = Activator.CreateInstance(type);
			}
		}
		catch (MissingMethodException e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		if (obj != null)
		{
			if (isCollection)
			{
				return GetItemProperties(obj);
			}
			return TypeDescriptor.GetProperties(obj, new Attribute[1]
			{
				new BrowsableAttribute(browsable: true)
			}, noCustomTypeDesc: false);
		}
		return TypeDescriptor.GetProperties(type, new Attribute[1]
		{
			new BrowsableAttribute(browsable: true)
		});
	}

	public static PropertyDescriptorCollection GetItemProperties(Type type)
	{
		if (type == null)
		{
			return new PropertyDescriptorCollection(new PropertyDescriptor[0]);
		}
		if (typeof(ITypedList).IsAssignableFrom(type))
		{
			return GetInstanceProperties(type, isCollection: true);
		}
		if (typeof(Array).IsAssignableFrom(type))
		{
			return GetInstanceProperties(type.GetElementType(), isCollection: false);
		}
		PropertyInfo[] properties = type.GetProperties();
		for (int i = 0; i < properties.Length; i++)
		{
			if ("Item".Equals(properties[i].Name) && properties[i].PropertyType != typeof(object))
			{
				return GetInstanceProperties(properties[i].PropertyType, isCollection: false);
			}
		}
		return PropertyDescriptorCollection.Empty;
	}

	public static PropertyDescriptorCollection GetItemProperties(object dataSource)
	{
		if (dataSource == null)
		{
			return new PropertyDescriptorCollection(new PropertyDescriptor[0]);
		}
		IList list = dataSource as IList;
		if (list == null && dataSource is IListSource)
		{
			list = ((IListSource)dataSource).GetList();
		}
		if (dataSource is ITypedList)
		{
			return ((ITypedList)dataSource).GetItemProperties(null);
		}
		if (list is ITypedList)
		{
			return ((ITypedList)list).GetItemProperties(null);
		}
		if (list != null)
		{
			PropertyDescriptorCollection propertyDescriptorCollection = PropertyDescriptorCollection.Empty;
			if (list.Count > 0)
			{
				propertyDescriptorCollection = TypeDescriptor.GetProperties(list[0], new Attribute[1]
				{
					new BrowsableAttribute(browsable: true)
				});
			}
			if (propertyDescriptorCollection.Count == 0)
			{
				propertyDescriptorCollection = GetItemProperties(list.GetType());
			}
			if (propertyDescriptorCollection.Count > 0)
			{
				return propertyDescriptorCollection;
			}
		}
		return GetItemProperties(dataSource.GetType());
	}
}
