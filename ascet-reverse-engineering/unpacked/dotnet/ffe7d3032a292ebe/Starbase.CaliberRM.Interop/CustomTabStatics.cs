using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CustomTabStaticsClass))]
[Guid("10430047-72AE-11D5-B316-0800309CC2CE")]
public interface CustomTabStatics : ICustomTabStatics
{
}
