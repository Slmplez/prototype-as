using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[TypeLibType(2)]
[Guid("10430108-72AE-11D5-B316-0800309CC2CE")]
public class UserIDFactoryClass : IUserIDFactory, UserIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744557)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern UserID Create([In] int idNum);
}
