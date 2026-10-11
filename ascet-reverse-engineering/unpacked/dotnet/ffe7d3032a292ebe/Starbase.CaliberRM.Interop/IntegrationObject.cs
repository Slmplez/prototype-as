using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(IntegrationObjectClass))]
[Guid("1043017D-72AE-11D5-B316-0800309CC2CE")]
public interface IntegrationObject : IIntegrationObject
{
}
