using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430046-72AE-11D5-B316-0800309CC2CE")]
public class CustomTabFactoryClass : ICustomTabFactory, CustomTabFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744237)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CustomTab Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
