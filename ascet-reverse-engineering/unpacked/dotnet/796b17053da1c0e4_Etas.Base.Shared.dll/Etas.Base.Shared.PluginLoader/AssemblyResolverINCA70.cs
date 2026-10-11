using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Etas.Base.Shared.PluginLoader;

internal static class AssemblyResolverINCA70
{
	private static Dictionary<string, Uri> _AdditionalAssemblies;

	static AssemblyResolverINCA70()
	{
		_AdditionalAssemblies = new Dictionary<string, Uri>();
		AppDomain.CurrentDomain.AssemblyResolve += OnResolveAssembly;
	}

	public static void AddAssemblies(IEnumerable<string> filePaths)
	{
		HashSet<string> hashSet = new HashSet<string>(from a in AppDomain.CurrentDomain.GetAssemblies()
			select a.GetName().Name);
		foreach (string filePath in filePaths)
		{
			try
			{
				Uri uri = new Uri(filePath);
				if (!uri.IsFile || !uri.IsAbsoluteUri)
				{
					continue;
				}
				string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(filePath);
				if (!_AdditionalAssemblies.ContainsKey(fileNameWithoutExtension))
				{
					if (hashSet.Contains(fileNameWithoutExtension))
					{
						Logger.LogWarning("Assembly '{0}' might cause a problem as an assembly with the same short name is already loaded.", filePath);
					}
					_AdditionalAssemblies.Add(fileNameWithoutExtension, uri);
				}
				else
				{
					Logger.LogWarning("Multiple file name occurrence '{0}' when searching for plugins. Might lead to problems.", filePath);
				}
			}
			catch (Exception)
			{
			}
		}
	}

	private static Assembly OnResolveAssembly(object sender, ResolveEventArgs args)
	{
		try
		{
			string[] array = args.Name.Split(',');
			string text = array[0];
			if (_AdditionalAssemblies.TryGetValue(text, out var value))
			{
				string directoryName = Path.GetDirectoryName(value.LocalPath);
				return Assembly.LoadFrom(Path.Combine(directoryName, text + ".dll"));
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
		}
		return null;
	}
}
