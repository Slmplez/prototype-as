using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301CE-72AE-11D5-B316-0800309CC2CE")]
public class NodeListClass : INodeList, NodeList
{
	[DispId(1610744889)]
	public virtual extern int Len
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744889)]
		get;
	}
}
