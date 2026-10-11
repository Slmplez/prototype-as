using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(HistoryRevisionClass))]
[Guid("1043009D-72AE-11D5-B316-0800309CC2CE")]
public interface HistoryRevision : IHistoryRevision
{
}
