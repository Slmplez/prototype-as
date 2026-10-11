using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300F4-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class TextReferenceFactoryClass : ITextReferenceFactory, TextReferenceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744539)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TextReference Create([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744540)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TextReference Create1([In][MarshalAs(UnmanagedType.BStr)] string sText, [In] bool bKey);
}
