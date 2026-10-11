using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430080-72AE-11D5-B316-0800309CC2CE")]
public class GlossaryTermColorClass : IGlossaryTermColor, GlossaryTermColor
{
	[DispId(1610744314)]
	public virtual extern int Blue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744314)]
		get;
	}

	[DispId(1610744312)]
	public virtual extern int Green
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744312)]
		get;
	}

	[DispId(1610744311)]
	public virtual extern int RGB
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744311)]
		get;
	}

	[DispId(1610744313)]
	public virtual extern int Red
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744313)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744315)]
	public virtual extern int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744316)]
	public virtual extern int compareTo([In][MarshalAs(UnmanagedType.Struct)] object otherColor);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744317)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744318)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744319)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();
}
