using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430107-72AE-11D5-B316-0800309CC2CE")]
public interface IUserIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744557)]
	[return: MarshalAs(UnmanagedType.Interface)]
	UserID Create([In] int idNum);
}
