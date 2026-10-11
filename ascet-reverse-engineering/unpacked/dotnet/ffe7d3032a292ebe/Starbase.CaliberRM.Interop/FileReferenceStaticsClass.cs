using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043006E-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
[ClassInterface(0)]
public class FileReferenceStaticsClass : IFileReferenceStatics, FileReferenceStatics
{
	[DispId(1610744287)]
	public virtual extern int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744287)]
		get;
	}

	[DispId(1610744288)]
	public virtual extern int MAX_PATH_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744288)]
		get;
	}
}
