using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043010A-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class VersionClass : IVersion, Version
{
	[DispId(1610744558)]
	public virtual extern int MajorVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744558)]
		get;
	}

	[DispId(1610744559)]
	public virtual extern int MinorVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744559)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744560)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744561)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
