using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301BF-72AE-11D5-B316-0800309CC2CE")]
public interface ICaliberSecurityManagerStatics
{
	[DispId(1610744827)]
	int ACTION_CREATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744827)]
		get;
	}

	[DispId(1610744828)]
	int ACTION_DELETE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744828)]
		get;
	}

	[DispId(1610744829)]
	int ACTION_EDIT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744829)]
		get;
	}

	[DispId(1610744830)]
	int ACTION_READ
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744830)]
		get;
	}
}
