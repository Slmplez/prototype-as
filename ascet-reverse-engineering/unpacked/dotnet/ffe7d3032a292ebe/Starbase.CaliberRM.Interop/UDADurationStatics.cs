using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043012D-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(UDADurationStaticsClass))]
public interface UDADurationStatics : IUDADurationStatics
{
}
