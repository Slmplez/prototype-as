using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043009D-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IHistoryRevision
{
	[DispId(1610744359)]
	Collection Changes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744359)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744362)]
	string Comment
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744362)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744358)]
	double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744358)]
		get;
	}

	[DispId(1610744363)]
	User User
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744363)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744361)]
	string UserName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744361)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744360)]
	Version Version
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744360)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
