using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430048-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class CustomTabStaticsClass : ICustomTabStatics, CustomTabStatics
{
	[DispId(1610744238)]
	public virtual extern int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744238)]
		get;
	}
}
