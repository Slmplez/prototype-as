using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300E6-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class RequirementTypeStaticsClass : IRequirementTypeStatics, RequirementTypeStatics
{
	[DispId(1610744076)]
	public virtual extern int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744076)]
		get;
	}

	[DispId(1610744077)]
	public virtual extern string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744077)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744490)]
	public virtual extern int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744490)]
		get;
	}

	[DispId(1610744491)]
	public virtual extern int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744491)]
		get;
	}

	[DispId(1610744492)]
	public virtual extern int MAX_TAG_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744492)]
		get;
	}
}
