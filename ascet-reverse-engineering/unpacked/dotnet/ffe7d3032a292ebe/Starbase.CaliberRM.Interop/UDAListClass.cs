using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043013A-72AE-11D5-B316-0800309CC2CE")]
public class UDAListClass : IUDAList, UDAList
{
	[DispId(1610744064)]
	public virtual extern int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744064)]
		get;
	}

	[DispId(1610744065)]
	public virtual extern string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744065)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744067)]
	public virtual extern CaliberObjectID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744067)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744068)]
	public virtual extern CaliberObjectManager Manager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744068)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744066)]
	public virtual extern string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744066)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744066)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744069)]
	public virtual extern Session Session
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744069)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744069)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744587)]
	public virtual extern AttributeValue DefaultValueSuper
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744587)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744589)]
	public virtual extern string Description
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744589)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744568)]
	public virtual extern int INITIAL_VALUE_DEFAULT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744568)]
		get;
	}

	[DispId(1610744569)]
	public virtual extern int INITIAL_VALUE_FORCE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744569)]
		get;
	}

	[DispId(1610744570)]
	public virtual extern int INITIAL_VALUE_PARENT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744570)]
		get;
	}

	[DispId(1610744586)]
	public virtual extern int InitialValueType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744586)]
		get;
	}

	[DispId(1610744588)]
	public virtual extern bool TriggersMajorVersionChange
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744588)]
		get;
	}

	[DispId(1610744585)]
	public virtual extern bool TriggersSuspectTraceability
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744585)]
		get;
	}

	[DispId(1610744584)]
	public virtual extern string UITypeName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744584)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744571)]
	public virtual extern string UI_NAME_BOOLEAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744571)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744572)]
	public virtual extern string UI_NAME_DATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744572)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744573)]
	public virtual extern string UI_NAME_DURATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744573)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744574)]
	public virtual extern string UI_NAME_FLOAT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744574)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744575)]
	public virtual extern string UI_NAME_LONG_INTEGER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744575)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744576)]
	public virtual extern string UI_NAME_MLTF
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744576)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744577)]
	public virtual extern string UI_NAME_MSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744577)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744578)]
	public virtual extern string UI_NAME_MSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744578)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744579)]
	public virtual extern string UI_NAME_MSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744579)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744580)]
	public virtual extern string UI_NAME_SSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744580)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744581)]
	public virtual extern string UI_NAME_SSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744581)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744582)]
	public virtual extern string UI_NAME_SSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744582)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744583)]
	public virtual extern string UI_NAME_STL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744583)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744659)]
	public virtual extern UDAListValue DefaultValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744659)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744660)]
	public virtual extern Collection ListEntries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744660)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744661)]
	public virtual extern int MaximumSelections
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744661)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744070)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object getFieldValue([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744071)]
	public virtual extern int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744072)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744073)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744074)]
	public virtual extern bool isField([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744075)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();
}
