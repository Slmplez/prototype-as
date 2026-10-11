using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301CA-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class HTMLHelperFactoryClass : IHTMLHelperFactory, HTMLHelperFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744874)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern HTMLHelper Create();
}
