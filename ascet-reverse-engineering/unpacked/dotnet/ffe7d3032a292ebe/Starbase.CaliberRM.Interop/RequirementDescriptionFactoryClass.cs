using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("104300C4-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementDescriptionFactoryClass : IRequirementDescriptionFactory, RequirementDescriptionFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744456)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementDescription Create([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744457)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementDescription Create2();
}
