using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301AB-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IProperty
{
	[DispId(1610744804)]
	object Key
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744804)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744805)]
	object Value
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744805)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}
}
