using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GroupStaticsClass))]
[Guid("1043008D-72AE-11D5-B316-0800309CC2CE")]
public interface GroupStatics : IGroupStatics
{
}
