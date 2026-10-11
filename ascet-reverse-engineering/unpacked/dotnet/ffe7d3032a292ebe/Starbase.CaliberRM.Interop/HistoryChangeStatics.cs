using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(HistoryChangeStaticsClass))]
[Guid("1043009B-72AE-11D5-B316-0800309CC2CE")]
public interface HistoryChangeStatics : IHistoryChangeStatics
{
}
