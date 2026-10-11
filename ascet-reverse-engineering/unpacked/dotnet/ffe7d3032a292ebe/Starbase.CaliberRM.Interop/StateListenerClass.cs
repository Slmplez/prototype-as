using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430168-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class StateListenerClass : IStateListener, StateListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744736)]
	public virtual extern void objectModified([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744737)]
	public virtual extern void objectUnlocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744738)]
	public virtual extern void objectLocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744739)]
	public virtual extern void objectCreated([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744740)]
	public virtual extern void objectDeleted([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);
}
