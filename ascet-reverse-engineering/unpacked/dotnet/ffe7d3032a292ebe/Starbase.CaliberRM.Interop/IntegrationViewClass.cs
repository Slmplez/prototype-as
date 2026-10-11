using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430186-72AE-11D5-B316-0800309CC2CE")]
public class IntegrationViewClass : IIntegrationView, IntegrationView
{
	[DispId(1610744780)]
	public virtual extern Collection IntegrationObjects
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744780)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744781)]
	public virtual extern bool List
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744781)]
		get;
	}

	[DispId(1610744779)]
	public virtual extern string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744779)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
