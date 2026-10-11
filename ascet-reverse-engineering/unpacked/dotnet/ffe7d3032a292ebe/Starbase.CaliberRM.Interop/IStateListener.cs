using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430167-72AE-11D5-B316-0800309CC2CE")]
public interface IStateListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744736)]
	void objectModified([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744737)]
	void objectUnlocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744738)]
	void objectLocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744739)]
	void objectCreated([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744740)]
	void objectDeleted([In][MarshalAs(UnmanagedType.Interface)] StateEvent se);
}
