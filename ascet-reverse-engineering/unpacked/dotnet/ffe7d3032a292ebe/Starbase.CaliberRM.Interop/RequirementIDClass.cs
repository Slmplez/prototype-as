using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300D0-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementIDClass : IRequirementID, RequirementID
{
	[DispId(1610744121)]
	public virtual extern int IDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744121)]
		get;
	}

	[DispId(1610744468)]
	public virtual extern int BaselineIDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744468)]
		get;
	}

	[DispId(1610744467)]
	public virtual extern int MajorVersionNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744467)]
		get;
	}

	[DispId(1610744469)]
	public virtual extern int MinorVersionNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744469)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744122)]
	public virtual extern int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744123)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744124)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
