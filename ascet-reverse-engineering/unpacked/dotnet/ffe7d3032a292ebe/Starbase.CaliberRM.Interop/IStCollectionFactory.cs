using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("ED85610C-4F78-11D3-8055-00A0C9AC24E9")]
[TypeLibType(4160)]
public interface IStCollectionFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744070)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection Create();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744071)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection CreateByIStCollection([In][MarshalAs(UnmanagedType.Interface)] Collection src);
}
