using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300C6-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementDescriptionMappedClass : IRequirementDescriptionMapped, RequirementDescriptionMapped
{
	[DispId(1610744454)]
	public virtual extern string Text
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744454)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744454)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744459)]
	public virtual extern Requirement MappedDescriptionRequirement
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744459)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744458)]
	public virtual extern RequirementID MappedDescriptionRequirementID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744458)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744455)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);
}
