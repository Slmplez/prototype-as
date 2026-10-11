using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043007F-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(GlossaryTermColorClass))]
public interface GlossaryTermColor : IGlossaryTermColor
{
}
