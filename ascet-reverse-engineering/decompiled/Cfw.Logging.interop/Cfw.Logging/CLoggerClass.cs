using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Cfw.Logging;

[ComImport]
[ClassInterface(ClassInterfaceType.None)]
[TypeLibType(TypeLibTypeFlags.FCanCreate)]
[Guid("64A31773-248F-433E-9661-0E42B65C0376")]
public class CLoggerClass : ILogger, CLogger, ILoggerDispatch
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void WriteEntry([In][MarshalAs(UnmanagedType.LPWStr)] string szModName, [In] uint iThread, [In][MarshalAs(UnmanagedType.LPWStr)] string szLocation, [In] uint iLocation, [In] byte iCategory, [In][MarshalAs(UnmanagedType.LPWStr)] string szMsg);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void Initialize();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void Uninitialize();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void SaveBuffer([In] int bKernelApiOnly);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern int CheckFilters([In] byte iCategory, [In][MarshalAs(UnmanagedType.LPWStr)] string szModule);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void WriteEntryDisp([In][MarshalAs(UnmanagedType.BStr)] string szModName, [In] uint iThread, [In][MarshalAs(UnmanagedType.BStr)] string szLocation, [In] uint iLocation, [In] byte iCategory, [In][MarshalAs(UnmanagedType.BStr)] string szMsg);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void InitializeDisp();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	public virtual extern void UninitializeDisp();
}
