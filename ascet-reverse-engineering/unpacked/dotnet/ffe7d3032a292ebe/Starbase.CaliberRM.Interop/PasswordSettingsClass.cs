using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301C6-72AE-11D5-B316-0800309CC2CE")]
public class PasswordSettingsClass : IPasswordSettings, PasswordSettings
{
	[DispId(1610744853)]
	public virtual extern CaliberServer CaliberServer
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744853)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744857)]
	public virtual extern int DaysToBeginWarning
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744857)]
		get;
	}

	[DispId(1610744859)]
	public virtual extern int LoginFailureLimit
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744859)]
		get;
	}

	[DispId(1610744855)]
	public virtual extern int LoginFailurePeriod
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744855)]
		get;
	}

	[DispId(1610744858)]
	public virtual extern int MaximumAge
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744858)]
		get;
	}

	[DispId(1610744856)]
	public virtual extern int MinimumAge
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744856)]
		get;
	}

	[DispId(1610744852)]
	public virtual extern int MinimumLength
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744852)]
		get;
	}

	[DispId(1610744854)]
	public virtual extern int PasswordMemorySize
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744854)]
		get;
	}
}
