using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(HistoryClass))]
[Guid("10430097-72AE-11D5-B316-0800309CC2CE")]
public interface History : IHistory
{
}
