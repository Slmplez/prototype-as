using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300A9-72AE-11D5-B316-0800309CC2CE")]
public interface IImageManager : ICaliberObjectManager
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744135)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744136)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new Collection getAll([In][MarshalAs(UnmanagedType.Interface)] Collection caliberObjectIDs);

	[DispId(1610744134)]
	new CaliberObjectCache Cache
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744134)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744134)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744367)]
	bool populateCache4([In][MarshalAs(UnmanagedType.Interface)] Collection imageIDNumbers);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744368)]
	bool populateCache3([In][MarshalAs(UnmanagedType.Interface)] RequirementDescription descr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744369)]
	bool populateCache2([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744370)]
	bool populateCache1([In] int imageID);
}
