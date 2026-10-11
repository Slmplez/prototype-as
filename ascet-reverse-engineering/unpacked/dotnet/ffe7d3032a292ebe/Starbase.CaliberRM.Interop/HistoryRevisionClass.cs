using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043009E-72AE-11D5-B316-0800309CC2CE")]
public class HistoryRevisionClass : IHistoryRevision, HistoryRevision
{
	[DispId(1610744359)]
	public virtual extern Collection Changes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744359)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744362)]
	public virtual extern string Comment
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744362)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744358)]
	public virtual extern double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744358)]
		get;
	}

	[DispId(1610744363)]
	public virtual extern User User
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744363)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744361)]
	public virtual extern string UserName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744361)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744360)]
	public virtual extern Version Version
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744360)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
