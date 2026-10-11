using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(ProjectStaticsClass))]
[Guid("104300B1-72AE-11D5-B316-0800309CC2CE")]
public interface ProjectStatics : IProjectStatics
{
}
