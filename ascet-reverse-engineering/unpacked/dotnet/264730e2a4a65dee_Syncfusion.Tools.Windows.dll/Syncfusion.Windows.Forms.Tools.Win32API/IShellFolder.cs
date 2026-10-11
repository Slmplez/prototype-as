using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[ComImport]
[Guid("000214E6-0000-0000-C000-000000000046")]
[CLSCompliant(false)]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IShellFolder
{
	[PreserveSig]
	int ParseDisplayName(IntPtr hwnd, IntPtr pbc, [MarshalAs(UnmanagedType.LPWStr)] string pszDisplayName, ref uint pchEaten, out IntPtr ppidl, ref uint pdwAttributes);

	[PreserveSig]
	int EnumObjects(IntPtr hwnd, int grfFlags, out IntPtr ppenumIDList);

	[PreserveSig]
	int BindToObject(IntPtr pidl, IntPtr pbc, Guid riid, out IntPtr ppv);

	[PreserveSig]
	int BindToStorage(IntPtr pidl, IntPtr pbc, Guid riid, out IntPtr ppv);

	[PreserveSig]
	int CompareIDs(int lParam, IntPtr pidl1, IntPtr pidl2);

	[PreserveSig]
	int CreateViewObject(IntPtr hwndOwner, Guid riid, out IntPtr ppv);

	[PreserveSig]
	int GetAttributesOf(uint cidl, [MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 0)] IntPtr[] apidl, ref uint rgfInOut);

	[PreserveSig]
	int GetUIObjectOf(IntPtr hwndOwner, uint cidl, IntPtr[] apidl, Guid riid, ref uint rgfReserved, out IntPtr ppv);

	[PreserveSig]
	int GetDisplayNameOf(IntPtr pidl, uint uFlags, out STRRET pName);

	[PreserveSig]
	int SetNameOf(IntPtr hwnd, IntPtr pidl, [MarshalAs(UnmanagedType.LPWStr)] string pszName, uint uFlags, out IntPtr ppidlOut);
}
