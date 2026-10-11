using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104301C2-72AE-11D5-B316-0800309CC2CE")]
public class CaliberServerClass : ICaliberServer, CaliberServer
{
	[DispId(1610744838)]
	public virtual extern CaliberObjectCacheFactory CacheFactory
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744838)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744838)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744835)]
	public virtual extern int DaysUntilPasswordExpires
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744835)]
		get;
	}

	[DispId(1610744834)]
	public virtual extern string Host
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744834)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744840)]
	public virtual extern string Password
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744840)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744837)]
	public virtual extern bool PasswordWithinWarningPeriod
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744837)]
		get;
	}

	[DispId(1610744839)]
	public virtual extern int Port
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744839)]
		get;
	}

	[DispId(1610744831)]
	public virtual extern bool ServerCompatible
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744831)]
		get;
	}

	[DispId(1610744842)]
	public virtual extern string ServerFileVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744842)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744836)]
	public virtual extern string ServerIPAddress
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744836)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744841)]
	public virtual extern string ServerName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744841)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744832)]
	public virtual extern string ServerProductVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744832)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744833)]
	public virtual extern string UserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744833)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744843)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session login2([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744844)]
	public virtual extern void logout();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744845)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session login([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744846)]
	public virtual extern int setORBDiagnostics([In] int iLevel);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744847)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern PasswordSettings getPasswordSettings([In][MarshalAs(UnmanagedType.Interface)] Session s);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744848)]
	public virtual extern int setTransactionTimeout([In] int timeout);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744849)]
	public virtual extern void changePassword([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string currentPassword, [In][MarshalAs(UnmanagedType.BStr)] string newPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744850)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Session login3([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.Interface)] Collection prodCodeCipher, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);
}
