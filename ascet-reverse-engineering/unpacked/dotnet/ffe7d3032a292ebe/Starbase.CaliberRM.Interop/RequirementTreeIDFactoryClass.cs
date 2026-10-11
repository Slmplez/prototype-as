using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("104300DC-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementTreeIDFactoryClass : IRequirementTreeIDFactory, RequirementTreeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744473)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementTreeID Create([In] int baselineIDNum, [In] int projectIDNum);
}
