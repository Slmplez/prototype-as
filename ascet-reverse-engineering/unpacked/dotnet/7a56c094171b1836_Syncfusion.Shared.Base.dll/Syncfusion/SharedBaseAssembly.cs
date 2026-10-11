using System;
using System.Reflection;

namespace Syncfusion;

public class SharedBaseAssembly
{
	public static readonly string Name;

	public static readonly Assembly Assembly;

	public static readonly string RootNamespace;

	static SharedBaseAssembly()
	{
		RootNamespace = "Syncfusion.Windows.Forms";
		Assembly = typeof(SharedBaseAssembly).Assembly;
		string fullName = Assembly.FullName;
		int length = fullName.IndexOf(",");
		Name = fullName.Substring(0, length);
	}

	public static Assembly AssemblyResolver(object sender, ResolveEventArgs e)
	{
		if (e.Name.StartsWith(Name))
		{
			return Assembly;
		}
		if (e.Name.StartsWith(CoreAssembly.Name))
		{
			return CoreAssembly.Assembly;
		}
		string text = e.Name.ToLower();
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		for (int i = 0; i < assemblies.Length; i++)
		{
			if (assemblies[i].GetName().Name.ToLower() == text)
			{
				return assemblies[i];
			}
		}
		return null;
	}
}
