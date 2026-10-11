using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(ProjectGroupMemberAssignmentClass))]
[Guid("104300B3-72AE-11D5-B316-0800309CC2CE")]
public interface ProjectGroupMemberAssignment : IProjectGroupMemberAssignment
{
}
