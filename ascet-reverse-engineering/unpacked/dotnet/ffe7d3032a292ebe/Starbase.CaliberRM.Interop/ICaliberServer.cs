using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301C1-72AE-11D5-B316-0800309CC2CE")]
public interface ICaliberServer
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744843)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session login2([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744844)]
	void logout();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744845)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session login([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744846)]
	int setORBDiagnostics([In] int iLevel);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744847)]
	[return: MarshalAs(UnmanagedType.Interface)]
	PasswordSettings getPasswordSettings([In][MarshalAs(UnmanagedType.Interface)] Session s);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744848)]
	int setTransactionTimeout([In] int timeout);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744849)]
	void changePassword([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string currentPassword, [In][MarshalAs(UnmanagedType.BStr)] string newPassword);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744850)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Session login3([In][MarshalAs(UnmanagedType.BStr)] string usrID, [In][MarshalAs(UnmanagedType.BStr)] string sPassword, [In][MarshalAs(UnmanagedType.Interface)] Collection prodCodeCipher, [In][MarshalAs(UnmanagedType.BStr)] string applicationName);

	[DispId(1610744838)]
	CaliberObjectCacheFactory CacheFactory
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
	int DaysUntilPasswordExpires
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744835)]
		get;
	}

	[DispId(1610744834)]
	string Host
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744834)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744840)]
	string Password
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744840)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744837)]
	bool PasswordWithinWarningPeriod
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744837)]
		get;
	}

	[DispId(1610744839)]
	int Port
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744839)]
		get;
	}

	[DispId(1610744831)]
	bool ServerCompatible
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744831)]
		get;
	}

	[DispId(1610744842)]
	string ServerFileVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744842)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744836)]
	string ServerIPAddress
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744836)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744841)]
	string ServerName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744841)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744832)]
	string ServerProductVersion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744832)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744833)]
	string UserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744833)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
