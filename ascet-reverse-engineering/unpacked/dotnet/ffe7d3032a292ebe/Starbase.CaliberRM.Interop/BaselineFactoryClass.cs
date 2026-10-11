using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430010-72AE-11D5-B316-0800309CC2CE")]
public class BaselineFactoryClass : IBaselineFactory, BaselineFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744116)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Baseline Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
