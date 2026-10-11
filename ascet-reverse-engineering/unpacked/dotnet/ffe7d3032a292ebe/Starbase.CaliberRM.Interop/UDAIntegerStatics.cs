using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDAIntegerStaticsClass))]
[Guid("10430129-72AE-11D5-B316-0800309CC2CE")]
public interface UDAIntegerStatics : IUDAIntegerStatics
{
}
