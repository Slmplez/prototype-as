using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104300F6-72AE-11D5-B316-0800309CC2CE")]
public class TextReferenceStaticsClass : ITextReferenceStatics, TextReferenceStatics
{
	[DispId(1610744541)]
	public virtual extern int MAX_TEXT_REFERENCE_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744541)]
		get;
	}
}
