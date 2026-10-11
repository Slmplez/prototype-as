using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301AC-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class PropertyClass : IProperty, Property
{
	[DispId(1610744804)]
	public virtual extern object Key
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744804)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744805)]
	public virtual extern object Value
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744805)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}
}
