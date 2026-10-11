using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301C4-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class CaliberServerFactoryClass : ICaliberServerFactory, CaliberServerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744851)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberServer Create([In][MarshalAs(UnmanagedType.BStr)] string strHost);
}
