using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430021-72AE-11D5-B316-0800309CC2CE")]
public interface IBaselineTreeFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744130)]
	[return: MarshalAs(UnmanagedType.Interface)]
	BaselineTree Create([In][MarshalAs(UnmanagedType.Interface)] Baseline @base, [In][MarshalAs(UnmanagedType.Interface)] Tree existingTree, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
