using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430117-72AE-11D5-B316-0800309CC2CE")]
public interface IAttributeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744606)]
	[return: MarshalAs(UnmanagedType.Interface)]
	AttributeID Create([In] int idNum);
}
