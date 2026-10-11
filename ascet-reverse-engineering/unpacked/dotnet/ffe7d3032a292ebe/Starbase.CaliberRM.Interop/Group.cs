using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GroupClass))]
[Guid("10430089-72AE-11D5-B316-0800309CC2CE")]
public interface Group : IGroup
{
}
