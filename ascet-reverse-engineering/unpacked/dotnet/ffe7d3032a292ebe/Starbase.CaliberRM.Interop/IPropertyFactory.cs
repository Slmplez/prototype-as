using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301AD-72AE-11D5-B316-0800309CC2CE")]
public interface IPropertyFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744806)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Property Create([In][MarshalAs(UnmanagedType.Struct)] object oKey, [In][MarshalAs(UnmanagedType.Struct)] object oValue);
}
