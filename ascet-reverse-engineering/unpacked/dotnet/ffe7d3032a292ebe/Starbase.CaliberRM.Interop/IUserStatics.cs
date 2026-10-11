using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043003D-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IUserStatics : ILockableCaliberObjectStatics
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

	[DispId(1610744213)]
	int MAX_EMAIL_ADDRESS_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744213)]
		get;
	}

	[DispId(1610744214)]
	int MAX_FAX_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744214)]
		get;
	}

	[DispId(1610744215)]
	int MAX_FIRST_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744215)]
		get;
	}

	[DispId(1610744216)]
	int MAX_LAST_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744216)]
		get;
	}

	[DispId(1610744217)]
	int MAX_LOCATION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744217)]
		get;
	}

	[DispId(1610744218)]
	int MAX_PAGER_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744218)]
		get;
	}

	[DispId(1610744219)]
	int MAX_PASSWORD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744219)]
		get;
	}

	[DispId(1610744220)]
	int MAX_PHONE_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744220)]
		get;
	}

	[DispId(1610744221)]
	int MAX_TITLE_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744221)]
		get;
	}

	[DispId(1610744222)]
	int MAX_USER_ID_STRING_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744222)]
		get;
	}

	[DispId(1610744223)]
	int PASSWORD_CANNOT_CHANGE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744223)]
		get;
	}

	[DispId(1610744224)]
	int PASSWORD_MUST_CHANGE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744224)]
		get;
	}

	[DispId(1610744225)]
	int PASSWORD_NO_RESTRICTION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744225)]
		get;
	}
}
