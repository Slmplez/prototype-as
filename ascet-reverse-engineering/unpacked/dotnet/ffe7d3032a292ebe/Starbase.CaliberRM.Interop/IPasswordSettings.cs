using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301C5-72AE-11D5-B316-0800309CC2CE")]
public interface IPasswordSettings
{
	[DispId(1610744853)]
	CaliberServer CaliberServer
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744853)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744857)]
	int DaysToBeginWarning
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744857)]
		get;
	}

	[DispId(1610744859)]
	int LoginFailureLimit
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744859)]
		get;
	}

	[DispId(1610744855)]
	int LoginFailurePeriod
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744855)]
		get;
	}

	[DispId(1610744858)]
	int MaximumAge
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744858)]
		get;
	}

	[DispId(1610744856)]
	int MinimumAge
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744856)]
		get;
	}

	[DispId(1610744852)]
	int MinimumLength
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744852)]
		get;
	}

	[DispId(1610744854)]
	int PasswordMemorySize
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744854)]
		get;
	}
}
