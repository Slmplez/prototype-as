using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043000F-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IBaselineFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744116)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Baseline Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
