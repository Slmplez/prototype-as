using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430149-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(CaliberObjectCacheClass))]
public interface CaliberObjectCache : ICaliberObjectCache
{
}
