using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300B9-72AE-11D5-B316-0800309CC2CE")]
public interface IProjectIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744403)]
	[return: MarshalAs(UnmanagedType.Interface)]
	ProjectID Create([In] int idNum);
}
