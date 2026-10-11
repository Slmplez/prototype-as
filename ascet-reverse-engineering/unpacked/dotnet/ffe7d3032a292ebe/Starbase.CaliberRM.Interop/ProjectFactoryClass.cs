using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104300B0-72AE-11D5-B316-0800309CC2CE")]
public class ProjectFactoryClass : IProjectFactory, ProjectFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744397)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Project Create1([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
