using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300C1-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementDescription
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744455)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[DispId(1610744454)]
	string Text
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744454)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744454)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}
}
