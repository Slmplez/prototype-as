using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDADateClass))]
[Guid("10430121-72AE-11D5-B316-0800309CC2CE")]
public interface UDADate : IUDADate
{
}
