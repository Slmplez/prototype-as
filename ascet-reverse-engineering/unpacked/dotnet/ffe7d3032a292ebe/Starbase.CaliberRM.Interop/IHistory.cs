using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430097-72AE-11D5-B316-0800309CC2CE")]
public interface IHistory
{
	[DispId(1610744344)]
	Collection Revisions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744344)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
