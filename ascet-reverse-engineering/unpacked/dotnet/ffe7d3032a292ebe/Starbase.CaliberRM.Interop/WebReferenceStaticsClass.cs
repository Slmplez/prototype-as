using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[Guid("10430110-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class WebReferenceStaticsClass : IWebReferenceStatics, WebReferenceStatics
{
	[DispId(1610744567)]
	public virtual extern int MAX_URL_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744567)]
		get;
	}
}
