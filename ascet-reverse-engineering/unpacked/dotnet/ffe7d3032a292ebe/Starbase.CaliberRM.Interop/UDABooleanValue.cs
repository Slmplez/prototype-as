using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDABooleanValueClass))]
[Guid("1043011F-72AE-11D5-B316-0800309CC2CE")]
public interface UDABooleanValue : IUDABooleanValue
{
}
