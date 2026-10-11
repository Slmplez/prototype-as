using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Reflection;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Collections;

public class ListUtil
{
	private static MethodInfo mInfo = null;

	private static MethodInfo mInfo2 = null;

	private static MethodInfo mInfo3 = null;

	private static Hashtable primitiveTypesTable = null;

	private static Hashtable notfoundKeys;

	private static Hashtable PrimitiveTypesTable
	{
		get
		{
			if (primitiveTypesTable == null)
			{
				primitiveTypesTable = new Hashtable();
			}
			return primitiveTypesTable;
		}
	}

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
		if (prop.PropertyType != typeof(string) && typeof(IEnumerable).IsAssignableFrom(prop.PropertyType))
		{
			return !typeof(Array).IsAssignableFrom(prop.PropertyType);
		}
		return false;
	}

	public static bool IsEqualItemProperties(PropertyDescriptorCollection x, PropertyDescriptorCollection y)
	{
		if (x.Count != y.Count)
		{
			return false;
		}
		for (int i = 0; i < x.Count; i++)
		{
			if (!x[i].Equals(y[i]))
			{
				return false;
			}
		}
		return true;
	}

	public static DataRelation GetDataRelation(PropertyDescriptor pd)
	{
		if (pd != null && pd.GetType().FullName == "System.Data.DataRelationPropertyDescriptor")
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

	public static PropertyDescriptorCollection GetRelatedItemProperties(PropertyDescriptor pd)
	{
		string name;
		return GetRelatedItemProperties(pd, out name);
	}

	public static PropertyDescriptorCollection GetRelatedItemProperties(PropertyDescriptor pd, out string name)
	{
		object arrayList;
		return GetRelatedItemProperties(null, pd, out name, out arrayList);
	}

	public static PropertyDescriptorCollection GetRelatedItemProperties(object parentItemList, PropertyDescriptor pd, out string name, out object arrayList)
	{
		arrayList = null;
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
			if (mInfo != null && mInfo.Invoke(pd, new object[0]) is DataRelation dataRelation)
			{
				name = dataRelation.ChildTable.TableName;
				return GetItemProperties(dataRelation.ChildTable);
			}
		}
		if (pd.GetType().FullName == "System.Data.DataTablePropertyDescriptor")
		{
			if (mInfo2 == null)
			{
				Type type2 = pd.GetType();
				PropertyInfo property2 = type2.GetProperty("Table", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.GetProperty | BindingFlags.IgnoreReturn);
				if (property2 != null)
				{
					mInfo2 = property2.GetGetMethod(nonPublic: true);
				}
			}
			if (mInfo2 != null)
			{
				DataTable dataTable = mInfo2.Invoke(pd, new object[0]) as DataTable;
				name = dataTable.TableName;
				return GetItemProperties(dataTable);
			}
		}
		if (parentItemList != null && pd.PropertyType != typeof(string) && typeof(IEnumerable).IsAssignableFrom(pd.PropertyType))
		{
			IEnumerable enumerable = parentItemList as IEnumerable;
			int num = 0;
			foreach (object item in enumerable)
			{
				if (++num <= 20)
				{
					if (pd.GetValue(item) is IEnumerable enumerable2 && enumerable2.GetEnumerator().MoveNext())
					{
						name = pd.Name;
						arrayList = enumerable2;
						return GetItemProperties(enumerable2);
					}
					continue;
				}
				break;
			}
		}
		if (!pd.PropertyType.IsInterface && !pd.PropertyType.IsAbstract && IsComplexType(pd))
		{
			PropertyDescriptorCollection itemProperties = GetItemProperties(pd.PropertyType);
			if (itemProperties["IsMarshalByRef"] == null)
			{
				name = pd.PropertyType.Name;
				return itemProperties;
			}
		}
		if (pd.PropertyType.IsGenericType)
		{
			PropertyDescriptorCollection itemProperties2 = GetItemProperties(pd.PropertyType);
			if (itemProperties2["IsMarshalByRef"] == null)
			{
				name = pd.PropertyType.Name;
				return itemProperties2;
			}
		}
		name = "";
		return null;
	}

	public static bool IsComplexType(PropertyDescriptor pd)
	{
		if (pd.ComponentType == typeof(Type))
		{
			return false;
		}
		Type propertyType = pd.PropertyType;
		return IsComplexType(propertyType);
	}

	public static bool IsComplexType(Type t)
	{
		Type underlyingType = NullableHelper.GetUnderlyingType(t);
		if (underlyingType != null)
		{
			t = underlyingType;
		}
		if (t != typeof(object) && t != typeof(decimal) && t != typeof(DateTime) && t != typeof(Type) && t != typeof(Color) && t != typeof(string) && t != typeof(Guid) && t.BaseType != typeof(Enum) && !t.IsPrimitive)
		{
			return true;
		}
		if (primitiveTypesTable != null && primitiveTypesTable.ContainsKey(t))
		{
			return false;
		}
		return false;
	}

	public static void RegisterNonComplexType(Type t)
	{
		PrimitiveTypesTable[t] = t;
	}

	public static bool GetStandardValuesExclusive(PropertyDescriptor pd)
	{
		_ = pd.PropertyType;
		return pd.Converter.GetStandardValuesExclusive();
	}

	public static string GetListName(object list)
	{
		if (list is ITypedList)
		{
			return ((ITypedList)list).GetListName(null);
		}
		return null;
	}

	public static DataRelation GetRelatedDataRelation(PropertyDescriptor pd)
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
			if (mInfo != null && mInfo.Invoke(pd, new object[0]) is DataRelation result)
			{
				return result;
			}
		}
		return null;
	}

	public static IList GetRelatedList(PropertyDescriptor pd)
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
			if (mInfo != null && mInfo.Invoke(pd, new object[0]) is DataRelation dataRelation)
			{
				return dataRelation.ChildTable.DefaultView;
			}
		}
		if (pd.GetType().FullName == "System.Data.DataTablePropertyDescriptor")
		{
			if (mInfo2 == null)
			{
				Type type2 = pd.GetType();
				PropertyInfo property2 = type2.GetProperty("Table", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.GetProperty | BindingFlags.IgnoreReturn);
				if (property2 != null)
				{
					mInfo2 = property2.GetGetMethod(nonPublic: true);
				}
			}
			if (mInfo2 != null)
			{
				return (mInfo2.Invoke(pd, new object[0]) as DataTable).DefaultView;
			}
		}
		return null;
	}

	public static DataColumn GetDataColumn(PropertyDescriptor pd)
	{
		if (pd != null && pd.GetType().FullName == "System.Data.DataColumnPropertyDescriptor")
		{
			if (mInfo3 == null)
			{
				Type type = pd.GetType();
				PropertyInfo property = type.GetProperty("Column", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.GetProperty | BindingFlags.IgnoreReturn);
				if (property != null)
				{
					mInfo3 = property.GetGetMethod(nonPublic: true);
				}
			}
			if (mInfo3 != null)
			{
				return mInfo3.Invoke(pd, new object[0]) as DataColumn;
			}
		}
		return null;
	}

	public static DataTable GetDataTable(object list)
	{
		if (list is DataTable)
		{
			return (DataTable)list;
		}
		if (list is DataView)
		{
			return ((DataView)list).Table;
		}
		return null;
	}

	public static DataTable GetRelatedDataTable(PropertyDescriptor pd)
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
			if (mInfo != null && mInfo.Invoke(pd, new object[0]) is DataRelation dataRelation)
			{
				return dataRelation.ChildTable;
			}
		}
		if (pd.GetType().FullName == "System.Data.DataTablePropertyDescriptor")
		{
			if (mInfo2 == null)
			{
				Type type2 = pd.GetType();
				PropertyInfo property2 = type2.GetProperty("Table", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.GetProperty | BindingFlags.IgnoreReturn);
				if (property2 != null)
				{
					mInfo2 = property2.GetGetMethod(nonPublic: true);
				}
			}
			if (mInfo2 != null)
			{
				return mInfo2.Invoke(pd, new object[0]) as DataTable;
			}
		}
		return null;
	}

	private static PropertyDescriptorCollection GetInstanceProperties(Type type, bool isCollection)
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
		return GetInstanceProperties(type, isCollection: false);
	}

	public static Type GetListItemType(object list)
	{
		if (list != null)
		{
			return GetListItemType(list.GetType());
		}
		return null;
	}

	public static Type GetListItemType(Type list)
	{
		PropertyInfo[] properties = list.GetProperties();
		for (int i = 0; i < properties.Length; i++)
		{
			if ("Item".Equals(properties[i].Name) && properties[i].PropertyType != typeof(object))
			{
				return properties[i].PropertyType;
			}
		}
		return null;
	}

	public static PropertyDescriptorCollection GetItemProperties(object dataSource)
	{
		if (dataSource == null)
		{
			return new PropertyDescriptorCollection(new PropertyDescriptor[0]);
		}
		IEnumerable enumerable = dataSource as IEnumerable;
		if (dataSource is IListSource)
		{
			enumerable = ((IListSource)dataSource).GetList();
		}
		if (dataSource is ITypedList)
		{
			return ((ITypedList)dataSource).GetItemProperties(null);
		}
		if (enumerable is ITypedList)
		{
			return ((ITypedList)enumerable).GetItemProperties(null);
		}
		if (enumerable != null)
		{
			PropertyDescriptorCollection propertyDescriptorCollection = PropertyDescriptorCollection.Empty;
			IEnumerator enumerator = enumerable.GetEnumerator();
			if (enumerator.MoveNext())
			{
				object current = enumerator.Current;
				propertyDescriptorCollection = TypeDescriptor.GetProperties(current, new Attribute[1]
				{
					new BrowsableAttribute(browsable: true)
				});
				if (propertyDescriptorCollection.Count == 0)
				{
					FieldInfo[] fields = current.GetType().GetFields(BindingFlags.Instance | BindingFlags.Public);
					if (fields.Length > 0)
					{
						propertyDescriptorCollection = CreateFieldWrapperPropertyDescriptors(current.GetType(), fields);
					}
				}
			}
			if (propertyDescriptorCollection.Count == 0)
			{
				propertyDescriptorCollection = GetItemProperties(enumerable.GetType());
			}
			if (propertyDescriptorCollection.Count > 0)
			{
				return propertyDescriptorCollection;
			}
		}
		return GetItemProperties(dataSource.GetType());
	}

	private static PropertyDescriptorCollection CreateFieldWrapperPropertyDescriptors(Type type, FieldInfo[] fields)
	{
		PropertyDescriptor[] array = new PropertyDescriptor[fields.Length];
		for (int i = 0; i < fields.Length; i++)
		{
			array[i] = new FieldInfoWrapperPropertyDescriptor(fields[i].Name, fields[i], null, type);
		}
		return new PropertyDescriptorCollection(array);
	}

	public static object GetItemValue(object dataSource, string valueMember, object item)
	{
		if (valueMember == null || valueMember == "")
		{
			return item;
		}
		PropertyDescriptorCollection itemProperties = GetItemProperties(dataSource);
		PropertyDescriptor propertyDescriptor = itemProperties[valueMember];
		if (propertyDescriptor == null)
		{
			string text = valueMember.ToLower();
			foreach (PropertyDescriptor item2 in itemProperties)
			{
				if (item2.Name.ToLower() == text)
				{
					propertyDescriptor = item2;
					break;
				}
			}
			if (propertyDescriptor == null)
			{
				if (notfoundKeys == null)
				{
					notfoundKeys = new Hashtable();
				}
				if (!notfoundKeys.Contains(valueMember))
				{
					string text2 = GetListName(dataSource);
					if (text2 == null)
					{
						text2 = ((item == null) ? dataSource.GetType().FullName : item.GetType().FullName);
					}
					Console.WriteLine("GridComboBoxCellModel.GetItemValue: {0} was not found in {1}", valueMember, text2);
					notfoundKeys.Add(valueMember, null);
				}
				return item;
			}
		}
		return propertyDescriptor.GetValue(item);
	}
}
