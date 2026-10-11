using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(traceIDClass))]
[Guid("104300FD-72AE-11D5-B316-0800309CC2CE")]
public interface traceID : ITraceID
{
}
