using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430149-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICaliberObjectCache
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744687)]
	bool removeElement([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744688)]
	void clear();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744689)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744690)]
	bool containsID([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744691)]
	bool addAll([In][MarshalAs(UnmanagedType.Interface)] Collection calObjs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744692)]
	bool Add([In][MarshalAs(UnmanagedType.Struct)] object calObj);
}
