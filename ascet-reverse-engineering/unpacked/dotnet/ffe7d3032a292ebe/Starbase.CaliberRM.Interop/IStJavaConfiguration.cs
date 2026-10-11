using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("23DB530D-1557-4AB9-B33C-977002C9AE4D")]
[TypeLibType(4160)]
public interface IStJavaConfiguration
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1)]
	void read([In][MarshalAs(UnmanagedType.BStr)] string strIniPath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(2)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IStJavaVMInfo readJavaVM([In][MarshalAs(UnmanagedType.BStr)] string strIniPath, [Optional][In][MarshalAs(UnmanagedType.Struct)] object relativeTo);

	[DispId(3)]
	IStJavaVMInfo CurrentJavaVM
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(3)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(3)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(4)]
	IStJavaVMInfoCollection AvailableJavaVMs
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(4)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(5)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IStJavaVMInfo findNamedJavaVM([In][MarshalAs(UnmanagedType.BStr)] string Name);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(6)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IStJavaVMInfo findMicrosoftVM();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(7)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IStJavaVMInfo findSunVM([In][MarshalAs(UnmanagedType.BStr)] string minVersion = "", [In][MarshalAs(UnmanagedType.BStr)] string maxVersion = "*");

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(8)]
	void addFolderToSearchPath([In][MarshalAs(UnmanagedType.BStr)] string bstrFolder);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(9)]
	void require([In][MarshalAs(UnmanagedType.BStr)] string filename);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(10)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string findFile([In][MarshalAs(UnmanagedType.BStr)] string filename);
}
