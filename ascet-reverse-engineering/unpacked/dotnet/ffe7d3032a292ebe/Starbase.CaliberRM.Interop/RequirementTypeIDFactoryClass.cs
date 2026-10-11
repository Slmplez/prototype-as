using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("104300EA-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementTypeIDFactoryClass : IRequirementTypeIDFactory, RequirementTypeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744494)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementTypeID Create([In] int idNum);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744495)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern RequirementTypeID Create1([In] int idNum, [In] int ver);
}
