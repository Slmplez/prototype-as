using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430042-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
[ClassInterface(0)]
public class CurrentUserStaticsClass : ICurrentUserStatics, CurrentUserStatics
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

	[DispId(1610744213)]
	public virtual extern int MAX_EMAIL_ADDRESS_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744213)]
		get;
	}

	[DispId(1610744214)]
	public virtual extern int MAX_FAX_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744214)]
		get;
	}

	[DispId(1610744215)]
	public virtual extern int MAX_FIRST_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744215)]
		get;
	}

	[DispId(1610744216)]
	public virtual extern int MAX_LAST_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744216)]
		get;
	}

	[DispId(1610744217)]
	public virtual extern int MAX_LOCATION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744217)]
		get;
	}

	[DispId(1610744218)]
	public virtual extern int MAX_PAGER_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744218)]
		get;
	}

	[DispId(1610744219)]
	public virtual extern int MAX_PASSWORD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744219)]
		get;
	}

	[DispId(1610744220)]
	public virtual extern int MAX_PHONE_NUMBER_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744220)]
		get;
	}

	[DispId(1610744221)]
	public virtual extern int MAX_TITLE_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744221)]
		get;
	}

	[DispId(1610744222)]
	public virtual extern int MAX_USER_ID_STRING_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744222)]
		get;
	}

	[DispId(1610744223)]
	public virtual extern int PASSWORD_CANNOT_CHANGE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744223)]
		get;
	}

	[DispId(1610744224)]
	public virtual extern int PASSWORD_MUST_CHANGE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744224)]
		get;
	}

	[DispId(1610744225)]
	public virtual extern int PASSWORD_NO_RESTRICTION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744225)]
		get;
	}
}
