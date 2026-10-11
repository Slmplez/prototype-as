using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(MutableCaliberObjectClass))]
[Guid("10430005-72AE-11D5-B316-0800309CC2CE")]
public interface MutableCaliberObject : IMutableCaliberObject
{
}
