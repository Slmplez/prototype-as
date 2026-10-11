using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
internal class ToolsComp
{
	static ToolsComp()
	{
		AppDomain.CurrentDomain.AssemblyResolve += Syncfusion.SharedResolver.Resolve;
	}

	public static Type GetPublicType()
	{
		return typeof(ToolsComp);
	}

	public virtual int GetVer()
	{
		return 0;
	}
}
