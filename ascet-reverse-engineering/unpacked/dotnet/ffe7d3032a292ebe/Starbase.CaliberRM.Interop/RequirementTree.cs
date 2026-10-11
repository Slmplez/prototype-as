using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300D5-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementTreeClass))]
public interface RequirementTree : IRequirementTree
{
}
