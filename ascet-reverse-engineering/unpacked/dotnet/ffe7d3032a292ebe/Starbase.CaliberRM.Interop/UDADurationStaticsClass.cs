using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043012E-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class UDADurationStaticsClass : IUDADurationStatics, UDADurationStatics
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

	[DispId(1610744590)]
	public virtual extern int INITIAL_VALUE_DEFAULT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744590)]
		get;
	}

	[DispId(1610744591)]
	public virtual extern int INITIAL_VALUE_FORCE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744591)]
		get;
	}

	[DispId(1610744592)]
	public virtual extern int INITIAL_VALUE_PARENT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744592)]
		get;
	}

	[DispId(1610744593)]
	public virtual extern string UI_NAME_BOOLEAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744593)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744594)]
	public virtual extern string UI_NAME_DATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744594)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744595)]
	public virtual extern string UI_NAME_DURATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744595)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744596)]
	public virtual extern string UI_NAME_FLOAT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744596)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744597)]
	public virtual extern string UI_NAME_LONG_INTEGER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744597)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744598)]
	public virtual extern string UI_NAME_MLTF
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744598)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744599)]
	public virtual extern string UI_NAME_MSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744599)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744600)]
	public virtual extern string UI_NAME_MSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744600)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744601)]
	public virtual extern string UI_NAME_MSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744601)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744602)]
	public virtual extern string UI_NAME_SSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744602)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744603)]
	public virtual extern string UI_NAME_SSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744603)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744604)]
	public virtual extern string UI_NAME_SSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744604)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744605)]
	public virtual extern string UI_NAME_STL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744605)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744643)]
	public virtual extern int GRANULARITY_DAYS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744643)]
		get;
	}

	[DispId(1610744644)]
	public virtual extern int GRANULARITY_HOURS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744644)]
		get;
	}

	[DispId(1610744645)]
	public virtual extern int GRANULARITY_MINUTES
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744645)]
		get;
	}

	[DispId(1610744646)]
	public virtual extern int GRANULARITY_MONTHS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744646)]
		get;
	}

	[DispId(1610744647)]
	public virtual extern int GRANULARITY_SECONDS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744647)]
		get;
	}

	[DispId(1610744648)]
	public virtual extern int GRANULARITY_WEEKS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744648)]
		get;
	}

	[DispId(1610744649)]
	public virtual extern int GRANULARITY_YEARS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744649)]
		get;
	}
}
