using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberObjectEvent_TypeClass))]
[Guid("10430035-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberObjectEvent_Type : ICaliberObjectEvent_Type
{
}
