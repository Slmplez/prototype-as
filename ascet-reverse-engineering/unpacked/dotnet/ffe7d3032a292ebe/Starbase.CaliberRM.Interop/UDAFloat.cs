using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDAFloatClass))]
[Guid("10430133-72AE-11D5-B316-0800309CC2CE")]
public interface UDAFloat : IUDAFloat
{
}
