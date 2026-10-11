using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UDAListEntryClass))]
[Guid("1043013D-72AE-11D5-B316-0800309CC2CE")]
public interface UDAListEntry : IUDAListEntry
{
}
