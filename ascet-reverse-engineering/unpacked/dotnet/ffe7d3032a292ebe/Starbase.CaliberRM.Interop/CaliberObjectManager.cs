using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberObjectManagerClass))]
[Guid("1043002B-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberObjectManager : ICaliberObjectManager
{
}
