using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430164-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementTreeListenerClass : IRequirementTreeListener, RequirementTreeListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744700)]
	public virtual extern void objectRemovedFromObject([In][MarshalAs(UnmanagedType.Interface)] ContainmentEvent ce);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744701)]
	public virtual extern void objectAddedToObject([In][MarshalAs(UnmanagedType.Interface)] ContainmentEvent ce);
}
