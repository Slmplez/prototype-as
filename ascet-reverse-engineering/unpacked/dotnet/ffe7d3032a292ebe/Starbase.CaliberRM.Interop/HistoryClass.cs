using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430098-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class HistoryClass : IHistory, History
{
	[DispId(1610744344)]
	public virtual extern Collection Revisions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744344)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
