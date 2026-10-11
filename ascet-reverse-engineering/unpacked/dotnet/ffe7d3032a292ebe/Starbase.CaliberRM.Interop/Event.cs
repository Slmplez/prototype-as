using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(EventClass))]
[Guid("10430151-72AE-11D5-B316-0800309CC2CE")]
public interface Event : IEvent
{
}
