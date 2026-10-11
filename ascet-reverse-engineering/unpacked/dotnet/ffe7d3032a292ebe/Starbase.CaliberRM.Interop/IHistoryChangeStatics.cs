using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043009B-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IHistoryChangeStatics
{
	[DispId(1610744354)]
	int CHANGE_TYPE_CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744354)]
		get;
	}

	[DispId(1610744355)]
	int CHANGE_TYPE_DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744355)]
		get;
	}

	[DispId(1610744356)]
	int CHANGE_TYPE_MODIFIED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744356)]
		get;
	}

	[DispId(1610744357)]
	int CHANGE_TYPE_MOVED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744357)]
		get;
	}
}
