using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300BA-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
[ClassInterface(0)]
public class ProjectIDFactoryClass : IProjectIDFactory, ProjectIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744403)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern ProjectID Create([In] int idNum);
}
