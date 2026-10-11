using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301AD-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(PropertyFactoryClass))]
public interface PropertyFactory : IPropertyFactory
{
}
