using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(EventManagerFactoryClass))]
[Guid("1043015D-72AE-11D5-B316-0800309CC2CE")]
public interface EventManagerFactory : IEventManagerFactory
{
}
