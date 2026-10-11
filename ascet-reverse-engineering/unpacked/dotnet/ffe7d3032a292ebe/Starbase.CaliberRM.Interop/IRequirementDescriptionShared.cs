using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300C9-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IRequirementDescriptionShared : IRequirementDescription
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

	[DispId(1610744462)]
	Collection SharedRequirementIDs
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744462)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744461)]
	Collection SharedRequirements
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744461)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
