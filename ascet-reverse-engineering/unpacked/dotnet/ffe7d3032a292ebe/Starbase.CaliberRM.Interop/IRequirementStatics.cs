using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300BF-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementStatics : ILockableCaliberObjectStatics
{
	[DispId(1610744076)]
	new int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744076)]
		get;
	}

	[DispId(1610744077)]
	new string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744077)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744443)]
	string FIELD_DESCRIPTION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744443)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744444)]
	string FIELD_DOCUMENT_REFERENCES
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744444)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744445)]
	string FIELD_OWNER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744445)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744446)]
	string FIELD_PRIORITY
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744446)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744447)]
	string FIELD_RESPONSIBLE_USERS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744447)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744448)]
	string FIELD_STATUS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744448)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744449)]
	string FIELD_VALIDATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744449)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744450)]
	int MAX_COMMENT_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744450)]
		get;
	}

	[DispId(1610744451)]
	int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744451)]
		get;
	}

	[DispId(1610744452)]
	int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744452)]
		get;
	}

	[DispId(1610744453)]
	int MAX_VALIDATION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744453)]
		get;
	}
}
