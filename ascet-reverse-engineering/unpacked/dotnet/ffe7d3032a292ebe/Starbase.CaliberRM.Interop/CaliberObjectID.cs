using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberObjectIDClass))]
[Guid("10430013-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberObjectID : ICaliberObjectID
{
}
