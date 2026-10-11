using System;
using System.Reflection;

namespace Syncfusion;

public class GridBaseAssembly
{
	public static readonly string Name;

	public static readonly Assembly Assembly;

	public static readonly string RootNamespace;

	static GridBaseAssembly()
	{
		RootNamespace = "Syncfusion.Windows.Forms.Grid";
		Assembly = typeof(GridBaseAssembly).Assembly;
		string fullName = Assembly.FullName;
		int length = fullName.IndexOf(",");
		Name = fullName.Substring(0, length);
	}

	public static Assembly AssemblyResolver(object sender, ResolveEventArgs e)
	{
		if (e.Name.StartsWith(CoreAssembly.Name))
		{
			return CoreAssembly.Assembly;
		}
		if (e.Name.StartsWith(SharedBaseAssembly.Name))
		{
			return SharedBaseAssembly.Assembly;
		}
		if (e.Name.StartsWith(Name))
		{
			return Assembly;
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
