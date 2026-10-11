using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CustomTabFactoryClass))]
[Guid("10430045-72AE-11D5-B316-0800309CC2CE")]
public interface CustomTabFactory : ICustomTabFactory
{
}
