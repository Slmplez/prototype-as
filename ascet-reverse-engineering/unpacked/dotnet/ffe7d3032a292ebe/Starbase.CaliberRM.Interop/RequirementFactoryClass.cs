using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104300BE-72AE-11D5-B316-0800309CC2CE")]
public class RequirementFactoryClass : IRequirementFactory, RequirementFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744441)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Requirement Create2([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Requirement parentReq, [In] int childIndex, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744442)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Requirement Create1([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Project proj, [In][MarshalAs(UnmanagedType.Interface)] RequirementType reqType, [In] int Index, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
