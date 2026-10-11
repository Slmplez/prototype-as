using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043016F-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(IntegrationClass))]
public interface Integration : IIntegration
{
}
