using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043004F-72AE-11D5-B316-0800309CC2CE")]
public interface IDepartmentFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744244)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Department Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
