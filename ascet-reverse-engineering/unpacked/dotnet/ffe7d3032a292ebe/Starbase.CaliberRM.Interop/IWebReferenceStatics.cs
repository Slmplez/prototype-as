using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043010F-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IWebReferenceStatics
{
	[DispId(1610744567)]
	int MAX_URL_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744567)]
		get;
	}
}
