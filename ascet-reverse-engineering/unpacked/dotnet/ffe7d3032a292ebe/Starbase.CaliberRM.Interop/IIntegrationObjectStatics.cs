using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043017F-72AE-11D5-B316-0800309CC2CE")]
public interface IIntegrationObjectStatics : ICaliberObjectStatics
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

	[DispId(1610744777)]
	string RemoteSubType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744777)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
