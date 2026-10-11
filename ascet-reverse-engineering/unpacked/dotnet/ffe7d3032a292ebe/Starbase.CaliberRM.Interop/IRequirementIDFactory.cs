using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300D1-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744470)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementID Create([In] int idNum);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744471)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementID Create1([In] int idNum, [In] int majVersion, [In] int minVersion, [In] int baselineIDNum);
}
