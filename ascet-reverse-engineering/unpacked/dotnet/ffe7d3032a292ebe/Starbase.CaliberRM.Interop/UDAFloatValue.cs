using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDAFloatValueClass))]
[Guid("10430137-72AE-11D5-B316-0800309CC2CE")]
public interface UDAFloatValue : IUDAFloatValue
{
}
