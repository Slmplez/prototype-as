using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("104301D2-72AE-11D5-B316-0800309CC2CE")]
public class InitializerClass : IStInitializer, Initializer
{
	[DispId(1610743808)]
	public virtual extern IStComWrapperVersionInfo VersionInformation
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610743808)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610743809)]
	public virtual extern IStJavaConfiguration JavaConfiguration
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610743809)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
