using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300CB-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementEvent_TypeClass))]
public interface RequirementEvent_Type : IRequirementEvent_Type
{
}
