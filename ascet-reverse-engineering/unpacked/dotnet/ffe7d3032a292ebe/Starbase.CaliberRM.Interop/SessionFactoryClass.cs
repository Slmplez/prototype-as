using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300EE-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class SessionFactoryClass : ISessionFactory, SessionFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744524)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session Create([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744525)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session Create2([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744526)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session Create1([In][MarshalAs(UnmanagedType.Interface)] CaliberServer server, [In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.Interface)] Collection prodCodeCipher, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);
}
