using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043000D-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(BaselineClass))]
public interface Baseline : IBaseline
{
}
