using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberObjectIDFactoryClass))]
[Guid("10430015-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberObjectIDFactory : ICaliberObjectIDFactory
{
}
