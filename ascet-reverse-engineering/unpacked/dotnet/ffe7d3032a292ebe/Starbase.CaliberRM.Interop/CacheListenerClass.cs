using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430148-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class CacheListenerClass : ICacheListener, CacheListener
{
}
