using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430139-72AE-11D5-B316-0800309CC2CE")]
public interface IUDAList : IAttribute
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744070)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object getFieldValue([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744071)]
	new int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744072)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744073)]
	[return: MarshalAs(UnmanagedType.BStr)]
	new string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744074)]
	new bool isField([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744075)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object Clone();

	[DispId(1610744064)]
	new int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744064)]
		get;
	}

	[DispId(1610744065)]
	new string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744065)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744067)]
	new CaliberObjectID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744067)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744068)]
	new CaliberObjectManager Manager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744068)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744066)]
	new string Name
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
	new Session Session
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
	new AttributeValue DefaultValueSuper
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744587)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744589)]
	new string Description
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744589)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744568)]
	new int INITIAL_VALUE_DEFAULT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744568)]
		get;
	}

	[DispId(1610744569)]
	new int INITIAL_VALUE_FORCE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744569)]
		get;
	}

	[DispId(1610744570)]
	new int INITIAL_VALUE_PARENT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744570)]
		get;
	}

	[DispId(1610744586)]
	new int InitialValueType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744586)]
		get;
	}

	[DispId(1610744588)]
	new bool TriggersMajorVersionChange
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744588)]
		get;
	}

	[DispId(1610744585)]
	new bool TriggersSuspectTraceability
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744585)]
		get;
	}

	[DispId(1610744584)]
	new string UITypeName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744584)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744571)]
	new string UI_NAME_BOOLEAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744571)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744572)]
	new string UI_NAME_DATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744572)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744573)]
	new string UI_NAME_DURATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744573)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744574)]
	new string UI_NAME_FLOAT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744574)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744575)]
	new string UI_NAME_LONG_INTEGER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744575)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744576)]
	new string UI_NAME_MLTF
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744576)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744577)]
	new string UI_NAME_MSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744577)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744578)]
	new string UI_NAME_MSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744578)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744579)]
	new string UI_NAME_MSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744579)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744580)]
	new string UI_NAME_SSGL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744580)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744581)]
	new string UI_NAME_SSL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744581)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744582)]
	new string UI_NAME_SSUL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744582)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744583)]
	new string UI_NAME_STL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744583)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744659)]
	UDAListValue DefaultValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744659)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744660)]
	Collection ListEntries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744660)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744661)]
	int MaximumSelections
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744661)]
		get;
	}
}
