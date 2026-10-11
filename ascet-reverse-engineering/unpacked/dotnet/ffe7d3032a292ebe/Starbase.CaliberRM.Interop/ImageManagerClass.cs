using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300AA-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class ImageManagerClass : IImageManager, ImageManager
{
	[DispId(1610744134)]
	public virtual extern CaliberObjectCache Cache
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
	[DispId(1610744135)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744136)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getAll([In][MarshalAs(UnmanagedType.Interface)] Collection caliberObjectIDs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744367)]
	public virtual extern bool populateCache4([In][MarshalAs(UnmanagedType.Interface)] Collection imageIDNumbers);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744368)]
	public virtual extern bool populateCache3([In][MarshalAs(UnmanagedType.Interface)] RequirementDescription descr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744369)]
	public virtual extern bool populateCache2([In][MarshalAs(UnmanagedType.BStr)] string html);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744370)]
	public virtual extern bool populateCache1([In] int imageID);
}
