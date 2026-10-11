using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("104300D2-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementIDFactoryClass : IRequirementIDFactory, RequirementIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744470)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementID Create([In] int idNum);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744471)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementID Create1([In] int idNum, [In] int majVersion, [In] int minVersion, [In] int baselineIDNum);
}
