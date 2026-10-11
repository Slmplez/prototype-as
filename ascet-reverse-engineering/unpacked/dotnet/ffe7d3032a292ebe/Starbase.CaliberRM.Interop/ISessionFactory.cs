using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300ED-72AE-11D5-B316-0800309CC2CE")]
public interface ISessionFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744524)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session Create([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744525)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session Create2([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744526)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session Create1([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.Interface)] Collection prodCodeCipher, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);
}
