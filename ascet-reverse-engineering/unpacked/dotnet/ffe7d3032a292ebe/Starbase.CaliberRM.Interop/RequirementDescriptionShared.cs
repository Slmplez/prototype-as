using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(RequirementDescriptionSharedClass))]
[Guid("104300C9-72AE-11D5-B316-0800309CC2CE")]
public interface RequirementDescriptionShared : IRequirementDescriptionShared
{
}
