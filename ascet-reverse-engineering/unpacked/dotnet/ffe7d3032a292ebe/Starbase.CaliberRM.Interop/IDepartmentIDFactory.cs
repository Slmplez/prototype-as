using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430055-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IDepartmentIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744247)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DepartmentID Create([In] int idNum);
}
