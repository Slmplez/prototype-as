using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300F5-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ITextReferenceStatics
{
	[DispId(1610744541)]
	int MAX_TEXT_REFERENCE_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744541)]
		get;
	}
}
