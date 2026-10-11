using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301B9-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IXGenericObjectManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744811)]
	[return: MarshalAs(UnmanagedType.Interface)]
	XGenericObjectManager Create([In][MarshalAs(UnmanagedType.Interface)] Session caliberSession, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectCache objectCache);
}
