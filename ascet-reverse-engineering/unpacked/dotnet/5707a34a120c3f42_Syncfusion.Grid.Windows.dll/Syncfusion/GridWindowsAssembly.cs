using System;
using System.Reflection;

namespace Syncfusion;

public class GridWindowsAssembly
{
	public static readonly string Name;

	public static readonly Assembly Assembly;

	public static readonly string RootNamespace;

	static GridWindowsAssembly()
	{
		RootNamespace = "Syncfusion.Windows.Forms.Grid";
		Assembly = typeof(GridWindowsAssembly).Assembly;
		string fullName = Assembly.FullName;
		int length = fullName.IndexOf(",");
		Name = fullName.Substring(0, length);
	}

	public static Assembly AssemblyResolver(object sender, ResolveEventArgs e)
	{
		if (e.Name.StartsWith(SharedBaseAssembly.Name))
		{
			return SharedBaseAssembly.Assembly;
		}
		if (e.Name.StartsWith(GridBaseAssembly.Name))
		{
			return GridBaseAssembly.Assembly;
		}
		if (e.Name.StartsWith(SharedWindowsAssembly.Name))
		{
			return SharedWindowsAssembly.Assembly;
		}
		if (e.Name.StartsWith(Name))
		{
			return Assembly;
		}
		if (e.Name.StartsWith("Syncfusion.Shared,"))
		{
			return SharedBaseAssembly.Assembly;
		}
		if (e.Name.StartsWith("Syncfusion.Grid,"))
		{
			return Assembly;
		}
		if (e.Name == "Syncfusion.Shared")
		{
			return SharedBaseAssembly.Assembly;
		}
		if (e.Name == "Syncfusion.Grid")
		{
			return Assembly;
		}
		if (e.Name.StartsWith(CoreAssembly.Name))
		{
			return CoreAssembly.Assembly;
		}
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		for (int i = 0; i < assemblies.Length; i++)
		{
			if (assemblies[i].GetName().Name == e.Name)
			{
				return assemblies[i];
			}
		}
		return null;
	}
}
