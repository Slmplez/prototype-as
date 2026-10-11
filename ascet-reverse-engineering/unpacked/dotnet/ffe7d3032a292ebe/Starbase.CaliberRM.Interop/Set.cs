using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(SetClass))]
[Guid("1043018F-72AE-11D5-B316-0800309CC2CE")]
public interface Set : ISet
{
}
