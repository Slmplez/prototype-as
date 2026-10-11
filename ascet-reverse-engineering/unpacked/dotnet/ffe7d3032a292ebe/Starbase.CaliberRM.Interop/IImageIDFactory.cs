using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300A7-72AE-11D5-B316-0800309CC2CE")]
public interface IImageIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744366)]
	[return: MarshalAs(UnmanagedType.Interface)]
	imageID Create([In] int idNum);
}
