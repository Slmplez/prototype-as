using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300E3-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IRequirementTypeFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744489)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementType Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
