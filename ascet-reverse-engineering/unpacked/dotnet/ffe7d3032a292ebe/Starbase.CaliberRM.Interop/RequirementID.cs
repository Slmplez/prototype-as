using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300CF-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementIDClass))]
public interface RequirementID : IRequirementID
{
}
