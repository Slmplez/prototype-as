using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300C5-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementDescriptionMapped : IRequirementDescription
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744455)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[DispId(1610744454)]
	new string Text
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
	Requirement MappedDescriptionRequirement
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744459)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744458)]
	RequirementID MappedDescriptionRequirementID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744458)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
