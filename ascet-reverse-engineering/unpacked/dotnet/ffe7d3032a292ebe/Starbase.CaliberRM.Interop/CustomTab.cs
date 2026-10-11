using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430043-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(CustomTabClass))]
public interface CustomTab : ICustomTab
{
}
