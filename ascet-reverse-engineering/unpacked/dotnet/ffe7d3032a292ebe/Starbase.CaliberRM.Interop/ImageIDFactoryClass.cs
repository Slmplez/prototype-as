using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104300A8-72AE-11D5-B316-0800309CC2CE")]
public class ImageIDFactoryClass : IImageIDFactory, ImageIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744366)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern imageID Create([In] int idNum);
}
