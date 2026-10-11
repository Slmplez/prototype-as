using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300F3-72AE-11D5-B316-0800309CC2CE")]
public interface ITextReferenceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744539)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TextReference Create([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744540)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TextReference Create1([In][MarshalAs(UnmanagedType.BStr)] string sText, [In] bool bKey);
}
