using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300A2-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class ImageFactoryClass : IImageFactory, ImageFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744365)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Image Create([In][MarshalAs(UnmanagedType.BStr)] string sPath);
}
