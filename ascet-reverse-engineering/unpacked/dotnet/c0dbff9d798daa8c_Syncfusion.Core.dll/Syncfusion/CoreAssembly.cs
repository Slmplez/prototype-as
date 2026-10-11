using System;
using System.Reflection;

namespace Syncfusion;

public class CoreAssembly
{
	internal static readonly bool EnforceLicensing;

	public static readonly string Name;

	public static readonly Assembly Assembly;

	public static readonly string StudioCoreVersion;

	public static readonly string PublicKeyToken;

	public static readonly string RootNamespace;

	public static string QualifiedName => "Syncfusion.Core, Version=" + StudioCoreVersion + ", Culture=neutral, PublicKeyToken=" + PublicKeyToken;

	static CoreAssembly()
	{
		EnforceLicensing = true;
		StudioCoreVersion = "8.404.0.10";
		PublicKeyToken = "632609b4d040f6b4";
		RootNamespace = "Syncfusion.Core";
		Assembly = typeof(CoreAssembly).Assembly;
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
