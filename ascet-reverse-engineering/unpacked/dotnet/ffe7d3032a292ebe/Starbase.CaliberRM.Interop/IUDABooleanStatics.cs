using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043011D-72AE-11D5-B316-0800309CC2CE")]
public interface IUDABooleanStatics : IAttributeStatics
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

	[DispId(1610744590)]
	new int INITIAL_VALUE_DEFAULT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744590)]
		get;
	}

	[DispId(1610744591)]
	new int INITIAL_VALUE_FORCE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744591)]
		get;
	}

	[DispId(1610744592)]
	new int INITIAL_VALUE_PARENT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744592)]
		get;
	}

	[DispId(1610744593)]
	new string UI_NAME_BOOLEAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744593)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744594)]
	new string UI_NAME_DATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744594)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744595)]
	new string UI_NAME_DURATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744595)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744596)]
	new string UI_NAME_FLOAT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744596)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744597)]
	new string UI_NAME_LONG_INTEGER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744597)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744598)]
	new string UI_NAME_MLTF
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744598)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744599)]
	new string UI_NAME_MSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744599)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744600)]
	new string UI_NAME_MSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744600)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744601)]
	new string UI_NAME_MSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744601)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744602)]
	new string UI_NAME_SSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744602)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744603)]
	new string UI_NAME_SSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744603)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744604)]
	new string UI_NAME_SSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744604)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744605)]
	new string UI_NAME_STL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744605)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
