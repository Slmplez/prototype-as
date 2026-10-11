using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301AE-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class PropertyFactoryClass : IPropertyFactory, PropertyFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744806)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Property Create([In][MarshalAs(UnmanagedType.Struct)] object oKey, [In][MarshalAs(UnmanagedType.Struct)] object oValue);
}
