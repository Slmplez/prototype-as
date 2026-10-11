using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430056-72AE-11D5-B316-0800309CC2CE")]
public class DepartmentIDFactoryClass : IDepartmentIDFactory, DepartmentIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744247)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern DepartmentID Create([In] int idNum);
}
