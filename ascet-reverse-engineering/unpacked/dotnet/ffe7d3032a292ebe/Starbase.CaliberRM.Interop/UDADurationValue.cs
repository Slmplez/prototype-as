using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDADurationValueClass))]
[Guid("10430131-72AE-11D5-B316-0800309CC2CE")]
public interface UDADurationValue : IUDADurationValue
{
}
