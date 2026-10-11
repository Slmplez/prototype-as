using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("104300E4-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementTypeFactoryClass : IRequirementTypeFactory, RequirementTypeFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744489)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementType Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
