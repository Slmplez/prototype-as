using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043006D-72AE-11D5-B316-0800309CC2CE")]
public interface IFileReferenceStatics
{
	[DispId(1610744287)]
	int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744287)]
		get;
	}

	[DispId(1610744288)]
	int MAX_PATH_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744288)]
		get;
	}
}
