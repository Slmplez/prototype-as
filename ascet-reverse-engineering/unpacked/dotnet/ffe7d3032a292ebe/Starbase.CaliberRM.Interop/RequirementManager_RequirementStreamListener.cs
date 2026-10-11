using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300D3-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementManager_RequirementStreamListenerClass))]
public interface RequirementManager_RequirementStreamListener : IRequirementManager_RequirementStreamListener
{
}
