using System;
using System.Reflection;

namespace Syncfusion;

public class ToolsBaseAssembly
{
	public static readonly string Name;

	public static readonly Assembly Assembly;

	public static readonly string RootNamespace;

	static ToolsBaseAssembly()
	{
		RootNamespace = "Syncfusion.Windows.Forms.Tools";
		Assembly = typeof(ToolsBaseAssembly).Assembly;
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
		if (e.Name.StartsWith(Name))
		{
			return Assembly;
		}
		return null;
	}
}
