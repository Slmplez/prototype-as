using System;
using System.Reflection;

namespace Syncfusion;

internal class SharedResolver
{
	static SharedResolver()
	{
	}

	public static Assembly Resolve(object sender, ResolveEventArgs e)
	{
		Assembly result = null;
		if (e.Name.StartsWith(SharedBaseAssembly.Name))
		{
			result = SharedBaseAssembly.Assembly;
		}
		AppDomain.CurrentDomain.AssemblyResolve -= Resolve;
		return result;
	}
}
