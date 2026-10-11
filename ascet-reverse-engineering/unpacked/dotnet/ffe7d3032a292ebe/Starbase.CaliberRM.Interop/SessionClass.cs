using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300EC-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class SessionClass : ISession, Session
{
	[DispId(1610744513)]
	public virtual extern Collection Attributes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744513)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744507)]
	public virtual extern CaliberServer CaliberServer
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744507)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744497)]
	public virtual extern CurrentUser CurrentUser
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744497)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744508)]
	public virtual extern Collection Departments
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744508)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744517)]
	public virtual extern EventManager EventManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744517)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744506)]
	public virtual extern Collection Glossaries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744506)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744503)]
	public virtual extern Collection Groups
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744503)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744518)]
	public virtual extern ImageManager ImageManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744518)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744501)]
	public virtual extern IntegrationManager IntegrationManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744501)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744504)]
	public virtual extern Collection Integrations
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744504)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744514)]
	public virtual extern string LicenseKey
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744514)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744496)]
	public virtual extern string Password
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744496)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744505)]
	public virtual extern Collection Projects
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744505)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744510)]
	public virtual extern string RemoteSessionToken
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744510)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744516)]
	public virtual extern Collection RequirementTypes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744516)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744512)]
	public virtual extern Collection Requirements
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744512)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744502)]
	public virtual extern CaliberSecurityManager SecurityManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744502)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744500)]
	public virtual extern TraceManager TraceManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744500)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744509)]
	public virtual extern Collection Traces
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744509)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744499)]
	public virtual extern User User
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744499)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744511)]
	public virtual extern string UserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744511)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744515)]
	public virtual extern Collection Users
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744515)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744498)]
	public virtual extern XGenericObjectManager XGenericObjectManager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744498)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744519)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getTraces([In][MarshalAs(UnmanagedType.Interface)] Collection projectIDs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744520)]
	public virtual extern void logout();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744521)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID calObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744522)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObjectManager getManager([In][MarshalAs(UnmanagedType.BStr)] string calObjClass);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744523)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Requirement getRequirement([In] int requirementIDNumber);
}
