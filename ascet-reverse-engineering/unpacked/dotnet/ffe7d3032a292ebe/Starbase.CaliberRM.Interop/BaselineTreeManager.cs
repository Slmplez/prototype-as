using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(BaselineTreeManagerClass))]
[Guid("1043002F-72AE-11D5-B316-0800309CC2CE")]
public interface BaselineTreeManager : IBaselineTreeManager
{
}
