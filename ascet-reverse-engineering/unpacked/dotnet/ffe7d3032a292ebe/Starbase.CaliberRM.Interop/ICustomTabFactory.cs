using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430045-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICustomTabFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744237)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CustomTab Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
