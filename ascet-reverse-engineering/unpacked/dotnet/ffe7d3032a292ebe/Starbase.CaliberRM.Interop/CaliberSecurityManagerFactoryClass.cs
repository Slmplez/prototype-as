using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301BE-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class CaliberSecurityManagerFactoryClass : ICaliberSecurityManagerFactory, CaliberSecurityManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744826)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberSecurityManager Create([In][MarshalAs(UnmanagedType.Interface)] Session s);
}
