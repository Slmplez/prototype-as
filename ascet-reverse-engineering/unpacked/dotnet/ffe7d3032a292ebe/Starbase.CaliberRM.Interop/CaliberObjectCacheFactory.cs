using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberObjectCacheFactoryClass))]
[Guid("1043014B-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberObjectCacheFactory : ICaliberObjectCacheFactory
{
}
