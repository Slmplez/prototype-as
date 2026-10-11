using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430047-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICustomTabStatics
{
	[DispId(1610744238)]
	int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744238)]
		get;
	}
}
