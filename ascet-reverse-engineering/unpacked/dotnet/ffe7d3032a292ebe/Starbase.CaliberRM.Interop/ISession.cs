using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300EB-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ISession
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744519)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getTraces([In][MarshalAs(UnmanagedType.Interface)] Collection projectIDs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744520)]
	void logout();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744521)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744522)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberObjectManager getManager([In][MarshalAs(UnmanagedType.BStr)] string calObjClass);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744523)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Requirement getRequirement([In] int requirementIDNumber);

	[DispId(1610744513)]
	Collection Attributes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744513)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744507)]
	CaliberServer CaliberServer
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744507)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744497)]
	CurrentUser CurrentUser
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744497)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744508)]
	Collection Departments
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744508)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744517)]
	EventManager EventManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744517)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744506)]
	Collection Glossaries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744506)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744503)]
	Collection Groups
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744503)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744518)]
	ImageManager ImageManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744518)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744501)]
	IntegrationManager IntegrationManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744501)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744504)]
	Collection Integrations
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744504)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744514)]
	string LicenseKey
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744514)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744496)]
	string Password
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744496)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744505)]
	Collection Projects
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744505)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744510)]
	string RemoteSessionToken
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744510)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744516)]
	Collection RequirementTypes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744516)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744512)]
	Collection Requirements
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744512)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744502)]
	CaliberSecurityManager SecurityManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744502)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744500)]
	TraceManager TraceManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744500)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744509)]
	Collection Traces
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744509)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744499)]
	User User
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744499)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744511)]
	string UserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744511)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744515)]
	Collection Users
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744515)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744498)]
	XGenericObjectManager XGenericObjectManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744498)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
