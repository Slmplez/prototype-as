using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("1043001A-72AE-11D5-B316-0800309CC2CE")]
public class BaselineIDFactoryClass : IBaselineIDFactory, BaselineIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744126)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern BaselineID Create([In] int idNum);
}
