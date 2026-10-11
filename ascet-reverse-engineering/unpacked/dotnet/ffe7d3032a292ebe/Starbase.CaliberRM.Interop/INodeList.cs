using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301CD-72AE-11D5-B316-0800309CC2CE")]
public interface INodeList
{
	[DispId(1610744889)]
	int Len
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744889)]
		get;
	}
}
