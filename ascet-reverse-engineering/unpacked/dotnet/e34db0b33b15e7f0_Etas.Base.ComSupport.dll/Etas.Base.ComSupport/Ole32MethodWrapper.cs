using System;
using System.Runtime.InteropServices;

namespace Etas.Base.ComSupport;

public static class Ole32MethodWrapper
{
	public const uint CLSCTX_INPROC_SERVER = 1u;

	public const uint CLSCTX_LOCAL_SERVER = 4u;

	public const uint CLSCTX_REMOTE_SERVER = 16u;

	public const uint REGCLS_MULTIPLEUSE = 1u;

	public const uint REGCLS_MULTI_SEPARATE = 2u;

	public static Guid GUID_IClassFactory = new Guid("00000001-0000-0000-C000-000000000046");

	public static Guid IID_IUnknown = new Guid("00000000-0000-0000-C000-000000000046");

	[DllImport("ole32.Dll")]
	public static extern uint CoCreateInstance(ref Guid clsid, [MarshalAs(UnmanagedType.IUnknown)] object inner, uint context, ref Guid uuid, [MarshalAs(UnmanagedType.IUnknown)] out object rReturnedComObject);

	[DllImport("ole32.Dll")]
	public static extern uint CoGetClassObject(ref Guid clsid, uint context, ref object serverinfo, ref Guid uuid, [MarshalAs(UnmanagedType.IUnknown)] out object returnedComObject);

	[DllImport("ole32.Dll")]
	public static extern uint CoRegisterClassObject(ref Guid clsid, [MarshalAs(UnmanagedType.IUnknown)] object comObjectToBePublished, uint context, uint flags, out uint register);

	[DllImport("ole32.Dll")]
	public static extern uint CoRevokeClassObject(uint register);
}
