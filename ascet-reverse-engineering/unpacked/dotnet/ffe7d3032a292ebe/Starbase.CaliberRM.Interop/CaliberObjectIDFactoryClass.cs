using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430016-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class CaliberObjectIDFactoryClass : ICaliberObjectIDFactory, CaliberObjectIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744125)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObjectID Create();
}
