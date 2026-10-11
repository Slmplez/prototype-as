using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430026-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class TreeIDClass : ITreeID, TreeID
{
	[DispId(1610744121)]
	public virtual extern int IDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744121)]
		get;
	}

	[DispId(1610744132)]
	public virtual extern int BaselineIDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744132)]
		get;
	}

	[DispId(1610744131)]
	public virtual extern int ProjectIDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744131)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744122)]
	public virtual extern int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744123)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744124)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
