using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430185-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IIntegrationView
{
	[DispId(1610744780)]
	Collection IntegrationObjects
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744780)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744781)]
	bool List
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744781)]
		get;
	}

	[DispId(1610744779)]
	string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744779)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
