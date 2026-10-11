using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TraceManagerClass))]
[Guid("10430101-72AE-11D5-B316-0800309CC2CE")]
public interface TraceManager : ITraceManager
{
}
