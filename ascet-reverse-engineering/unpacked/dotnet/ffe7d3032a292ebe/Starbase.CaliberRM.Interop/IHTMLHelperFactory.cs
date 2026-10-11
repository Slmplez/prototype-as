using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301C9-72AE-11D5-B316-0800309CC2CE")]
public interface IHTMLHelperFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744874)]
	[return: MarshalAs(UnmanagedType.Interface)]
	HTMLHelper Create();
}
