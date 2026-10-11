using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace Etas.Base.Shared;

internal static class CSharpFormatter
{
	public static string FormatMethod(MethodBase method)
	{
		string text = FormatType(method.DeclaringType);
		IEnumerable<string> values = from p in method.GetParameters()
			select FormatTypeOrParam(p.ParameterType);
		string text2 = "(" + string.Join(",", values) + ")";
		string text3 = (method.IsConstructor ? "" : GenericPars(method.GetGenericArguments()));
		return text + "." + method.Name + text3 + text2;
	}

	public static string FormatType(Type type)
	{
		IList<Type> nesting = GetNesting(type);
		Type[] genericArguments = type.GetGenericArguments();
		IEnumerable<IEnumerable<Type>> second = Split(genericArguments, nesting.Select((Type t) => t.GetGenericArguments().Length));
		IEnumerable<string> values = nesting.Zip(second, (Type t, IEnumerable<Type> a) => UnmangledName(t.Name) + GenericPars(a));
		return nesting[0].Namespace + "." + string.Join("+", values);
	}

	private static IEnumerable<IEnumerable<T>> Split<T>(IEnumerable<T> items, IEnumerable<int> runs)
	{
		List<IEnumerable<T>> list = new List<IEnumerable<T>>();
		IEnumerator<T> enumerator = items.GetEnumerator();
		int i = 0;
		foreach (int run in runs)
		{
			List<T> list2 = new List<T>();
			list.Add(list2);
			for (; i < run; i++)
			{
				if (!enumerator.MoveNext())
				{
					break;
				}
				list2.Add(enumerator.Current);
			}
		}
		return list;
	}

	private static string GenericPars(IEnumerable<Type> args)
	{
		string text = string.Join(",", args.Select(FormatTypeOrParam));
		if (text != "")
		{
			text = "<" + text + ">";
		}
		return text;
	}

	private static string FormatTypeOrParam(Type type)
	{
		if (type.IsGenericParameter)
		{
			return type.Name;
		}
		return FormatType(type);
	}

	private static IList<Type> GetNesting(Type type)
	{
		List<Type> list = new List<Type>();
		while (type.IsNested)
		{
			list.Add(type);
			type = type.DeclaringType;
		}
		list.Add(type);
		list.Reverse();
		return list;
	}

	private static string UnmangledName(string typeName)
	{
		int num = typeName.IndexOf("`");
		if (num < 0)
		{
			return typeName;
		}
		return typeName.Substring(0, num);
	}
}
