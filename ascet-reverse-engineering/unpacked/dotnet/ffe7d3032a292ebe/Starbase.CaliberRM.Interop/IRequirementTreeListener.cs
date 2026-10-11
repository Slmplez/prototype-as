using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430163-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IRequirementTreeListener : IContainmentListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744700)]
	new void objectRemovedFromObject([In][MarshalAs(UnmanagedType.Interface)] ContainmentEvent ce);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744701)]
	new void objectAddedToObject([In][MarshalAs(UnmanagedType.Interface)] ContainmentEvent ce);
}
