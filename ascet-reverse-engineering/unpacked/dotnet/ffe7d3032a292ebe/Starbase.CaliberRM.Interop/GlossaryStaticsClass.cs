using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430074-72AE-11D5-B316-0800309CC2CE")]
public class GlossaryStaticsClass : IGlossaryStatics, GlossaryStatics
{
	[DispId(1610744076)]
	public virtual extern int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744076)]
		get;
	}

	[DispId(1610744077)]
	public virtual extern string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744077)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744297)]
	public virtual extern string FIELD_TERMS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744297)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744298)]
	public virtual extern string FIELD_TERM_COLOR
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744298)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744299)]
	public virtual extern int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744299)]
		get;
	}

	[DispId(1610744300)]
	public virtual extern Collection ReservedCharacters
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744300)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
