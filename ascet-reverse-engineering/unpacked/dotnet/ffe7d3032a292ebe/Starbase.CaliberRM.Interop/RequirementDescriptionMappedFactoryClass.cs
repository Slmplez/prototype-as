using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300C8-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class RequirementDescriptionMappedFactoryClass : IRequirementDescriptionMappedFactory, RequirementDescriptionMappedFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744460)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementDescriptionMapped Create([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
