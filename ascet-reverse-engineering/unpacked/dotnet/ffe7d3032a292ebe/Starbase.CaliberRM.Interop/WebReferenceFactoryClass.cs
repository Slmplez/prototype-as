using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("1043010E-72AE-11D5-B316-0800309CC2CE")]
public class WebReferenceFactoryClass : IWebReferenceFactory, WebReferenceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744565)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern WebReference Create([In][MarshalAs(UnmanagedType.BStr)] string sUrl);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744566)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern WebReference Create1([In][MarshalAs(UnmanagedType.BStr)] string sUrl, [In] bool bKey);
}
