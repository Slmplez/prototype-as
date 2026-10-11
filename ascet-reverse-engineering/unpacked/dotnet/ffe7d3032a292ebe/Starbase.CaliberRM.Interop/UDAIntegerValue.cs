using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043012F-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(UDAIntegerValueClass))]
public interface UDAIntegerValue : IUDAIntegerValue
{
}
