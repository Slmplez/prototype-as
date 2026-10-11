using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDADateValueClass))]
[Guid("10430125-72AE-11D5-B316-0800309CC2CE")]
public interface UDADateValue : IUDADateValue
{
}
