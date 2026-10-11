using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430022-72AE-11D5-B316-0800309CC2CE")]
public class BaselineTreeFactoryClass : IBaselineTreeFactory, BaselineTreeFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744130)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern BaselineTree Create([In][MarshalAs(UnmanagedType.Interface)] Baseline @base, [In][MarshalAs(UnmanagedType.Interface)] Tree existingTree, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
