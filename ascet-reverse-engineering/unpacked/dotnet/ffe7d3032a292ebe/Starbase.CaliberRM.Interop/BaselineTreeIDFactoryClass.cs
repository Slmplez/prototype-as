using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("1043002A-72AE-11D5-B316-0800309CC2CE")]
public class BaselineTreeIDFactoryClass : IBaselineTreeIDFactory, BaselineTreeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744133)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern BaselineTreeID Create1([In] int baselineIDNum, [In] int projectIDNum);
}
