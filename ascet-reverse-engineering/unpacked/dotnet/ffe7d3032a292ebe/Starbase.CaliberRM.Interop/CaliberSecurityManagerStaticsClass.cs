using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104301C0-72AE-11D5-B316-0800309CC2CE")]
public class CaliberSecurityManagerStaticsClass : ICaliberSecurityManagerStatics, CaliberSecurityManagerStatics
{
	[DispId(1610744827)]
	public virtual extern int ACTION_CREATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744827)]
		get;
	}

	[DispId(1610744828)]
	public virtual extern int ACTION_DELETE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744828)]
		get;
	}

	[DispId(1610744829)]
	public virtual extern int ACTION_EDIT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744829)]
		get;
	}

	[DispId(1610744830)]
	public virtual extern int ACTION_READ
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744830)]
		get;
	}
}
