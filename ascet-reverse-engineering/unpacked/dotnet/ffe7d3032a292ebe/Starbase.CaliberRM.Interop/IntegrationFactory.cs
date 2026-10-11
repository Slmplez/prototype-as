using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430171-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(IntegrationFactoryClass))]
public interface IntegrationFactory : IIntegrationFactory
{
}
