using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(BaselineIDClass))]
[Guid("10430017-72AE-11D5-B316-0800309CC2CE")]
public interface BaselineID : IBaselineID
{
}
