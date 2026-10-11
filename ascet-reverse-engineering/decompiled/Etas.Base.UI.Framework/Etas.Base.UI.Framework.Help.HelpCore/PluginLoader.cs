using System;
using System.Reflection;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework.Help.HelpCore;

public sealed class PluginLoader<T>
{
	public T LoadFromAssembly(string path)
	{
		T result = default(T);
		try
		{
			result = LoadFromAssembly(Assembly.LoadFrom(path));
			return result;
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while loading {0} instance from assembly at {1}. Returning null now", typeof(T).FullName, path);
		}
		return result;
	}

	public T LoadFromAssembly(Assembly loadedAssembly)
	{
		T result = default(T);
		try
		{
			Type[] exportedTypes = loadedAssembly.GetExportedTypes();
			foreach (Type type in exportedTypes)
			{
				if (type.GetInterface(typeof(T).FullName) != null)
				{
					result = (T)loadedAssembly.CreateInstance(type.FullName);
					return result;
				}
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while loading {0} instance from assembly {1}. Returning null now", typeof(T).FullName, loadedAssembly.FullName);
		}
		return result;
	}
}
