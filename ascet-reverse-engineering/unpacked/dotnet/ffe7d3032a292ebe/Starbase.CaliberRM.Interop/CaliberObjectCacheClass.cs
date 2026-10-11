using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043014A-72AE-11D5-B316-0800309CC2CE")]
public class CaliberObjectCacheClass : ICaliberObjectCache, CaliberObjectCache
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744687)]
	public virtual extern bool removeElement([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744688)]
	public virtual extern void clear();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744689)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744690)]
	public virtual extern bool containsID([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744691)]
	public virtual extern bool addAll([In][MarshalAs(UnmanagedType.Interface)] Collection calObjs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744692)]
	public virtual extern bool Add([In][MarshalAs(UnmanagedType.Struct)] object calObj);
}
