using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Etas.Base.Shared.PluginLoader;

public class ReflectionPluginAndDllLoader
{
	protected class TypeFilter
	{
		public Type PluginAssemblyTagAttribute { get; private set; }

		public Type PluginClassTagAttribute { get; private set; }

		public Type PluginInterfaceType { get; private set; }

		public TypeFilter(Type pluginAssemblyTagAttribute, Type pluginClassTagAttribute, Type pluginInterfaceType)
		{
			PluginAssemblyTagAttribute = pluginAssemblyTagAttribute;
			PluginClassTagAttribute = pluginClassTagAttribute;
			PluginInterfaceType = pluginInterfaceType;
		}
	}

	public static List<Type> LoadPluginTypesByInterfaceLoadAllAssembliesIntoRuntime(Type pluginInterfaceType, string pluginDeploymentRootDirectroyAbsPath)
	{
		Dictionary<Type, List<Type>> dictionary = LoadPluginsAndAllAssembliesIntoRuntime_ClassTypesFiltered("INCA Generic Assembly Plug-in Loader", suppressLogging: false, new TypeFilter[1]
		{
			new TypeFilter(null, null, pluginInterfaceType)
		}, pluginDeploymentRootDirectroyAbsPath);
		if (dictionary.Count != 1)
		{
			return new List<Type>();
		}
		return dictionary.Values.First();
	}

	public static Dictionary<Type, List<Type>> LoadPluginTypesByMultipleInterfacesLoadAllAssembliesIntoRuntime(Type[] pluginInterfaceTypes, string pluginDeploymentRootDirectroyAbsPath)
	{
		return LoadPluginsAndAllAssembliesIntoRuntime_ClassTypesFiltered("INCA Generic Assembly Plug-in Loader", suppressLogging: false, pluginInterfaceTypes.Select((Type pt) => new TypeFilter(null, null, pt)).ToArray(), pluginDeploymentRootDirectroyAbsPath);
	}

	public static List<Type> LoadOHICfgPluginTypesByTagsLoadAllAssembliesIntoRuntime(Type pluginAssemblyTagAttribute, Type pluginClassTagAttribute, Type pluginInterfaceType, string pluginDeploymentRootDirectroyAbsPath)
	{
		Dictionary<Type, List<Type>> dictionary = LoadPluginsAndAllAssembliesIntoRuntime_ClassTypesFiltered("OHI Config Framework", suppressLogging: false, new TypeFilter[1]
		{
			new TypeFilter(pluginAssemblyTagAttribute, pluginClassTagAttribute, pluginInterfaceType)
		}, pluginDeploymentRootDirectroyAbsPath);
		if (dictionary.Count != 1)
		{
			return new List<Type>();
		}
		return dictionary.Values.First();
	}

	public static object CreatePluginInstanceByDefaultConstructor(Type PluginClassType)
	{
		ConstructorInfo constructor = PluginClassType.GetConstructor(new Type[0]);
		object obj = null;
		if (constructor != null)
		{
			try
			{
				obj = constructor.Invoke(new object[0]);
			}
			catch (Exception exception)
			{
				Logger.LogException(exception);
			}
		}
		else
		{
			Logger.LogError("Plug-in Type has no default constructor: " + PluginClassType.ToString());
		}
		if (obj == null)
		{
			Logger.LogError("Plug-in Type cannot be instantiaded: " + PluginClassType.ToString());
		}
		else
		{
			Logger.LogInfo("Plug-in Type instantiated: " + PluginClassType.ToString());
		}
		return obj;
	}

	private static Dictionary<Type, List<Type>> LoadPluginsAndAllAssembliesIntoRuntime_ClassTypesFiltered(string pluginHostNameForLogging, bool suppressLogging, TypeFilter[] typeFilters, string PluginDeploymentRootDirectroyAbsPath)
	{
		List<string> list = new List<string>();
		Dictionary<Type, List<Type>> dictionary = new Dictionary<Type, List<Type>>();
		if (Directory.Exists(PluginDeploymentRootDirectroyAbsPath))
		{
			list = Pass1_FindDlls(PluginDeploymentRootDirectroyAbsPath);
		}
		AssemblyResolverINCA70.AddAssemblies(list);
		foreach (string item in list)
		{
			try
			{
				Assembly assembly = Assembly.LoadFrom(item);
				Type[] array = null;
				foreach (TypeFilter typeFilter in typeFilters)
				{
					if (typeFilter.PluginAssemblyTagAttribute != null)
					{
						object[] customAttributes = assembly.GetCustomAttributes(typeFilter.PluginAssemblyTagAttribute, inherit: false);
						if (customAttributes.Length <= 0)
						{
							continue;
						}
					}
					if (array == null)
					{
						array = assembly.GetExportedTypes();
					}
					Type[] array2 = array;
					foreach (Type type in array2)
					{
						if (!type.IsClass || type.IsAbstract || type.ContainsGenericParameters)
						{
							continue;
						}
						if (typeFilter.PluginClassTagAttribute != null)
						{
							object[] customAttributes2 = type.GetCustomAttributes(typeFilter.PluginClassTagAttribute, inherit: false);
							if (customAttributes2.Length <= 0)
							{
								continue;
							}
						}
						if (typeFilter.PluginInterfaceType != null && !typeFilter.PluginInterfaceType.IsAssignableFrom(type))
						{
							continue;
						}
						ConstructorInfo constructor = type.GetConstructor(new Type[0]);
						if (!(constructor == null))
						{
							Logger.LogInfo("Loaded plugin type '{0}' from dll '{1}'", type, item);
							if (!dictionary.TryGetValue(typeFilter.PluginInterfaceType, out var value))
							{
								value = new List<Type>();
								dictionary.Add(typeFilter.PluginInterfaceType, value);
							}
							value.Add(type);
						}
					}
				}
			}
			catch (Exception ex)
			{
				Logger.LogWarning("Couldn't load plugin dll '{0}': {1}", item, ex.ToString());
			}
		}
		return dictionary;
	}

	private static List<string> Pass1_FindDlls(string searchRootDirectroy)
	{
		List<string> list = new List<string>();
		HashSet<string> hashSet = new HashSet<string>();
		HashSet<string> hashSet2 = new HashSet<string>();
		Stack<string> stack = new Stack<string>();
		if (Directory.Exists(searchRootDirectroy))
		{
			Path.GetFullPath(searchRootDirectroy);
			stack.Push(searchRootDirectroy);
		}
		while (stack.Count > 0)
		{
			string path = stack.Pop();
			string[] files = Directory.GetFiles(path);
			foreach (string path2 in files)
			{
				if (Path.GetExtension(path2).Equals(".dll"))
				{
					string fullPath = Path.GetFullPath(path2);
					if (!hashSet.Contains(fullPath))
					{
						hashSet.Add(fullPath);
					}
				}
			}
			string[] directories = Directory.GetDirectories(path);
			foreach (string path3 in directories)
			{
				string fullPath2 = Path.GetFullPath(path3);
				if (hashSet2.Add(fullPath2))
				{
					stack.Push(fullPath2);
				}
			}
		}
		return hashSet.ToList();
	}
}
