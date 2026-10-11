using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300C0-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class RequirementStaticsClass : IRequirementStatics, RequirementStatics
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

	[DispId(1610744443)]
	public virtual extern string FIELD_DESCRIPTION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744443)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744444)]
	public virtual extern string FIELD_DOCUMENT_REFERENCES
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744444)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744445)]
	public virtual extern string FIELD_OWNER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744445)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744446)]
	public virtual extern string FIELD_PRIORITY
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744446)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744447)]
	public virtual extern string FIELD_RESPONSIBLE_USERS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744447)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744448)]
	public virtual extern string FIELD_STATUS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744448)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744449)]
	public virtual extern string FIELD_VALIDATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744449)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744450)]
	public virtual extern int MAX_COMMENT_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744450)]
		get;
	}

	[DispId(1610744451)]
	public virtual extern int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744451)]
		get;
	}

	[DispId(1610744452)]
	public virtual extern int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744452)]
		get;
	}

	[DispId(1610744453)]
	public virtual extern int MAX_VALIDATION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744453)]
		get;
	}
}
