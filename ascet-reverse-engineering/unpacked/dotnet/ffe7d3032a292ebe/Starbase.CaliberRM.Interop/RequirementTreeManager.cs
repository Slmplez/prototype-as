using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300DD-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementTreeManagerClass))]
public interface RequirementTreeManager : IRequirementTreeManager
{
}
