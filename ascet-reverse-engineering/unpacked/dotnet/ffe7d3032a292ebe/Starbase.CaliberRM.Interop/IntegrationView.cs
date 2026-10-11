using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430185-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(IntegrationViewClass))]
public interface IntegrationView : IIntegrationView
{
}
